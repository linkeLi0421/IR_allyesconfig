; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pwc/pwc-misc.c_pt.bc'
source_filename = "../drivers/media/usb/pwc/pwc-misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pwc_device = type { %struct.video_device, %struct.v4l2_device, %struct.vb2_queue, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [13 x i8], ptr, [3 x ptr], ptr, i32, i32, i32, i32, i32, %union.anon.114, i32, i32, i32, ptr, [64 x i8], %struct.v4l2_ctrl_handler, i16, ptr, ptr, ptr, ptr, %struct.anon.116, %struct.anon.117, %struct.anon.118, ptr, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.120, [3 x ptr] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.114 = type { %struct.pwc_dec23_private }
%struct.pwc_dec23_private = type { %struct.mutex, i8, i8, i32, i32, i32, i32, i32, ptr, [16 x i32], [16 x [1024 x i8]], [16 x [1024 x i8]], [16 x [256 x i8]], [16 x [256 x i8]], [256 x [12 x i32]], [8 x [256 x i8]], [256 x i32], [256 x i32] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.116 = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.anon.117 = type { ptr, ptr, i32, i32, i32 }
%struct.anon.118 = type { ptr, ptr, i32, i32, i32 }
%struct.anon.119 = type { ptr, ptr }
%struct.anon.120 = type { ptr, ptr, ptr, ptr }

@pwc_image_sizes = dso_local constant { [6 x [2 x i32]], [48 x i8] } { [6 x [2 x i32]] [[2 x i32] [i32 128, i32 96], [2 x i32] [i32 160, i32 120], [2 x i32] [i32 176, i32 144], [2 x i32] [i32 320, i32 240], [2 x i32] [i32 352, i32 288], [2 x i32] [i32 640, i32 480]], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"pwc_image_sizes\00", align 1
@___asan_gen_.2 = private constant [36 x i8] c"../drivers/media/usb/pwc/pwc-misc.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 18, i32 11 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @pwc_image_sizes], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_image_sizes to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwc_get_size(ptr nocapture noundef readonly %pdev, i32 noundef %width, i32 noundef %height) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %image_mask = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 34
  %0 = ptrtoint ptr %image_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %image_mask, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %width)
  %cmp2.not = icmp slt i32 %width, 640
  %or.cond = or i1 %tobool.not, %cmp2.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %height)
  %cmp5.not = icmp slt i32 %height, 480
  %or.cond36 = or i1 %or.cond, %cmp5.not
  br i1 %or.cond36, label %for.inc, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc:                                          ; preds = %entry
  %and.1 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 352, i32 %width)
  %cmp2.not.1 = icmp slt i32 %width, 352
  %or.cond37 = or i1 %tobool.not.1, %cmp2.not.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %height)
  %cmp5.not.1 = icmp slt i32 %height, 288
  %or.cond38 = or i1 %or.cond37, %cmp5.not.1
  br i1 %or.cond38, label %for.inc.1, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %and.2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %width)
  %cmp2.not.2 = icmp slt i32 %width, 320
  %or.cond39 = or i1 %tobool.not.2, %cmp2.not.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %height)
  %cmp5.not.2 = icmp slt i32 %height, 240
  %or.cond40 = or i1 %or.cond39, %cmp5.not.2
  br i1 %or.cond40, label %for.inc.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %and.3 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %width)
  %cmp2.not.3 = icmp slt i32 %width, 176
  %or.cond41 = or i1 %tobool.not.3, %cmp2.not.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %height)
  %cmp5.not.3 = icmp slt i32 %height, 144
  %or.cond42 = or i1 %or.cond41, %cmp5.not.3
  br i1 %or.cond42, label %for.inc.3, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  %and.4 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %width)
  %cmp2.not.4 = icmp slt i32 %width, 160
  %or.cond43 = or i1 %tobool.not.4, %cmp2.not.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %height)
  %cmp5.not.4 = icmp slt i32 %height, 120
  %or.cond44 = or i1 %or.cond43, %cmp5.not.4
  br i1 %or.cond44, label %for.inc.4, label %for.inc.3.cleanup_crit_edge

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc.4:                                        ; preds = %for.inc.3
  %and.5 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %width)
  %cmp2.not.5 = icmp slt i32 %width, 128
  %or.cond45 = or i1 %tobool.not.5, %cmp2.not.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %height)
  %cmp5.not.5 = icmp slt i32 %height, 96
  %or.cond46 = or i1 %or.cond45, %cmp5.not.5
  br i1 %or.cond46, label %for.inc.5, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc.5:                                        ; preds = %for.inc.4
  %2 = ptrtoint ptr %image_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %image_mask, align 4
  %and13 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %for.inc17, label %for.inc.5.cleanup_crit_edge

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc17:                                        ; preds = %for.inc.5
  %and13.1 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.1)
  %tobool14.not.1 = icmp eq i32 %and13.1, 0
  br i1 %tobool14.not.1, label %for.inc17.1, label %for.inc17.cleanup_crit_edge

for.inc17.cleanup_crit_edge:                      ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc17.1:                                      ; preds = %for.inc17
  %and13.2 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.2)
  %tobool14.not.2 = icmp eq i32 %and13.2, 0
  br i1 %tobool14.not.2, label %for.inc17.2, label %for.inc17.1.cleanup_crit_edge

for.inc17.1.cleanup_crit_edge:                    ; preds = %for.inc17.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc17.2:                                      ; preds = %for.inc17.1
  %and13.3 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.3)
  %tobool14.not.3 = icmp eq i32 %and13.3, 0
  br i1 %tobool14.not.3, label %for.inc17.3, label %for.inc17.2.cleanup_crit_edge

for.inc17.2.cleanup_crit_edge:                    ; preds = %for.inc17.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc17.3:                                      ; preds = %for.inc17.2
  %and13.4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.4)
  %tobool14.not.4 = icmp eq i32 %and13.4, 0
  br i1 %tobool14.not.4, label %for.inc17.4, label %for.inc17.3.cleanup_crit_edge

for.inc17.3.cleanup_crit_edge:                    ; preds = %for.inc17.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc17.4:                                      ; preds = %for.inc17.3
  call void @__sanitizer_cov_trace_pc() #4
  %and13.5 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.5)
  %tobool14.not.5 = icmp eq i32 %and13.5, 0
  %spec.select = select i1 %tobool14.not.5, i32 0, i32 5
  br label %cleanup

cleanup:                                          ; preds = %for.inc17.4, %for.inc17.3.cleanup_crit_edge, %for.inc17.2.cleanup_crit_edge, %for.inc17.1.cleanup_crit_edge, %for.inc17.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.5.cleanup_crit_edge ], [ 1, %for.inc17.cleanup_crit_edge ], [ 2, %for.inc17.1.cleanup_crit_edge ], [ 3, %for.inc17.2.cleanup_crit_edge ], [ 4, %for.inc17.3.cleanup_crit_edge ], [ 5, %entry.cleanup_crit_edge ], [ 4, %for.inc.cleanup_crit_edge ], [ 3, %for.inc.1.cleanup_crit_edge ], [ 2, %for.inc.2.cleanup_crit_edge ], [ 1, %for.inc.3.cleanup_crit_edge ], [ 0, %for.inc.4.cleanup_crit_edge ], [ %spec.select, %for.inc17.4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @pwc_construct(ptr nocapture noundef %pdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 675, i32 %1)
  %cmp = icmp slt i32 %1, 675
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %image_mask = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 34
  %2 = ptrtoint ptr %image_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 21, ptr %image_mask, align 4
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 699, i32 %1)
  %cmp2 = icmp ugt i32 %1, 699
  %image_mask4 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 34
  br i1 %cmp2, label %if.then3, label %if.else9

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %3 = ptrtoint ptr %image_mask4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 42, ptr %image_mask4, align 4
  br label %if.end15

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %4 = ptrtoint ptr %image_mask4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 63, ptr %image_mask4, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else9, %if.then3, %if.then
  %.sink34 = phi i32 [ 3, %if.then3 ], [ 3, %if.else9 ], [ 2, %if.then ]
  %.sink33 = phi i32 [ 5, %if.then3 ], [ 4, %if.else9 ], [ 4, %if.then ]
  %.sink32 = phi i32 [ 8, %if.then3 ], [ 0, %if.else9 ], [ 0, %if.then ]
  %.sink = phi i32 [ 4, %if.then3 ], [ 0, %if.else9 ], [ 0, %if.then ]
  %vcinterface5 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 12
  %5 = ptrtoint ptr %vcinterface5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink34, ptr %vcinterface5, align 8
  %vendpoint6 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 11
  %6 = ptrtoint ptr %vendpoint6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink33, ptr %vendpoint6, align 4
  %frame_header_size7 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 28
  %7 = ptrtoint ptr %frame_header_size7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink32, ptr %frame_header_size7, align 8
  %frame_trailer_size8 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 29
  %8 = ptrtoint ptr %frame_trailer_size8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %frame_trailer_size8, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @pwc_image_sizes, !1, !"pwc_image_sizes", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pwc/pwc-misc.c", i32 18, i32 11}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
