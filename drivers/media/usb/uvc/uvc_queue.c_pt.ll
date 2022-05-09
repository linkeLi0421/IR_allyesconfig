; ModuleID = '/llk/IR_all_yes/drivers/media/usb/uvc/uvc_queue.c_pt.bc'
source_filename = "../drivers/media/usb/uvc/uvc_queue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uvc_video_queue = type { %struct.vb2_queue, %struct.mutex, i32, i32, %struct.spinlock, %struct.list_head }
%struct.uvc_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.kref }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@uvc_meta_queue_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @uvc_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @uvc_buffer_prepare, ptr null, ptr null, ptr null, ptr @uvc_stop_streaming, ptr @uvc_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@uvc_queue_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @uvc_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @uvc_buffer_prepare, ptr @uvc_buffer_finish, ptr null, ptr @uvc_start_streaming, ptr @uvc_stop_streaming, ptr @uvc_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@uvc_queue_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&queue->mutex\00", [18 x i8] zeroinitializer }, align 32
@uvc_queue_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&queue->irqlock\00", [16 x i8] zeroinitializer }, align 32
@uvc_dbg_param = external dso_local local_unnamed_addr global i32, align 4
@uvc_buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 107, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[E] Bytes used out of bounds\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uvc_buffer_prepare\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/uvc/uvc_queue.c\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uvc_buffer_prepare._entry_ptr = internal global ptr @uvc_buffer_prepare._entry, section ".printk_index", align 4
@uvc_stop_streaming.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@uvc_start_streaming.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"uvc_meta_queue_qops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 205, i32 29 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"uvc_queue_qops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 194, i32 29 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 242, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 243, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private constant [37 x i8] c"../drivers/media/usb/uvc/uvc_queue.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 106, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1163, i32 7 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @uvc_buffer_prepare._entry, ptr @uvc_buffer_prepare._entry_ptr, ptr @uvc_meta_queue_qops, ptr @uvc_queue_qops, ptr @uvc_queue_init.__key, ptr @.str, ptr @uvc_queue_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_meta_queue_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_queue_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_queue_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_queue_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_queue_init(ptr noundef %queue, i32 noundef %type, i32 noundef %drop_corrupted) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %type, ptr %queue, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 1
  %1 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %queue, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 12
  %3 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 776, ptr %buf_struct_size, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 8
  %4 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 13
  %5 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 73728, ptr %timestamp_flags, align 4
  %mutex = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 1
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 5
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mutex, ptr %lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %type)
  %cond21 = icmp eq i32 %type, 13
  br i1 %cond21, label %entry.sw.epilog_crit_edge, label %sw.default

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 19, ptr %io_modes, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry.sw.epilog_crit_edge
  %uvc_queue_qops.sink = phi ptr [ @uvc_queue_qops, %sw.default ], [ @uvc_meta_queue_qops, %entry.sw.epilog_crit_edge ]
  %8 = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 7
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %uvc_queue_qops.sink, ptr %8, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %queue) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @uvc_queue_init.__key) #6
  %irqlock = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.2, ptr noundef nonnull @uvc_queue_init.__key.1, i16 noundef signext 3) #6
  %irqqueue = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 5
  %10 = ptrtoint ptr %irqqueue to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %irqqueue, ptr %irqqueue, align 4
  %prev.i = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %irqqueue, ptr %prev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %drop_corrupted)
  %tobool20.not = icmp eq i32 %drop_corrupted, 0
  %cond = select i1 %tobool20.not, i32 0, i32 2
  %flags = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %sw.epilog.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvc_queue_release(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  tail call void @vb2_queue_release(ptr noundef %queue) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_request_buffers(ptr noundef %queue, ptr noundef %rb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call i32 @vb2_reqbufs(ptr noundef %queue, ptr noundef %rb) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
define dso_local i32 @uvc_query_buffer(ptr noundef %queue, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call i32 @vb2_querybuf(ptr noundef %queue, ptr noundef %buf) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_querybuf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_create_buffers(ptr noundef %queue, ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call i32 @vb2_create_bufs(ptr noundef %queue, ptr noundef %cb) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_create_bufs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_queue_buffer(ptr noundef %queue, ptr noundef %mdev, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call i32 @vb2_qbuf(ptr noundef %queue, ptr noundef %mdev, ptr noundef %buf) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_qbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_export_buffer(ptr noundef %queue, ptr noundef %exp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call i32 @vb2_expbuf(ptr noundef %queue, ptr noundef %exp) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_expbuf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_dequeue_buffer(ptr noundef %queue, ptr noundef %buf, i32 noundef %nonblocking) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblocking)
  %tobool = icmp ne i32 %nonblocking, 0
  %call = tail call i32 @vb2_dqbuf(ptr noundef %queue, ptr noundef %buf, i1 noundef zeroext %tobool) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dqbuf(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_queue_streamon(ptr noundef %queue, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call i32 @vb2_streamon(ptr noundef %queue, i32 noundef %type) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamon(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_queue_streamoff(ptr noundef %queue, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call i32 @vb2_streamoff(ptr noundef %queue, i32 noundef %type) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamoff(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_queue_mmap(ptr noundef %queue, ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vb2_mmap(ptr noundef %queue, ptr noundef %vma) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_mmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_queue_poll(ptr noundef %queue, ptr noundef %file, ptr noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call i32 @vb2_poll(ptr noundef %queue, ptr noundef %file, ptr noundef %wait) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_queue_allocated(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %queue, i32 0, i32 21
  %0 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp ne i32 %1, 0
  %conv = zext i1 %cmp.i to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvc_queue_cancel(ptr noundef %queue, i32 noundef %disconnect) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irqlock = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #6
  %irqqueue.i = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 5
  %0 = ptrtoint ptr %irqqueue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %irqqueue.i, align 4
  %cmp.i.not9.i = icmp eq ptr %1, %irqqueue.i
  br i1 %cmp.i.not9.i, label %entry.uvc_queue_return_buffers.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.uvc_queue_return_buffers.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %uvc_queue_return_buffers.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %2 = phi ptr [ %13, %list_del.exit.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %2, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %state3.i = getelementptr i8, ptr %2, i32 8
  %11 = ptrtoint ptr %state3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %state3.i, align 8
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i, i32 noundef 6) #6
  %12 = ptrtoint ptr %irqqueue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %irqqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %13, %irqqueue.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.uvc_queue_return_buffers.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

list_del.exit.i.uvc_queue_return_buffers.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uvc_queue_return_buffers.exit

uvc_queue_return_buffers.exit:                    ; preds = %list_del.exit.i.uvc_queue_return_buffers.exit_crit_edge, %entry.uvc_queue_return_buffers.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disconnect)
  %tobool.not = icmp eq i32 %disconnect, 0
  br i1 %tobool.not, label %uvc_queue_return_buffers.exit.if.end_crit_edge, label %if.then

uvc_queue_return_buffers.exit.if.end_crit_edge:   ; preds = %uvc_queue_return_buffers.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %uvc_queue_return_buffers.exit
  call void @__sanitizer_cov_trace_pc() #8
  %flags5 = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 2
  %14 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags5, align 4
  %or = or i32 %15, 1
  store i32 %or, ptr %flags5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %uvc_queue_return_buffers.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @uvc_queue_get_current_buffer(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irqlock = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #6
  %irqqueue.i = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 5
  %0 = ptrtoint ptr %irqqueue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %irqqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %irqqueue.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -736
  %spec.select.i = select i1 %cmp.i.not.i, ptr null, ptr %add.ptr.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call2) #6
  ret ptr %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvc_queue_buffer_release(ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #6, !srcloc !36
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !37

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !38
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buf, align 8
  %drv_priv.i.i.i = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %drv_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_priv.i.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.uvc_video_queue, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %error.i.i = getelementptr %struct.uvc_buffer, ptr %buf, i32 0, i32 3
  %7 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %9 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %error.i.i, align 4
  %state.i.i.i = getelementptr %struct.uvc_buffer, ptr %buf, i32 0, i32 2
  %10 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %state.i.i.i, align 8
  %bytesused.i.i.i = getelementptr %struct.uvc_buffer, ptr %buf, i32 0, i32 6
  %11 = ptrtoint ptr %bytesused.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %bytesused.i.i.i, align 8
  %num_planes.i.i.i.i = getelementptr %struct.uvc_buffer, ptr %buf, i32 0, i32 0, i32 0, i32 4
  %12 = ptrtoint ptr %num_planes.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_planes.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i.i.i.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.i.i.uvc_queue_buffer_requeue.exit.i.i_crit_edge, label %if.then.i.i.i.i

if.then.i.i.uvc_queue_buffer_requeue.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uvc_queue_buffer_requeue.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %bytesused.i.i.i.i = getelementptr %struct.uvc_buffer, ptr %buf, i32 0, i32 0, i32 0, i32 10, i32 0, i32 3
  %14 = ptrtoint ptr %bytesused.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %bytesused.i.i.i.i, align 4
  br label %uvc_queue_buffer_requeue.exit.i.i

uvc_queue_buffer_requeue.exit.i.i:                ; preds = %if.then.i.i.i.i, %if.then.i.i.uvc_queue_buffer_requeue.exit.i.i_crit_edge
  tail call void @uvc_buffer_queue(ptr noundef %buf) #6
  br label %kref_put.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.if.end.i.i_crit_edge
  %error3.i.i = getelementptr %struct.uvc_buffer, ptr %buf, i32 0, i32 3
  %15 = ptrtoint ptr %error3.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not.i.i = icmp eq i32 %16, 0
  %cond.i.i = select i1 %tobool4.not.i.i, i32 4, i32 5
  %state.i.i = getelementptr %struct.uvc_buffer, ptr %buf, i32 0, i32 2
  %17 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.i.i, ptr %state.i.i, align 8
  %num_planes.i.i.i = getelementptr %struct.uvc_buffer, ptr %buf, i32 0, i32 0, i32 0, i32 4
  %18 = ptrtoint ptr %num_planes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_planes.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i.i.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.vb2_set_plane_payload.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i.i.vb2_set_plane_payload.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vb2_set_plane_payload.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  %bytesused.i.i = getelementptr %struct.uvc_buffer, ptr %buf, i32 0, i32 6
  %20 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytesused.i.i, align 8
  %length.i.i.i = getelementptr %struct.uvc_buffer, ptr %buf, i32 0, i32 0, i32 0, i32 10, i32 0, i32 4
  %22 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp1.i.i.i = icmp ult i32 %23, %21
  br i1 %cmp1.i.i.i, label %land.rhs.i.i.i, label %if.then.i.i.i.if.end42.i.i.i_crit_edge

if.then.i.i.i.if.end42.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then.i.i.i
  %.b1.i.i.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.if.then38.i.i.i_crit_edge, label %if.then8.i.i.i, !prof !37

land.rhs.i.i.i.if.then38.i.i.i_crit_edge:         ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38.i.i.i

if.then8.i.i.i:                                   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1163, i32 noundef 9, ptr noundef null) #6
  br label %if.then38.i.i.i

if.then38.i.i.i:                                  ; preds = %if.then8.i.i.i, %land.rhs.i.i.i.if.then38.i.i.i_crit_edge
  %24 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i.i.i, align 8
  br label %if.end42.i.i.i

if.end42.i.i.i:                                   ; preds = %if.then38.i.i.i, %if.then.i.i.i.if.end42.i.i.i_crit_edge
  %size.addr.0.i.i.i = phi i32 [ %25, %if.then38.i.i.i ], [ %21, %if.then.i.i.i.if.end42.i.i.i_crit_edge ]
  %bytesused.i19.i.i = getelementptr %struct.uvc_buffer, ptr %buf, i32 0, i32 0, i32 0, i32 10, i32 0, i32 3
  %26 = ptrtoint ptr %bytesused.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %size.addr.0.i.i.i, ptr %bytesused.i19.i.i, align 4
  br label %vb2_set_plane_payload.exit.i.i

vb2_set_plane_payload.exit.i.i:                   ; preds = %if.end42.i.i.i, %if.end.i.i.vb2_set_plane_payload.exit.i.i_crit_edge
  tail call void @vb2_buffer_done(ptr noundef %buf, i32 noundef 5) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %vb2_set_plane_payload.exit.i.i, %uvc_queue_buffer_requeue.exit.i.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @uvc_queue_next_buffer(ptr noundef %queue, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irqlock = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #6
  %queue5 = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue5) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %queue5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %queue5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %queue5, align 4
  %prev.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %irqqueue.i = getelementptr inbounds %struct.uvc_video_queue, ptr %queue, i32 0, i32 5
  %8 = ptrtoint ptr %irqqueue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %irqqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %irqqueue.i
  %add.ptr.i = getelementptr i8, ptr %9, i32 -736
  %spec.select.i = select i1 %cmp.i.not.i, ptr null, ptr %add.ptr.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call2) #6
  tail call void @uvc_queue_buffer_release(ptr noundef %buf)
  ret ptr %spec.select.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uvc_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %1)
  %cond6 = icmp eq i32 %1, 13
  br i1 %cond6, label %entry.sw.epilog_crit_edge, label %sw.default

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %dwMaxVideoFrameSize = getelementptr i8, ptr %3, i32 -126
  %4 = ptrtoint ptr %dwMaxVideoFrameSize to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %dwMaxVideoFrameSize, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry.sw.epilog_crit_edge
  %size.0 = phi i32 [ %5, %sw.default ], [ 10240, %entry.sw.epilog_crit_edge ]
  %6 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nplanes, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %if.end
    i32 1, label %lor.rhs
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.rhs:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %size.0)
  %cmp2 = icmp ult i32 %10, %size.0
  %phi.sel = select i1 %cmp2, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %nplanes, align 4
  %12 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %size.0, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.rhs, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %phi.sel, %lor.rhs ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_buffer_prepare(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %cmp, label %land.lhs.true, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %land.lhs.true.if.end11_crit_edge, label %vb2_plane_size.exit

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

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
  %cmp4 = icmp ugt i32 %9, %11
  br i1 %cmp4, label %do.body, label %vb2_plane_size.exit.if.end11_crit_edge

vb2_plane_size.exit.if.end11_crit_edge:           ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.body:                                          ; preds = %vb2_plane_size.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %12 = load i32, ptr @uvc_dbg_param, align 4
  %and = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %3, i32 -1548
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %dev8 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev8, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end11:                                         ; preds = %vb2_plane_size.exit.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  %flags = getelementptr inbounds %struct.uvc_video_queue, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and12 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end17, label %if.end11.cleanup_crit_edge, !prof !37

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %state = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 2
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %state, align 8
  %error = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 3
  %20 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %error, align 4
  %call18 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #6
  %mem = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 4
  %21 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call18, ptr %mem, align 8
  %num_planes.i46 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %22 = ptrtoint ptr %num_planes.i46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_planes.i46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i47 = icmp eq i32 %23, 0
  br i1 %cmp.not.i47, label %vb2_plane_size.exit51, label %vb2_plane_size.exit51.thread

vb2_plane_size.exit51:                            ; preds = %if.end17
  %length = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 5
  %24 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %length, align 4
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp21.not = icmp eq i32 %26, 2
  br i1 %cmp21.not, label %vb2_plane_size.exit51.vb2_get_plane_payload.exit57_crit_edge, label %vb2_plane_size.exit51.if.then22_crit_edge

vb2_plane_size.exit51.if.then22_crit_edge:        ; preds = %vb2_plane_size.exit51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

vb2_plane_size.exit51.vb2_get_plane_payload.exit57_crit_edge: ; preds = %vb2_plane_size.exit51
  call void @__sanitizer_cov_trace_pc() #8
  br label %vb2_get_plane_payload.exit57

vb2_plane_size.exit51.thread:                     ; preds = %if.end17
  %length.i48 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %27 = ptrtoint ptr %length.i48 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length.i48, align 8
  %length64 = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 5
  %29 = ptrtoint ptr %length64 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %length64, align 4
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp21.not65 = icmp eq i32 %31, 2
  br i1 %cmp21.not65, label %if.then.i55, label %vb2_plane_size.exit51.thread.if.then22_crit_edge

vb2_plane_size.exit51.thread.if.then22_crit_edge: ; preds = %vb2_plane_size.exit51.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

if.then22:                                        ; preds = %vb2_plane_size.exit51.thread.if.then22_crit_edge, %vb2_plane_size.exit51.if.then22_crit_edge
  %bytesused = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 6
  %32 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %bytesused, align 8
  br label %cleanup

if.then.i55:                                      ; preds = %vb2_plane_size.exit51.thread
  call void @__sanitizer_cov_trace_pc() #8
  %bytesused.i54 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %33 = ptrtoint ptr %bytesused.i54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bytesused.i54, align 4
  br label %vb2_get_plane_payload.exit57

vb2_get_plane_payload.exit57:                     ; preds = %if.then.i55, %vb2_plane_size.exit51.vb2_get_plane_payload.exit57_crit_edge
  %retval.0.i56 = phi i32 [ %34, %if.then.i55 ], [ 0, %vb2_plane_size.exit51.vb2_get_plane_payload.exit57_crit_edge ]
  %bytesused24 = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 6
  %35 = ptrtoint ptr %bytesused24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i56, ptr %bytesused24, align 8
  br label %cleanup

cleanup:                                          ; preds = %vb2_get_plane_payload.exit57, %if.then22, %if.end11.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -19, %if.end11.cleanup_crit_edge ], [ 0, %vb2_get_plane_payload.exit57 ], [ 0, %if.then22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end88_crit_edge, label %land.lhs.true

entry.if.end88_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

land.lhs.true:                                    ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %6, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !39
  %7 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, ptrtoint (ptr @lockdep_recursion to i32)
  %13 = inttoptr i32 %add to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !40
  %16 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i112 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i112 to ptr
  %preempt_count.i.i113 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i113 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i113, align 4
  %sub.i = add i32 %19, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %land.rhs, label %land.lhs.true.if.end88_crit_edge

land.lhs.true.if.end88_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

land.rhs:                                         ; preds = %land.lhs.true
  %20 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i114 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i114 to ptr
  %preempt_count.i.i115 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i115 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i115, align 4
  %add.i116 = add i32 %23, 1
  store volatile i32 %add.i116, ptr %preempt_count.i.i115, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !41
  %24 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu, align 4
  %arrayidx45 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx45, align 4
  %add46 = add i32 %27, ptrtoint (ptr @hardirqs_enabled to i32)
  %28 = inttoptr i32 %add46 to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  %31 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i117 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i117 to ptr
  %preempt_count.i.i118 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i118 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i118, align 4
  %sub.i119 = add i32 %34, -1
  store volatile i32 %sub.i119, ptr %preempt_count.i.i118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool53.not = icmp eq i32 %30, 0
  br i1 %tobool53.not, label %land.rhs57, label %land.rhs.if.end88_crit_edge

land.rhs.if.end88_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

land.rhs57:                                       ; preds = %land.rhs
  %.b108 = load i1, ptr @uvc_stop_streaming.__already_done, align 1
  br i1 %.b108, label %land.rhs57.if.end88_crit_edge, label %if.then, !prof !37

land.rhs57.if.end88_crit_edge:                    ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then:                                          ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @uvc_stop_streaming.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 184, i32 noundef 9, ptr noundef null) #6
  br label %if.end88

if.end88:                                         ; preds = %if.then, %land.rhs57.if.end88_crit_edge, %land.rhs.if.end88_crit_edge, %land.lhs.true.if.end88_crit_edge, %entry.if.end88_crit_edge
  %35 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %36)
  %cmp.not = icmp eq i32 %36, 13
  br i1 %cmp.not, label %if.end88.if.end100_crit_edge, label %if.then98

if.end88.if.end100_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.then98:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1556
  tail call void @uvc_video_stop_streaming(ptr noundef %add.ptr.i) #6
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.end88.if.end100_crit_edge
  %irqlock = getelementptr inbounds %struct.uvc_video_queue, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %irqlock) #6
  %irqqueue.i = getelementptr inbounds %struct.uvc_video_queue, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %irqqueue.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %irqqueue.i, align 4
  %cmp.i.not9.i = icmp eq ptr %38, %irqqueue.i
  br i1 %cmp.i.not9.i, label %if.end100.uvc_queue_return_buffers.exit_crit_edge, label %if.end100.while.body.i_crit_edge

if.end100.while.body.i_crit_edge:                 ; preds = %if.end100
  br label %while.body.i

if.end100.uvc_queue_return_buffers.exit_crit_edge: ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %uvc_queue_return_buffers.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.end100.while.body.i_crit_edge
  %39 = phi ptr [ %50, %list_del.exit.i.while.body.i_crit_edge ], [ %38, %if.end100.while.body.i_crit_edge ]
  %add.ptr.i120 = getelementptr i8, ptr %39, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %39) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %39, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %state3.i = getelementptr i8, ptr %39, i32 8
  %48 = ptrtoint ptr %state3.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 5, ptr %state3.i, align 8
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i120, i32 noundef 6) #6
  %49 = ptrtoint ptr %irqqueue.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %irqqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %50, %irqqueue.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.uvc_queue_return_buffers.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

list_del.exit.i.uvc_queue_return_buffers.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uvc_queue_return_buffers.exit

uvc_queue_return_buffers.exit:                    ; preds = %list_del.exit.i.uvc_queue_return_buffers.exit_crit_edge, %if.end100.uvc_queue_return_buffers.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %irqlock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %irqlock = getelementptr inbounds %struct.uvc_video_queue, ptr %3, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #6
  %flags8 = getelementptr inbounds %struct.uvc_video_queue, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags8, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else, !prof !37

if.then:                                          ; preds = %entry
  %ref = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #6
  %6 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %ref, align 4
  %queue12 = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 1
  %irqqueue = getelementptr inbounds %struct.uvc_video_queue, ptr %3, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.uvc_video_queue, ptr %3, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue12, ptr noundef %8, ptr noundef %irqqueue) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %queue12, ptr %prev.i, align 4
  %10 = ptrtoint ptr %queue12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %irqqueue, ptr %queue12, align 4
  %prev3.i.i = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %queue12, ptr %8, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.uvc_buffer, ptr %vb, i32 0, i32 2
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %state, align 8
  tail call void @vb2_buffer_done(ptr noundef %vb, i32 noundef 6) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i.i, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call5) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_video_stop_streaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_buffer_finish(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 8
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_priv.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -1556
  tail call void @uvc_video_clock_update(ptr noundef %add.ptr.i, ptr noundef %vb, ptr noundef %vb) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1556
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end89_crit_edge, label %land.lhs.true

entry.if.end89_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

land.lhs.true:                                    ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %6, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !43
  %7 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, ptrtoint (ptr @lockdep_recursion to i32)
  %13 = inttoptr i32 %add to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !44
  %16 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i116 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i116 to ptr
  %preempt_count.i.i117 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i117 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i117, align 4
  %sub.i = add i32 %19, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool22.not = icmp eq i32 %15, 0
  br i1 %tobool22.not, label %land.rhs, label %land.lhs.true.if.end89_crit_edge

land.lhs.true.if.end89_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

land.rhs:                                         ; preds = %land.lhs.true
  %20 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i118 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i118 to ptr
  %preempt_count.i.i119 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i119 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i119, align 4
  %add.i120 = add i32 %23, 1
  store volatile i32 %add.i120, ptr %preempt_count.i.i119, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !45
  %24 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu, align 4
  %arrayidx46 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx46, align 4
  %add47 = add i32 %27, ptrtoint (ptr @hardirqs_enabled to i32)
  %28 = inttoptr i32 %add47 to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !46
  %31 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i121 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i121 to ptr
  %preempt_count.i.i122 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i122 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i122, align 4
  %sub.i123 = add i32 %34, -1
  store volatile i32 %sub.i123, ptr %preempt_count.i.i122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool54.not = icmp eq i32 %30, 0
  br i1 %tobool54.not, label %land.rhs58, label %land.rhs.if.end89_crit_edge

land.rhs.if.end89_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

land.rhs58:                                       ; preds = %land.rhs
  %.b112 = load i1, ptr @uvc_start_streaming.__already_done, align 1
  br i1 %.b112, label %land.rhs58.if.end89_crit_edge, label %if.then, !prof !37

land.rhs58.if.end89_crit_edge:                    ; preds = %land.rhs58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.then:                                          ; preds = %land.rhs58
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @uvc_start_streaming.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 165, i32 noundef 9, ptr noundef null) #6
  br label %if.end89

if.end89:                                         ; preds = %if.then, %land.rhs58.if.end89_crit_edge, %land.rhs.if.end89_crit_edge, %land.lhs.true.if.end89_crit_edge, %entry.if.end89_crit_edge
  %buf_used = getelementptr inbounds %struct.uvc_video_queue, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %buf_used to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %buf_used, align 4
  %call99 = tail call i32 @uvc_video_start_streaming(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp = icmp eq i32 %call99, 0
  br i1 %cmp, label %if.end89.cleanup_crit_edge, label %if.end101

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end101:                                        ; preds = %if.end89
  %irqlock = getelementptr inbounds %struct.uvc_video_queue, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %irqlock) #6
  %irqqueue.i = getelementptr inbounds %struct.uvc_video_queue, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %irqqueue.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %irqqueue.i, align 4
  %cmp.i.not9.i = icmp eq ptr %37, %irqqueue.i
  br i1 %cmp.i.not9.i, label %if.end101.uvc_queue_return_buffers.exit_crit_edge, label %if.end101.while.body.i_crit_edge

if.end101.while.body.i_crit_edge:                 ; preds = %if.end101
  br label %while.body.i

if.end101.uvc_queue_return_buffers.exit_crit_edge: ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %uvc_queue_return_buffers.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.end101.while.body.i_crit_edge
  %38 = phi ptr [ %49, %list_del.exit.i.while.body.i_crit_edge ], [ %37, %if.end101.while.body.i_crit_edge ]
  %add.ptr.i124 = getelementptr i8, ptr %38, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %38) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %38, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %state3.i = getelementptr i8, ptr %38, i32 8
  %47 = ptrtoint ptr %state3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %state3.i, align 8
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i124, i32 noundef 3) #6
  %48 = ptrtoint ptr %irqqueue.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %irqqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %49, %irqqueue.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.uvc_queue_return_buffers.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

list_del.exit.i.uvc_queue_return_buffers.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uvc_queue_return_buffers.exit

uvc_queue_return_buffers.exit:                    ; preds = %list_del.exit.i.uvc_queue_return_buffers.exit_crit_edge, %if.end101.uvc_queue_return_buffers.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %irqlock) #6
  br label %cleanup

cleanup:                                          ; preds = %uvc_queue_return_buffers.exit, %if.end89.cleanup_crit_edge
  ret i32 %call99
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_video_clock_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_video_start_streaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !24}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @uvc_queue_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/uvc/uvc_queue.c", i32 242, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @uvc_queue_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/uvc/uvc_queue.c", i32 243, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @uvc_meta_queue_qops, !7, !"uvc_meta_queue_qops", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/uvc/uvc_queue.c", i32 205, i32 29}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/uvc/uvc_queue.c", i32 106, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @uvc_buffer_prepare._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @uvc_buffer_prepare._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/uvc/uvc_queue.c", i32 184, i32 2}
!18 = !{ptr @uvc_queue_qops, !19, !"uvc_queue_qops", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/uvc/uvc_queue.c", i32 194, i32 29}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/uvc/uvc_queue.c", i32 165, i32 2}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2148219439}
!36 = !{i64 2148133903, i64 2148133935, i64 2148133964, i64 2148133998, i64 2148134029, i64 2148134052}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2149962527}
!39 = !{i64 2157027620}
!40 = !{i64 2157032554}
!41 = !{i64 2157054238}
!42 = !{i64 2157059132}
!43 = !{i64 2156760895}
!44 = !{i64 2156765829}
!45 = !{i64 2156787513}
!46 = !{i64 2156792407}
