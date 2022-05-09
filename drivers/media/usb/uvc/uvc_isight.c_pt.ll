; ModuleID = '/llk/IR_all_yes/drivers/media/usb/uvc/uvc_isight.c_pt.bc'
source_filename = "../drivers/media/usb/uvc/uvc_isight.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.uvc_urb = type { ptr, ptr, ptr, i32, ptr, i32, [32 x %struct.uvc_copy_op], %struct.work_struct }
%struct.uvc_copy_op = type { ptr, ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uvc_streaming = type { %struct.list_head, ptr, %struct.video_device, ptr, %struct.atomic_t, ptr, i32, i16, %struct.uvc_streaming_header, i32, i32, ptr, %struct.uvc_streaming_control, ptr, ptr, ptr, %struct.mutex, i8, %struct.uvc_video_queue, ptr, ptr, %struct.anon.100, %struct.anon.101, [5 x %struct.uvc_urb], i32, i32, i8, ptr, %struct.anon.102, %struct.uvc_clock }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.84 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.81], %struct.media_entity_enum, i32 }
%struct.anon.81 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.uvc_streaming_header = type { i8, i8, i8, i8, ptr, i8, i8, i8, i8 }
%struct.uvc_streaming_control = type <{ i16, i8, i8, i32, i16, i16, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8 }>
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.uvc_video_queue = type { %struct.vb2_queue, %struct.mutex, i32, i32, %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.anon.100 = type { %struct.video_device, %struct.uvc_video_queue, i32 }
%struct.anon.101 = type { [256 x i8], i32, i32, i32, i32 }
%struct.anon.102 = type { %struct.uvc_stats_frame, %struct.uvc_stats_stream }
%struct.uvc_stats_frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i16, i32 }
%struct.uvc_stats_stream = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uvc_clock = type { ptr, i32, i32, i32, i16, i16, [6 x i8], %struct.spinlock }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.uvc_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.kref }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.80, i32 }
%union.anon.80 = type { i32 }

@uvc_dbg_param = external dso_local local_unnamed_addr global i32, align 4
@uvc_video_decode_isight._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 109, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"USB isochronous frame lost (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uvc_video_decode_isight\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/usb/uvc/uvc_isight.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uvc_video_decode_isight._entry_ptr = internal global ptr @uvc_video_decode_isight._entry, section ".printk_index", align 4
@isight_decode.hdr = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\11\223D\DE\AD\BE\EF\DE\AD\FA\CE", [20 x i8] zeroinitializer }, align 32
@isight_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 53, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iSight header found\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isight_decode\00", [18 x i8] zeroinitializer }, align 32
@isight_decode._entry_ptr = internal global ptr @isight_decode._entry, section ".printk_index", align 4
@isight_decode._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 61, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Dropping packet (out of sync)\0A\00", [33 x i8] zeroinitializer }, align 32
@isight_decode._entry_ptr.9 = internal global ptr @isight_decode._entry.7, section ".printk_index", align 4
@isight_decode._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 90, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Frame complete (overflow)\0A\00", [37 x i8] zeroinitializer }, align 32
@isight_decode._entry_ptr.12 = internal global ptr @isight_decode._entry.10, section ".printk_index", align 4
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 107, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant [4 x i8] c"hdr\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 37, i32 18 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 53, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 60, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [38 x i8] c"../drivers/media/usb/uvc/uvc_isight.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 89, i32 4 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @isight_decode._entry, ptr @isight_decode._entry.10, ptr @isight_decode._entry.7, ptr @isight_decode._entry_ptr, ptr @isight_decode._entry_ptr.12, ptr @isight_decode._entry_ptr.9, ptr @uvc_video_decode_isight._entry, ptr @uvc_video_decode_isight._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @isight_decode.hdr, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_decode_isight._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isight_decode.hdr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isight_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isight_decode._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isight_decode._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvc_video_decode_isight(ptr nocapture noundef readonly %uvc_urb, ptr noundef %buf, ptr nocapture noundef readnone %meta_buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %uvc_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uvc_urb, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp51 = icmp sgt i32 %3, 0
  br i1 %cmp51, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %stream2 = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb, i32 0, i32 1
  %4 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream2, align 4
  %dev = getelementptr %struct.uvc_streaming, ptr %5, i32 0, i32 1
  %queue = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 18
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %buf.addr.052 = phi ptr [ %buf, %for.body.lr.ph ], [ %buf.addr.3, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %i.053
  %status = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %i.053, i32 3
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp slt i32 %7, 0
  br i1 %cmp3, label %do.body, label %for.body.if.end12_crit_edge

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

do.body:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %8 = load i32, ptr @uvc_dbg_param, align 4
  %and = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end12_crit_edge, label %do.end

do.body.if.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev6, ptr noundef nonnull @.str, i32 noundef %7) #8
  br label %if.end12

if.end12:                                         ; preds = %do.end, %do.body.if.end12_crit_edge, %for.body.if.end12_crit_edge
  %actual_length = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %i.053, i32 2
  br label %do.body13

do.body13:                                        ; preds = %do.cond28.do.body13_crit_edge, %if.end12
  %buf.addr.1 = phi ptr [ %buf.addr.052, %if.end12 ], [ %buf.addr.2, %do.cond28.do.body13_crit_edge ]
  %13 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %transfer_buffer, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %16
  %17 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual_length, align 4
  %cmp.i = icmp eq ptr %buf.addr.1, null
  br i1 %cmp.i, label %do.body13.for.inc_crit_edge, label %if.end.i

do.body13.for.inc_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %18)
  %cmp1.i = icmp ugt i32 %18, 13
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end16.i_crit_edge

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %arrayidx.i = getelementptr i8, ptr %add.ptr, i32 2
  %bcmp101.i = tail call i32 @bcmp(ptr noundef dereferenceable(12) %arrayidx.i, ptr noundef nonnull dereferenceable(12) @isight_decode.hdr, i32 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp101.i)
  %cmp3.i = icmp eq i32 %bcmp101.i, 0
  br i1 %cmp3.i, label %land.lhs.true.i.do.body.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %18)
  %cmp4.i = icmp ugt i32 %18, 14
  br i1 %cmp4.i, label %land.lhs.true5.i, label %lor.lhs.false.i.if.end16.i_crit_edge

lor.lhs.false.i.if.end16.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

land.lhs.true5.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx6.i = getelementptr i8, ptr %add.ptr, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(12) %arrayidx6.i, ptr noundef nonnull dereferenceable(12) @isight_decode.hdr, i32 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp8.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp8.i, label %land.lhs.true5.i.do.body.i_crit_edge, label %land.lhs.true5.i.if.end16.i_crit_edge

land.lhs.true5.i.if.end16.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

land.lhs.true5.i.do.body.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i:                                        ; preds = %land.lhs.true5.i.do.body.i_crit_edge, %land.lhs.true.i.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %19 = load i32, ptr @uvc_dbg_param, align 4
  %and.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end16.i_crit_edge, label %do.end.i

do.body.i.if.end16.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %dev12.i = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev12.i, ptr noundef nonnull @.str.5) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end.i, %do.body.i.if.end16.i_crit_edge, %land.lhs.true5.i.if.end16.i_crit_edge, %lor.lhs.false.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge
  %tobool37.not.i = phi i1 [ true, %land.lhs.true5.i.if.end16.i_crit_edge ], [ true, %lor.lhs.false.i.if.end16.i_crit_edge ], [ false, %do.end.i ], [ false, %do.body.i.if.end16.i_crit_edge ], [ true, %if.end.i.if.end16.i_crit_edge ]
  %state.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1, i32 0, i32 2
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp17.not.i = icmp eq i32 %25, 2
  br i1 %cmp17.not.i, label %if.end36.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end16.i
  br i1 %tobool37.not.i, label %do.body21.i, label %if.end34.i

do.body21.i:                                      ; preds = %if.then18.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %26 = load i32, ptr @uvc_dbg_param, align 4
  %and22.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %do.body21.i.if.end20_crit_edge, label %do.end27.i

do.body21.i.if.end20_crit_edge:                   ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

do.end27.i:                                       ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %dev30.i = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev30.i, ptr noundef nonnull @.str.8) #8
  br label %if.end20

if.end34.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %state.i, align 8
  br label %land.lhs.true38.i

if.end36.i:                                       ; preds = %if.end16.i
  br i1 %tobool37.not.i, label %if.then44.critedge.i, label %if.end36.i.land.lhs.true38.i_crit_edge

if.end36.i.land.lhs.true38.i_crit_edge:           ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true38.i

land.lhs.true38.i:                                ; preds = %if.end36.i.land.lhs.true38.i_crit_edge, %if.end34.i
  %bytesused.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1, i32 0, i32 6
  %32 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bytesused.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp39.not.i = icmp eq i32 %33, 0
  br i1 %cmp39.not.i, label %land.lhs.true38.i.if.end20_crit_edge, label %if.then40.i

land.lhs.true38.i.if.end20_crit_edge:             ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then40.i:                                      ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %state.i, align 8
  br label %if.end20

if.then44.critedge.i:                             ; preds = %if.end36.i
  %length.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1, i32 0, i32 5
  %35 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length.i, align 4
  %bytesused45.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1, i32 0, i32 6
  %37 = ptrtoint ptr %bytesused45.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bytesused45.i, align 8
  %sub.i = sub i32 %36, %38
  %mem46.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1, i32 0, i32 4
  %39 = ptrtoint ptr %mem46.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mem46.i, align 8
  %add.ptr.i = getelementptr i8, ptr %40, i32 %38
  %41 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %18) #5
  %42 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr, i32 %41)
  %43 = ptrtoint ptr %bytesused45.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bytesused45.i, align 8
  %add.i = add i32 %44, %41
  store i32 %add.i, ptr %bytesused45.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %18)
  %cmp50.i = icmp ult i32 %sub.i, %18
  br i1 %cmp50.i, label %if.then44.critedge.i.do.body56.i_crit_edge, label %lor.lhs.false51.i

if.then44.critedge.i.do.body56.i_crit_edge:       ; preds = %if.then44.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body56.i

lor.lhs.false51.i:                                ; preds = %if.then44.critedge.i
  %45 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %46)
  %cmp54.i = icmp eq i32 %add.i, %46
  br i1 %cmp54.i, label %lor.lhs.false51.i.do.body56.i_crit_edge, label %lor.lhs.false51.i.if.end20_crit_edge

lor.lhs.false51.i.if.end20_crit_edge:             ; preds = %lor.lhs.false51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

lor.lhs.false51.i.do.body56.i_crit_edge:          ; preds = %lor.lhs.false51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body56.i

do.body56.i:                                      ; preds = %lor.lhs.false51.i.do.body56.i_crit_edge, %if.then44.critedge.i.do.body56.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %47 = load i32, ptr @uvc_dbg_param, align 4
  %and57.i = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %do.body56.i.do.end68.i_crit_edge, label %do.end62.i

do.body56.i.do.end68.i_crit_edge:                 ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end68.i

do.end62.i:                                       ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %dev65.i = getelementptr inbounds %struct.usb_device, ptr %51, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev65.i, ptr noundef nonnull @.str.11) #8
  br label %do.end68.i

do.end68.i:                                       ; preds = %do.end62.i, %do.body56.i.do.end68.i_crit_edge
  %52 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %state.i, align 8
  br label %if.end20

if.end20:                                         ; preds = %do.end68.i, %lor.lhs.false51.i.if.end20_crit_edge, %if.then40.i, %land.lhs.true38.i.if.end20_crit_edge, %do.end27.i, %do.body21.i.if.end20_crit_edge
  %cmp29 = phi i1 [ false, %do.body21.i.if.end20_crit_edge ], [ false, %do.end27.i ], [ false, %land.lhs.true38.i.if.end20_crit_edge ], [ true, %if.then40.i ], [ false, %lor.lhs.false51.i.if.end20_crit_edge ], [ false, %do.end68.i ]
  %53 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %state.i, align 8
  %55 = and i32 %54, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %55)
  %switch = icmp eq i32 %55, 4
  br i1 %switch, label %if.then24, label %if.end20.do.cond28_crit_edge

if.end20.do.cond28_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond28

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call26 = tail call ptr @uvc_queue_next_buffer(ptr noundef %queue, ptr noundef nonnull %buf.addr.1) #5
  br label %do.cond28

do.cond28:                                        ; preds = %if.then24, %if.end20.do.cond28_crit_edge
  %buf.addr.2 = phi ptr [ %call26, %if.then24 ], [ %buf.addr.1, %if.end20.do.cond28_crit_edge ]
  br i1 %cmp29, label %do.cond28.do.body13_crit_edge, label %do.cond28.for.inc_crit_edge

do.cond28.for.inc_crit_edge:                      ; preds = %do.cond28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.cond28.do.body13_crit_edge:                    ; preds = %do.cond28
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13

for.inc:                                          ; preds = %do.cond28.for.inc_crit_edge, %do.body13.for.inc_crit_edge
  %buf.addr.3 = phi ptr [ %buf.addr.2, %do.cond28.for.inc_crit_edge ], [ null, %do.body13.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.053, 1
  %56 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %number_of_packets, align 4
  %cmp = icmp slt i32 %inc, %57
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uvc_queue_next_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind readonly willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/uvc/uvc_isight.c", i32 107, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @uvc_video_decode_isight._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @uvc_video_decode_isight._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @isight_decode.hdr, !9, !"hdr", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/uvc/uvc_isight.c", i32 37, i32 18}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/uvc/uvc_isight.c", i32 53, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @isight_decode._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @isight_decode._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/uvc/uvc_isight.c", i32 60, i32 4}
!17 = !{ptr @isight_decode._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @isight_decode._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/uvc/uvc_isight.c", i32 89, i32 4}
!21 = !{ptr @isight_decode._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @isight_decode._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
