; ModuleID = '/llk/IR_all_yes/sound/usb/helper.c_pt.bc'
source_filename = "../sound/usb/helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_usb_combine_bytes(ptr nocapture noundef readonly %bytes, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb4
    i32 4, label %sw.bb14
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %bytes to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bytes, align 1
  %conv = zext i8 %2 to i32
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %bytes to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bytes, align 1
  %conv2 = zext i8 %4 to i32
  %arrayidx = getelementptr i8, ptr %bytes, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv3, 8
  %or = or i32 %shl, %conv2
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %bytes to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bytes, align 1
  %conv5 = zext i8 %8 to i32
  %arrayidx6 = getelementptr i8, ptr %bytes, i32 1
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %10 to i32
  %shl8 = shl nuw nsw i32 %conv7, 8
  %or9 = or i32 %shl8, %conv5
  %arrayidx10 = getelementptr i8, ptr %bytes, i32 2
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %12 to i32
  %shl12 = shl nuw nsw i32 %conv11, 16
  %or13 = or i32 %or9, %shl12
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %bytes to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bytes, align 1
  %conv15 = zext i8 %14 to i32
  %arrayidx16 = getelementptr i8, ptr %bytes, i32 1
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %16 to i32
  %shl18 = shl nuw nsw i32 %conv17, 8
  %or19 = or i32 %shl18, %conv15
  %arrayidx20 = getelementptr i8, ptr %bytes, i32 2
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %18 to i32
  %shl22 = shl nuw nsw i32 %conv21, 16
  %or23 = or i32 %or19, %shl22
  %arrayidx24 = getelementptr i8, ptr %bytes, i32 3
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %20 to i32
  %shl26 = shl nuw i32 %conv25, 24
  %or27 = or i32 %or23, %shl26
  br label %return

return:                                           ; preds = %sw.bb14, %sw.bb4, %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %or27, %sw.bb14 ], [ %or13, %sw.bb4 ], [ %or, %sw.bb1 ], [ %conv, %sw.bb ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_usb_find_desc(ptr noundef readonly %descstart, i32 noundef %desclen, ptr noundef readnone %after, i8 noundef zeroext %dtype) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %descstart, i32 %desclen
  %cmp31 = icmp ugt ptr %add.ptr, %descstart
  br i1 %cmp31, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %after, null
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.body.lr.ph
  %p.032 = phi ptr [ %descstart, %for.body.lr.ph ], [ %add.ptr5, %if.end18.for.body_crit_edge ]
  %0 = ptrtoint ptr %p.032 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p.032, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp1 = icmp ult i8 %1, 2
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  %conv = zext i8 %1 to i32
  %add.ptr5 = getelementptr i8, ptr %p.032, i32 %conv
  %cmp6 = icmp ugt ptr %add.ptr5, %add.ptr
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %arrayidx10 = getelementptr i8, ptr %p.032, i32 1
  %2 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %dtype)
  %cmp13 = icmp eq i8 %3, %dtype
  %cmp15 = icmp ugt ptr %p.032, %after
  %or.cond = or i1 %tobool.not, %cmp15
  %or.cond36 = and i1 %cmp13, %or.cond
  br i1 %or.cond36, label %if.end9.cleanup_crit_edge, label %if.end18

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %cmp = icmp ult ptr %add.ptr5, %add.ptr
  br i1 %cmp, label %if.end18.for.body_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %if.end18.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end18.cleanup_crit_edge ], [ %p.032, %if.end9.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_usb_find_csint_desc(ptr noundef readonly %buffer, i32 noundef %buflen, ptr noundef readnone %after, i8 noundef zeroext %dsubtype) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %buffer, i32 %buflen
  %cmp31.i = icmp ugt ptr %add.ptr.i, %buffer
  br i1 %cmp31.i, label %entry.for.body.lr.ph.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.for.body.lr.ph.i_crit_edge:                 ; preds = %entry
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %for.body.lr.ph.i.backedge, %entry.for.body.lr.ph.i_crit_edge
  %p.017 = phi ptr [ %p.032.i, %for.body.lr.ph.i.backedge ], [ %after, %entry.for.body.lr.ph.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %p.017, null
  br label %for.body.i

for.body.i:                                       ; preds = %if.end18.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %p.032.i = phi ptr [ %buffer, %for.body.lr.ph.i ], [ %add.ptr5.i, %if.end18.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %p.032.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p.032.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp1.i = icmp ult i8 %1, 2
  br i1 %cmp1.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %conv.i = zext i8 %1 to i32
  %add.ptr5.i = getelementptr i8, ptr %p.032.i, i32 %conv.i
  %cmp6.i = icmp ugt ptr %add.ptr5.i, %add.ptr.i
  br i1 %cmp6.i, label %if.end.i.cleanup_crit_edge, label %if.end9.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %arrayidx10.i = getelementptr i8, ptr %p.032.i, i32 1
  %2 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %3)
  %cmp13.i = icmp eq i8 %3, 36
  %cmp15.i = icmp ugt ptr %p.032.i, %p.017
  %or.cond.i = or i1 %tobool.not.i, %cmp15.i
  %or.cond36.i = and i1 %or.cond.i, %cmp13.i
  br i1 %or.cond36.i, label %snd_usb_find_desc.exit, label %if.end18.i

if.end18.i:                                       ; preds = %if.end9.i
  %cmp.i = icmp ult ptr %add.ptr5.i, %add.ptr.i
  br i1 %cmp.i, label %if.end18.i.for.body.i_crit_edge, label %if.end18.i.cleanup_crit_edge

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18.i.for.body.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

snd_usb_find_desc.exit:                           ; preds = %if.end9.i
  %cmp.not = icmp eq ptr %p.032.i, null
  br i1 %cmp.not, label %snd_usb_find_desc.exit.cleanup_crit_edge, label %while.body

snd_usb_find_desc.exit.cleanup_crit_edge:         ; preds = %snd_usb_find_desc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %snd_usb_find_desc.exit
  %4 = ptrtoint ptr %p.032.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p.032.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp1 = icmp ugt i8 %5, 2
  br i1 %cmp1, label %land.lhs.true, label %while.body.for.body.lr.ph.i.backedge_crit_edge

while.body.for.body.lr.ph.i.backedge_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph.i.backedge

for.body.lr.ph.i.backedge:                        ; preds = %land.lhs.true.for.body.lr.ph.i.backedge_crit_edge, %while.body.for.body.lr.ph.i.backedge_crit_edge
  br label %for.body.lr.ph.i

land.lhs.true:                                    ; preds = %while.body
  %arrayidx3 = getelementptr i8, ptr %p.032.i, i32 2
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %dsubtype)
  %cmp6 = icmp eq i8 %7, %dsubtype
  br i1 %cmp6, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.body.lr.ph.i.backedge_crit_edge

land.lhs.true.for.body.lr.ph.i.backedge_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph.i.backedge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %snd_usb_find_desc.exit.cleanup_crit_edge, %if.end18.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end18.i.cleanup_crit_edge ], [ null, %if.end.i.cleanup_crit_edge ], [ null, %for.body.i.cleanup_crit_edge ], [ null, %snd_usb_find_desc.exit.cleanup_crit_edge ], [ %p.032.i, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_ctl_msg(ptr noundef %dev, i32 noundef %pipe, i8 noundef zeroext %request, i8 noundef zeroext %requesttype, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %data, i16 noundef zeroext %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_pipe_type_check(ptr noundef %dev, i32 noundef %pipe) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %size to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size)
  %cmp.not = icmp eq i16 %size, 0
  br i1 %cmp.not, label %if.end8.thread, label %if.then2

if.end8.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call1342 = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %pipe, i8 noundef zeroext %request, i8 noundef zeroext %requesttype, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #5
  br label %if.end19

if.then2:                                         ; preds = %if.end
  %call4 = tail call ptr @kmemdup(ptr noundef %data, i32 noundef %conv, i32 noundef 3264) #5
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then2.cleanup_crit_edge, label %if.then17

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then17:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %pipe, i8 noundef zeroext %request, i8 noundef zeroext %requesttype, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef nonnull %call4, i16 noundef zeroext %size, i32 noundef 5000) #5
  %0 = call ptr @memcpy(ptr %data, ptr %call4, i32 %conv)
  tail call void @kfree(ptr noundef nonnull %call4) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end8.thread
  %call1343 = phi i32 [ %call1342, %if.end8.thread ], [ %call13, %if.then17 ]
  tail call void @snd_usb_ctl_msg_quirk(ptr noundef %dev, i32 noundef %pipe, i8 noundef zeroext %request, i8 noundef zeroext %requesttype, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %data, i16 noundef zeroext %size) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1343, %if.end19 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_pipe_type_check(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_ctl_msg_quirk(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @snd_usb_parse_datainterval(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %alts) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 4
  %.off = add i32 %3, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %alts, i32 0, i32 3
  %4 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %endpoint, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bInterval, align 2
  %8 = add i8 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %9 = icmp ult i8 %8, 4
  %spec.select = select i1 %9, i8 %8, i8 0
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i8 [ 0, %entry.return_crit_edge ], [ %spec.select, %sw.bb ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_usb_get_host_interface(ptr nocapture noundef readonly %chip, i32 noundef %ifnum, i32 noundef %altsetting) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %1, i32 noundef %ifnum) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call ptr @usb_altnum_to_altsetting(ptr noundef nonnull %call, i32 noundef %altsetting) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_altnum_to_altsetting(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
