; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/uvc_queue.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/uvc_queue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uvc_device = type { %struct.video_device, %struct.v4l2_device, i32, %struct.usb_function, %struct.uvc_video, i8, %struct.anon.98, i32, ptr, ptr, ptr, i32, i32, i8 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.uvc_video = type { ptr, ptr, %struct.work_struct, i8, i32, i32, i32, i32, %struct.mutex, i32, i32, ptr, %struct.list_head, %struct.spinlock, i32, ptr, i32, i32, %struct.uvc_video_queue, i32 }
%struct.uvc_video_queue = type { %struct.vb2_queue, i32, i32, i32, i8, %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.anon.98 = type { ptr, ptr, ptr, ptr, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.uvc_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.85, i32 }
%union.anon.85 = type { i32 }

@uvc_queue_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @uvc_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @uvc_buffer_prepare, ptr null, ptr null, ptr null, ptr null, ptr @uvc_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@uvcg_queue_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&queue->irqlock\00", [16 x i8] zeroinitializer }, align 32
@uvc_gadget_trace_param = external dso_local local_unnamed_addr global i32, align 4
@uvc_buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017uvcvideo: [E] Bytes used out of bounds.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uvc_buffer_prepare\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/usb/gadget/function/uvc_queue.c\00", [56 x i8] zeroinitializer }, align 32
@uvc_buffer_prepare._entry_ptr = internal global ptr @uvc_buffer_prepare._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"uvc_queue_qops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 117, i32 29 }
@___asan_gen_.8 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 153, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private constant [43 x i8] c"../drivers/usb/gadget/function/uvc_queue.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 72, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 1163, i32 7 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @uvc_buffer_prepare._entry, ptr @uvc_buffer_prepare._entry_ptr, ptr @uvc_queue_qops, ptr @uvcg_queue_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_queue_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_queue_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvcg_queue_init(ptr noundef %queue, ptr noundef %dev, i32 noundef %type, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %queue, i32 -244
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %config = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev1, align 4
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %type, ptr %queue, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 1
  %7 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 19, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 10
  %8 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %queue, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 12
  %9 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 776, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 7
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @uvc_queue_qops, ptr %ops, align 4
  %lock9 = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 5
  %11 = ptrtoint ptr %lock9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %lock, ptr %lock9, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %sg_supported = getelementptr inbounds %struct.usb_gadget, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %sg_supported to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load = load i32, ptr %sg_supported, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %use_sg = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 4
  %15 = ptrtoint ptr %use_sg to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %use_sg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vb2_dma_sg_memops.sink = phi ptr [ @vb2_dma_sg_memops, %if.then ], [ @vb2_vmalloc_memops, %entry.if.end_crit_edge ]
  %16 = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %vb2_dma_sg_memops.sink, ptr %16, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 13
  %18 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16384, ptr %timestamp_flags, align 4
  %dev15 = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 2
  %19 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %dev15, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %queue) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %irqlock = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str, ptr noundef nonnull @uvcg_queue_init.__key, i16 noundef signext 3) #5
  %irqqueue = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 6
  %20 = ptrtoint ptr %irqqueue to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %irqqueue, ptr %irqqueue, align 4
  %prev.i = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %irqqueue, ptr %prev.i, align 4
  %flags = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 1
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvcg_free_buffers(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @vb2_queue_release(ptr noundef %queue) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvcg_alloc_buffers(ptr noundef %queue, ptr noundef %rb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vb2_reqbufs(ptr noundef %queue, ptr noundef %rb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rb, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.false ], [ %call, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_reqbufs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvcg_query_buffer(ptr noundef %queue, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vb2_querybuf(ptr noundef %queue, ptr noundef %buf) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_querybuf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvcg_queue_buffer(ptr noundef %queue, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vb2_qbuf(ptr noundef %queue, ptr noundef null, ptr noundef %buf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %irqlock = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 5
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #5
  %flags8 = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 1
  %0 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags8, align 4
  %and = lshr i32 %1, 2
  %and.lobit = and i32 %and, 1
  %and12 = and i32 %1, -5
  store i32 %and12, ptr %flags8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call5) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and.lobit, %do.body2 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_qbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvcg_dequeue_buffer(ptr noundef %queue, ptr noundef %buf, i32 noundef %nonblocking) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblocking)
  %tobool = icmp ne i32 %nonblocking, 0
  %call = tail call i32 @vb2_dqbuf(ptr noundef %queue, ptr noundef %buf, i1 noundef zeroext %tobool) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dqbuf(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvcg_queue_poll(ptr noundef %queue, ptr noundef %file, ptr noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vb2_poll(ptr noundef %queue, ptr noundef %file, ptr noundef %wait) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvcg_queue_mmap(ptr noundef %queue, ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vb2_mmap(ptr noundef %queue, ptr noundef %vma) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_mmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvcg_queue_cancel(ptr noundef %queue, i32 noundef %disconnect) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irqlock = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #5
  %irqqueue = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 6
  %0 = ptrtoint ptr %irqqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %irqqueue, align 4
  %cmp.i.not19 = icmp eq ptr %1, %irqqueue
  br i1 %cmp.i.not19, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %13, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #5
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %state = getelementptr i8, ptr %2, i32 8
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %state, align 8
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #5
  %12 = ptrtoint ptr %irqqueue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %irqqueue, align 4
  %cmp.i.not = icmp eq ptr %13, %irqqueue
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disconnect)
  %tobool10.not = icmp eq i32 %disconnect, 0
  br i1 %tobool10.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %flags11 = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 1
  %14 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags11, align 4
  %or = or i32 %15, 1
  store i32 %or, ptr %flags11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvcg_queue_enable(ptr noundef %queue, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @vb2_streamon(ptr noundef %queue, i32 noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %sequence = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 2
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sequence, align 4
  %buf_used = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 3
  %3 = ptrtoint ptr %buf_used to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buf_used, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %call7 = tail call i32 @vb2_streamoff(ptr noundef %queue, i32 noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.else.cleanup_crit_edge, label %do.body11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %irqlock = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 5
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #5
  %irqqueue = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 6
  %4 = ptrtoint ptr %irqqueue to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %irqqueue, ptr %irqqueue, align 4
  %prev.i = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %irqqueue, ptr %prev.i, align 4
  %flags17 = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 1
  %6 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags17, align 4
  %and = and i32 %7, -2
  store i32 %and, ptr %flags17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call14) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call7, %if.else.cleanup_crit_edge ], [ %call, %if.end ], [ %call7, %do.body11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamon(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamoff(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @uvcg_queue_next_buffer(ptr noundef %queue, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %length = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 7
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %bytesused = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 8
  %4 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bytesused, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %state = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %state, align 8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 4
  %7 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 3
  %9 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %bytesused.i, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %queue2 = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue2) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %queue2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %queue2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %16 = ptrtoint ptr %queue2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %queue2, align 4
  %prev.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %irqqueue = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 6
  %18 = ptrtoint ptr %irqqueue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %irqqueue, align 4
  %cmp.i.not = icmp eq ptr %19, %irqqueue
  %add.ptr = getelementptr i8, ptr %19, i32 -736
  %spec.select = select i1 %cmp.i.not, ptr null, ptr %add.ptr
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf, i32 0, i32 2
  %20 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %field, align 4
  %sequence = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 2
  %21 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sequence, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %sequence, align 4
  %sequence9 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf, i32 0, i32 4
  %23 = ptrtoint ptr %sequence9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %sequence9, align 8
  %call.i = tail call i64 @ktime_get() #5
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 5
  %24 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %call.i, ptr %timestamp, align 8
  %num_planes.i32 = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 4
  %25 = ptrtoint ptr %num_planes.i32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_planes.i32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i33 = icmp eq i32 %26, 0
  br i1 %cmp.not.i33, label %list_del.exit.vb2_set_plane_payload.exit37_crit_edge, label %if.then.i35

list_del.exit.vb2_set_plane_payload.exit37_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_set_plane_payload.exit37

if.then.i35:                                      ; preds = %list_del.exit
  %bytesused15 = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 8
  %27 = ptrtoint ptr %bytesused15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bytesused15, align 8
  %length.i34 = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 4
  %29 = ptrtoint ptr %length.i34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length.i34, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %28)
  %cmp1.i = icmp ult i32 %30, %28
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i35.if.end42.i_crit_edge

if.then.i35.if.end42.i_crit_edge:                 ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i35
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !23

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1163, i32 noundef 9, ptr noundef null) #5
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %31 = ptrtoint ptr %length.i34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length.i34, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i35.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %32, %if.then38.i ], [ %28, %if.then.i35.if.end42.i_crit_edge ]
  %bytesused.i36 = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 3
  %33 = ptrtoint ptr %bytesused.i36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %size.addr.0.i, ptr %bytesused.i36, align 4
  br label %vb2_set_plane_payload.exit37

vb2_set_plane_payload.exit37:                     ; preds = %if.end42.i, %list_del.exit.vb2_set_plane_payload.exit37_crit_edge
  tail call void @vb2_buffer_done(ptr noundef %buf, i32 noundef 5) #5
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit37, %if.then.i, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %vb2_set_plane_payload.exit37 ], [ %buf, %if.then.cleanup_crit_edge ], [ %buf, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @uvcg_queue_head(ptr noundef %queue) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irqqueue = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 6
  %0 = ptrtoint ptr %irqqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %irqqueue, align 4
  %cmp.i.not = icmp eq ptr %1, %irqqueue
  br i1 %cmp.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %1, i32 -736
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 4
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %buf.0 = phi ptr [ null, %if.else ], [ %add.ptr, %if.then ]
  ret ptr %buf.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uvc_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef writeonly %nplanes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -244
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %config = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdev1, align 4
  %8 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbuffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %9)
  %cmp = icmp ugt i32 %9, 32
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 32, ptr %nbuffers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %nplanes, align 4
  %imagesize = getelementptr i8, ptr %1, i32 -176
  %12 = ptrtoint ptr %imagesize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %imagesize, align 4
  %14 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sizes, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %7, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp2.inv = icmp ugt i32 %18, 4
  %spec.select = select i1 %cmp2.inv, i32 64, i32 4
  %19 = getelementptr i8, ptr %1, i32 -80
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select, ptr %19, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_buffer_prepare(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %type = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %land.lhs.true.if.end13_crit_edge, label %vb2_plane_size.exit

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

vb2_plane_size.exit:                              ; preds = %land.lhs.true
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %8 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytesused.i, align 4
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp6 = icmp ugt i32 %9, %11
  br i1 %cmp6, label %do.body, label %vb2_plane_size.exit.if.end13_crit_edge

vb2_plane_size.exit.if.end13_crit_edge:           ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.body:                                          ; preds = %vb2_plane_size.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_gadget_trace_param to i32))
  %12 = load i32, ptr @uvc_gadget_trace_param, align 4
  %and = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end13:                                         ; preds = %vb2_plane_size.exit.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  %flags = getelementptr inbounds %struct.uvc_video_queue, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and14 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end19, label %if.end13.cleanup_crit_edge, !prof !23

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %state = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 2
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %state, align 8
  %use_sg = getelementptr inbounds %struct.uvc_video_queue, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %use_sg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use_sg, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool20.not = icmp eq i8 %17, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #5
  %sgt = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 4
  %18 = ptrtoint ptr %sgt to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %sgt, align 8
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %sg = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 5
  %21 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %sg, align 4
  br label %if.end25

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #5
  %mem = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 3
  %22 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call24, ptr %mem, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then21
  %num_planes.i57 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %23 = ptrtoint ptr %num_planes.i57 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_planes.i57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i58 = icmp eq i32 %24, 0
  br i1 %cmp.not.i58, label %vb2_plane_size.exit62, label %vb2_plane_size.exit62.thread

vb2_plane_size.exit62:                            ; preds = %if.end25
  %length = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 7
  %25 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %length, align 4
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp28 = icmp eq i32 %27, 1
  br i1 %cmp28, label %vb2_plane_size.exit62.if.then29_crit_edge, label %vb2_plane_size.exit62.vb2_get_plane_payload.exit68_crit_edge

vb2_plane_size.exit62.vb2_get_plane_payload.exit68_crit_edge: ; preds = %vb2_plane_size.exit62
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_get_plane_payload.exit68

vb2_plane_size.exit62.if.then29_crit_edge:        ; preds = %vb2_plane_size.exit62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29

vb2_plane_size.exit62.thread:                     ; preds = %if.end25
  %length.i59 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %28 = ptrtoint ptr %length.i59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length.i59, align 8
  %length75 = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 7
  %30 = ptrtoint ptr %length75 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %length75, align 4
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp2876 = icmp eq i32 %32, 1
  br i1 %cmp2876, label %vb2_plane_size.exit62.thread.if.then29_crit_edge, label %if.then.i66

vb2_plane_size.exit62.thread.if.then29_crit_edge: ; preds = %vb2_plane_size.exit62.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29

if.then29:                                        ; preds = %vb2_plane_size.exit62.thread.if.then29_crit_edge, %vb2_plane_size.exit62.if.then29_crit_edge
  %bytesused = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 8
  %33 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %bytesused, align 8
  br label %cleanup

if.then.i66:                                      ; preds = %vb2_plane_size.exit62.thread
  call void @__sanitizer_cov_trace_pc() #7
  %bytesused.i65 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %34 = ptrtoint ptr %bytesused.i65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bytesused.i65, align 4
  br label %vb2_get_plane_payload.exit68

vb2_get_plane_payload.exit68:                     ; preds = %if.then.i66, %vb2_plane_size.exit62.vb2_get_plane_payload.exit68_crit_edge
  %retval.0.i67 = phi i32 [ %35, %if.then.i66 ], [ 0, %vb2_plane_size.exit62.vb2_get_plane_payload.exit68_crit_edge ]
  %bytesused32 = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 8
  %36 = ptrtoint ptr %bytesused32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i67, ptr %bytesused32, align 8
  br label %cleanup

cleanup:                                          ; preds = %vb2_get_plane_payload.exit68, %if.then29, %if.end13.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -19, %if.end13.cleanup_crit_edge ], [ 0, %vb2_get_plane_payload.exit68 ], [ 0, %if.then29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %irqlock = getelementptr inbounds %struct.uvc_video_queue, ptr %3, i32 0, i32 5
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #5
  %flags10 = getelementptr inbounds %struct.uvc_video_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags10, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else, !prof !23

if.then:                                          ; preds = %entry
  %queue14 = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 1
  %irqqueue = getelementptr inbounds %struct.uvc_video_queue, ptr %3, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.uvc_video_queue, ptr %3, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue14, ptr noundef %7, ptr noundef %irqqueue) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %queue14, ptr %prev.i, align 4
  %9 = ptrtoint ptr %queue14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %irqqueue, ptr %queue14, align 4
  %prev3.i.i = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %queue14, ptr %7, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %state = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 2
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %state, align 8
  tail call void @vb2_buffer_done(ptr noundef %vb, i32 noundef 6) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i.i, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call7) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @uvcg_queue_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/uvc_queue.c", i32 153, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @uvc_queue_qops, !4, !"uvc_queue_qops", i1 false, i1 false}
!4 = !{!"../drivers/usb/gadget/function/uvc_queue.c", i32 117, i32 29}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/function/uvc_queue.c", i32 72, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @uvc_buffer_prepare._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @uvc_buffer_prepare._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i8 0, i8 2}
