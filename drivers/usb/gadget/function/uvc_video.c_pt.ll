; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/uvc_video.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/uvc_video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.uvc_video = type { ptr, ptr, %struct.work_struct, i8, i32, i32, i32, i32, %struct.mutex, i32, i32, ptr, %struct.list_head, %struct.spinlock, i32, ptr, i32, i32, %struct.uvc_video_queue, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.uvc_video_queue = type { %struct.vb2_queue, i32, i32, i32, i8, %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uvc_device = type { %struct.video_device, %struct.v4l2_device, i32, %struct.usb_function, %struct.uvc_video, i8, %struct.anon.98, i32, ptr, ptr, ptr, i32, i32, i8 }
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
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.anon.98 = type { ptr, ptr, ptr, ptr, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.uvc_request = type { ptr, ptr, ptr, %struct.sg_table, [12 x i8] }
%struct.sg_table = type { ptr, i32, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.uvc_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.80, i32 }
%union.anon.80 = type { i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.timespec64 = type { i64, i32 }

@uvcg_video_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 440, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: Video enable failed, device is uninitialized.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uvcg_video_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/usb/gadget/function/uvc_video.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uvcg_video_enable._entry_ptr = internal global ptr @uvcg_video_enable._entry, section ".printk_index", align 4
@uvcg_video_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&video->req_lock\00", [47 x i8] zeroinitializer }, align 32
@uvcg_video_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&video->pump)\00", [32 x i8] zeroinitializer }, align 32
@uvc_video_complete.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 64, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb_f_uvc\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uvc_video_complete\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: VS request cancelled.\0A\00", [37 x i8] zeroinitializer }, align 32
@uvc_video_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 263, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: VS request completed with status %d.\0A\00", [54 x i8] zeroinitializer }, align 32
@uvc_video_complete._entry_ptr = internal global ptr @uvc_video_complete._entry, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@uvcg_video_ep_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 229, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Failed to queue request (%d).\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uvcg_video_ep_queue\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@uvcg_video_ep_queue._entry_ptr = internal global ptr @uvcg_video_ep_queue._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 439, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 483, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 484, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 256, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 261, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [43 x i8] c"../drivers/usb/gadget/function/uvc_video.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 228, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @uvc_video_complete._entry, ptr @uvc_video_complete._entry_ptr, ptr @uvcg_video_enable._entry, ptr @uvcg_video_enable._entry_ptr, ptr @uvcg_video_ep_queue._entry, ptr @uvcg_video_ep_queue._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @uvcg_video_init.__key, ptr @.str.5, ptr @uvcg_video_init.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_video_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_video_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_video_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_video_ep_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvcg_video_enable(ptr noundef %video, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ep = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 1
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %video, align 4
  %func = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 3
  %config = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %func, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %11) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.then3, label %if.end18

if.then3:                                         ; preds = %if.end
  %pump = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 2
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %pump) #6
  %queue = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 18
  tail call void @uvcg_queue_cancel(ptr noundef %queue, i32 noundef 0) #6
  %uvc_num_requests = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 9
  %12 = ptrtoint ptr %uvc_num_requests to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %uvc_num_requests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp465.not = icmp eq i32 %13, 0
  br i1 %cmp465.not, label %if.then3.for.end_crit_edge, label %for.body.lr.ph

if.then3.for.end_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then3
  %ureq = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %ureq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ureq, align 4
  %tobool5.not = icmp eq ptr %15, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr %struct.uvc_request, ptr %15, i32 %i.066
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %land.lhs.true.for.inc_crit_edge, label %if.then8

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep, align 4
  %call13 = tail call i32 @usb_ep_dequeue(ptr noundef %19, ptr noundef nonnull %17) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.066, 1
  %20 = ptrtoint ptr %uvc_num_requests to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uvc_num_requests, align 4
  %cmp4 = icmp ult i32 %inc, %21
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then3.for.end_crit_edge
  tail call fastcc void @uvc_video_free_requests(ptr noundef %video)
  %call17 = tail call i32 @uvcg_queue_enable(ptr noundef %queue, i32 noundef 0) #6
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %queue19 = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 18
  %call20 = tail call i32 @uvcg_queue_enable(ptr noundef %queue19, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %req_size1.i = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 10
  %22 = ptrtoint ptr %req_size1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %req_size1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %do.end9.i, label %do.body4.i, !prof !38

do.body4.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/uvc_video.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 311, 0\0A.popsection", ""() #6, !srcloc !39
  unreachable

do.end9.i:                                        ; preds = %if.end23
  %24 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ep, align 4
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 7)
  %bf.load.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i = lshr i56 %bf.load.i, 40
  %bf.cast.i = trunc i56 %bf.lshr.i to i32
  %27 = trunc i56 %bf.load.i to i32
  %28 = lshr i32 %27, 1
  %bf.cast13.i = and i32 %28, 31
  %29 = tail call i32 @llvm.umax.i32(i32 %bf.cast13.i, i32 1) #6
  %30 = lshr i32 %27, 6
  %bf.cast18.i = and i32 %30, 3
  %mul.i = mul nuw nsw i32 %bf.cast18.i, %bf.cast.i
  %mul19.i = mul nuw nsw i32 %mul.i, %29
  %uvc_num_requests.i = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 9
  %31 = ptrtoint ptr %uvc_num_requests.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %uvc_num_requests.i, align 4
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 36) #6
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !40

kcalloc.exit.thread.i:                            ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %ureq123.i = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 11
  %35 = ptrtoint ptr %ureq123.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %ureq123.i, align 4
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %do.end9.i
  %36 = extractvalue { i32, i1 } %33, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 3520) #10
  %ureq.i = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 11
  %37 = ptrtoint ptr %ureq.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call8.i.i.i, ptr %ureq.i, align 4
  %cmp21.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp21.i, label %if.end7.i.i.i.cleanup_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %38 = ptrtoint ptr %uvc_num_requests.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %uvc_num_requests.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp25125.not.i = icmp eq i32 %39, 0
  br i1 %cmp25125.not.i, label %for.cond.preheader.i.if.end27_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end27_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %req_free.i = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 12
  %prev.i.i = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 12, i32 1
  %sub69.i = add nuw nsw i32 %mul19.i, 4083
  %div119.i = lshr i32 %sub69.i, 12
  %add70.i = add nuw nsw i32 %div119.i, 2
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %list_add_tail.exit.i.if.end8.i.i_crit_edge, %for.body.lr.ph.i
  %i.0126.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %list_add_tail.exit.i.if.end8.i.i_crit_edge ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul19.i, i32 noundef 3264) #10
  %40 = ptrtoint ptr %ureq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ureq.i, align 4
  %req_buffer.i = getelementptr %struct.uvc_request, ptr %41, i32 %i.0126.i, i32 1
  %42 = ptrtoint ptr %req_buffer.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call9.i.i, ptr %req_buffer.i, align 4
  %43 = load ptr, ptr %ureq.i, align 4
  %req_buffer30.i = getelementptr %struct.uvc_request, ptr %43, i32 %i.0126.i, i32 1
  %44 = ptrtoint ptr %req_buffer30.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %req_buffer30.i, align 4
  %cmp31.i = icmp eq ptr %45, null
  br i1 %cmp31.i, label %if.end8.i.i.error.i_crit_edge, label %if.end33.i

if.end8.i.i.error.i_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error.i

if.end33.i:                                       ; preds = %if.end8.i.i
  %46 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ep, align 4
  %call35.i = tail call ptr @usb_ep_alloc_request(ptr noundef %47, i32 noundef 3264) #6
  %48 = ptrtoint ptr %ureq.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ureq.i, align 4
  %arrayidx37.i = getelementptr %struct.uvc_request, ptr %49, i32 %i.0126.i
  %50 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call35.i, ptr %arrayidx37.i, align 4
  %51 = load ptr, ptr %ureq.i, align 4
  %arrayidx39.i = getelementptr %struct.uvc_request, ptr %51, i32 %i.0126.i
  %52 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx39.i, align 4
  %cmp41.i = icmp eq ptr %53, null
  br i1 %cmp41.i, label %if.end33.i.error.i_crit_edge, label %if.end43.i

if.end33.i.error.i_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error.i

if.end43.i:                                       ; preds = %if.end33.i
  %req_buffer46.i = getelementptr %struct.uvc_request, ptr %51, i32 %i.0126.i, i32 1
  %54 = ptrtoint ptr %req_buffer46.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %req_buffer46.i, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %53, align 4
  %57 = ptrtoint ptr %ureq.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ureq.i, align 4
  %arrayidx51.i = getelementptr %struct.uvc_request, ptr %58, i32 %i.0126.i
  %59 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx51.i, align 4
  %length.i = getelementptr inbounds %struct.usb_request, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %length.i, align 4
  %62 = load ptr, ptr %ureq.i, align 4
  %arrayidx54.i = getelementptr %struct.uvc_request, ptr %62, i32 %i.0126.i
  %63 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx54.i, align 4
  %complete.i = getelementptr inbounds %struct.usb_request, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @uvc_video_complete, ptr %complete.i, align 4
  %66 = load ptr, ptr %ureq.i, align 4
  %arrayidx57.i = getelementptr %struct.uvc_request, ptr %66, i32 %i.0126.i
  %67 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx57.i, align 4
  %context.i = getelementptr inbounds %struct.usb_request, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx57.i, ptr %context.i, align 4
  %70 = load ptr, ptr %ureq.i, align 4
  %video63.i = getelementptr %struct.uvc_request, ptr %70, i32 %i.0126.i, i32 2
  %71 = ptrtoint ptr %video63.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %video, ptr %video63.i, align 4
  %72 = load ptr, ptr %ureq.i, align 4
  %arrayidx65.i = getelementptr %struct.uvc_request, ptr %72, i32 %i.0126.i
  %73 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx65.i, align 4
  %list.i = getelementptr inbounds %struct.usb_request, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %76, ptr noundef %req_free.i) #6
  br i1 %call.i.i.i, label %if.end.i.i121.i, label %if.end43.i.list_add_tail.exit.i_crit_edge

if.end43.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i

if.end.i.i121.i:                                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %list.i, ptr %prev.i.i, align 4
  %78 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %req_free.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.usb_request, ptr %74, i32 0, i32 9, i32 1
  %79 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev3.i.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %list.i, ptr %76, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i121.i, %if.end43.i.list_add_tail.exit.i_crit_edge
  %81 = ptrtoint ptr %ureq.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ureq.i, align 4
  %sgt.i = getelementptr %struct.uvc_request, ptr %82, i32 %i.0126.i, i32 3
  %call71.i = tail call i32 @sg_alloc_table(ptr noundef %sgt.i, i32 noundef %add70.i, i32 noundef 3264) #6
  %inc.i = add nuw i32 %i.0126.i, 1
  %83 = ptrtoint ptr %uvc_num_requests.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %uvc_num_requests.i, align 4
  %cmp25.i = icmp ult i32 %inc.i, %84
  br i1 %cmp25.i, label %list_add_tail.exit.i.if.end8.i.i_crit_edge, label %list_add_tail.exit.i.if.end27_crit_edge

list_add_tail.exit.i.if.end27_crit_edge:          ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

list_add_tail.exit.i.if.end8.i.i_crit_edge:       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i

error.i:                                          ; preds = %if.end33.i.error.i_crit_edge, %if.end8.i.i.error.i_crit_edge
  tail call fastcc void @uvc_video_free_requests(ptr noundef %video) #6
  br label %cleanup

if.end27:                                         ; preds = %list_add_tail.exit.i.if.end27_crit_edge, %for.cond.preheader.i.if.end27_crit_edge
  %85 = ptrtoint ptr %req_size1.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %mul19.i, ptr %req_size1.i, align 4
  %max_payload_size = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 17
  %86 = ptrtoint ptr %max_payload_size to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %max_payload_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool28.not = icmp eq i32 %87, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %payload_size = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 16
  %88 = ptrtoint ptr %payload_size to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %payload_size, align 4
  br label %if.end33

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %use_sg = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 18, i32 4
  %89 = ptrtoint ptr %use_sg to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %use_sg, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool31.not = icmp eq i8 %90, 0
  %cond = select i1 %tobool31.not, ptr @uvc_video_encode_isoc, ptr @uvc_video_encode_isoc_sg
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then29
  %uvc_video_encode_bulk.sink = phi ptr [ %cond, %if.else ], [ @uvc_video_encode_bulk, %if.then29 ]
  %91 = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 15
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %uvc_video_encode_bulk.sink, ptr %91, align 4
  %req_int_count = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 14
  %93 = ptrtoint ptr %req_int_count to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %req_int_count, align 4
  %pump34 = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %94 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %94, ptr noundef %pump34) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %error.i, %if.end7.i.i.i.cleanup_crit_edge, %kcalloc.exit.thread.i, %if.end18.cleanup_crit_edge, %for.end, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end33 ], [ 0, %for.end ], [ %call20, %if.end18.cleanup_crit_edge ], [ -12, %error.i ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvcg_queue_cancel(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uvc_video_free_requests(ptr noundef %video) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ureq = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 11
  %0 = ptrtoint ptr %ureq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ureq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %for.cond.preheader

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

for.cond.preheader:                               ; preds = %entry
  %uvc_num_requests = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 9
  %2 = ptrtoint ptr %uvc_num_requests to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uvc_num_requests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ep = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.02 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %ureq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ureq, align 4
  %sgt = getelementptr %struct.uvc_request, ptr %5, i32 %i.02, i32 3
  tail call void @sg_free_table(ptr noundef %sgt) #6
  %6 = ptrtoint ptr %ureq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ureq, align 4
  %arrayidx3 = getelementptr %struct.uvc_request, ptr %7, i32 %i.02
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %for.body.if.end_crit_edge, label %if.then5

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep, align 4
  tail call void @usb_ep_free_request(ptr noundef %11, ptr noundef nonnull %9) #6
  %12 = ptrtoint ptr %ureq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ureq, align 4
  %arrayidx10 = getelementptr %struct.uvc_request, ptr %13, i32 %i.02
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %for.body.if.end_crit_edge
  %15 = ptrtoint ptr %ureq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ureq, align 4
  %req_buffer = getelementptr %struct.uvc_request, ptr %16, i32 %i.02, i32 1
  %17 = ptrtoint ptr %req_buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %req_buffer, align 4
  %tobool14.not = icmp eq ptr %18, null
  br i1 %tobool14.not, label %if.end.for.inc_crit_edge, label %if.then15

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %18) #6
  %19 = ptrtoint ptr %ureq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ureq, align 4
  %req_buffer21 = getelementptr %struct.uvc_request, ptr %20, i32 %i.02, i32 1
  %21 = ptrtoint ptr %req_buffer21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %req_buffer21, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.02, 1
  %22 = ptrtoint ptr %uvc_num_requests to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %uvc_num_requests, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %24 = ptrtoint ptr %ureq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ureq, align 4
  tail call void @kfree(ptr noundef %25) #6
  %26 = ptrtoint ptr %ureq to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %ureq, align 4
  br label %if.end25

if.end25:                                         ; preds = %for.end, %entry.if.end25_crit_edge
  %req_free = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 12
  %27 = ptrtoint ptr %req_free to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %req_free, ptr %req_free, align 4
  %prev.i = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 12, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %req_free, ptr %prev.i, align 4
  %req_size = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 10
  %29 = ptrtoint ptr %req_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %req_size, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_queue_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_video_encode_bulk(ptr nocapture noundef %req, ptr noundef %video, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %req_size = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 10
  %2 = ptrtoint ptr %req_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req_size, align 4
  %payload_size = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 16
  %4 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %payload_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @uvc_video_encode_header(ptr noundef %video, ptr noundef %buf, ptr noundef %1, i32 noundef %3)
  %6 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %payload_size, align 4
  %add = add i32 %7, %call
  store i32 %add, ptr %payload_size, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %call
  %sub = sub i32 %3, %call
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.0 = phi i32 [ %sub, %if.then ], [ %3, %entry.if.end_crit_edge ]
  %mem.0 = phi ptr [ %add.ptr, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %max_payload_size = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 17
  %8 = ptrtoint ptr %max_payload_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_payload_size, align 4
  %10 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %payload_size, align 4
  %sub4 = sub i32 %9, %11
  %12 = tail call i32 @llvm.smin.i32(i32 %sub4, i32 %len.0)
  %mem2.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 3
  %13 = ptrtoint ptr %mem2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mem2.i, align 4
  %buf_used.i = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 18, i32 3
  %15 = ptrtoint ptr %buf_used.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_used.i, align 4
  %bytesused.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 8
  %17 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bytesused.i, align 8
  %sub.i = sub i32 %18, %16
  %19 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %12) #6
  %add.ptr.i = getelementptr i8, ptr %14, i32 %16
  %20 = call ptr @memcpy(ptr %mem.0, ptr %add.ptr.i, i32 %19)
  %21 = ptrtoint ptr %buf_used.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_used.i, align 4
  %add.i = add i32 %22, %19
  store i32 %add.i, ptr %buf_used.i, align 4
  %23 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %payload_size, align 4
  %add8 = add i32 %24, %19
  store i32 %add8, ptr %payload_size, align 4
  %sub9.neg = sub i32 %19, %12
  %25 = ptrtoint ptr %req_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %req_size, align 4
  %sub11 = add i32 %sub9.neg, %26
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %27 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub11, ptr %length, align 4
  %28 = load i32, ptr %payload_size, align 4
  %29 = ptrtoint ptr %max_payload_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_payload_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp14 = icmp eq i32 %28, %30
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %31 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load = load i32, ptr %zero, align 4
  %bf.shl = select i1 %cmp14, i32 8192, i32 0
  %bf.clear = and i32 %bf.load, -8193
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %zero, align 4
  %32 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bytesused.i, align 8
  %34 = ptrtoint ptr %buf_used.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf_used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp15 = icmp eq i32 %33, %35
  br i1 %cmp15, label %if.then17, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %queue = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 18
  %36 = ptrtoint ptr %buf_used.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %buf_used.i, align 4
  %state = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 2
  %37 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %state, align 8
  %call21 = tail call ptr @uvcg_queue_next_buffer(ptr noundef %queue, ptr noundef %buf) #6
  %fid = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 19
  %38 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fid, align 4
  %xor = xor i32 %39, 1
  store i32 %xor, ptr %fid, align 4
  %40 = ptrtoint ptr %payload_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %payload_size, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end.if.end23_crit_edge
  %41 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %payload_size, align 4
  %43 = ptrtoint ptr %max_payload_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_payload_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp26 = icmp eq i32 %42, %44
  br i1 %cmp26, label %if.end23.if.then33_crit_edge, label %lor.lhs.false

if.end23.if.then33_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

lor.lhs.false:                                    ; preds = %if.end23
  %45 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bytesused.i, align 8
  %47 = ptrtoint ptr %buf_used.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buf_used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp31 = icmp eq i32 %46, %48
  br i1 %cmp31, label %lor.lhs.false.if.then33_crit_edge, label %lor.lhs.false.if.end35_crit_edge

lor.lhs.false.if.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

lor.lhs.false.if.then33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

if.then33:                                        ; preds = %lor.lhs.false.if.then33_crit_edge, %if.end23.if.then33_crit_edge
  %49 = ptrtoint ptr %payload_size to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %payload_size, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %lor.lhs.false.if.end35_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_video_encode_isoc_sg(ptr nocapture noundef %req, ptr noundef %video, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bytesused = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 8
  %0 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytesused, align 8
  %queue = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 18
  %buf_used = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 18, i32 3
  %2 = ptrtoint ptr %buf_used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_used, align 4
  %sub = sub i32 %1, %3
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  %req_size = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 10
  %6 = ptrtoint ptr %req_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req_size, align 4
  %sgt = getelementptr inbounds %struct.uvc_request, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sgt, align 4
  %nents = getelementptr inbounds %struct.uvc_request, ptr %5, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nents, align 4
  tail call void @sg_init_table(ptr noundef %9, i32 noundef %11) #6
  %header = getelementptr inbounds %struct.uvc_request, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %req_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %req_size, align 4
  %call = tail call fastcc i32 @uvc_video_encode_header(ptr noundef %video, ptr noundef %buf, ptr noundef %header, i32 noundef %13)
  %14 = ptrtoint ptr %header to i32
  %cmp.i = icmp ugt ptr %header, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.do.body5.i_crit_edge, !prof !38

entry.do.body5.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %15 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %15, %header
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !38

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %14, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %16, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !40

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %entry.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #6, !srcloc !42
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %17, i32 %shr.i
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %9, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !38

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !43
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !38

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !srcloc !44
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %14, 4095
  %and.i.i.i = and i32 %19, 3
  %or.i.i.i = or i32 %and.i.i.i, %20
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i.i.i, ptr %9, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 1
  %22 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 2
  %23 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call, ptr %length.i.i, align 4
  %sub5 = sub i32 %7, %call
  %24 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %sub5)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub5)
  %cmp6.not = icmp ugt i32 %sub, %sub5
  br i1 %cmp6.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %24, %call
  br label %cond.end

cond.false:                                       ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %req_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %req_size, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %26, %cond.false ]
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %27 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond, ptr %length, align 4
  %call8 = tail call ptr @sg_next(ptr noundef %9) #6
  %28 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp12131 = icmp eq i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not132 = icmp eq i32 %24, 0
  %or.cond133 = select i1 %cmp12131, i1 true, i1 %tobool.not132
  br i1 %or.cond133, label %cond.end.for.end_crit_edge, label %lor.lhs.false.lr.ph

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

lor.lhs.false.lr.ph:                              ; preds = %cond.end
  %sg13 = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 5
  %offset = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 6
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end35.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %i.0136 = phi i32 [ 0, %lor.lhs.false.lr.ph ], [ %inc, %if.end35.lor.lhs.false_crit_edge ]
  %len.1135 = phi i32 [ %24, %lor.lhs.false.lr.ph ], [ %sub36, %if.end35.lor.lhs.false_crit_edge ]
  %iter.0134 = phi ptr [ %call8, %lor.lhs.false.lr.ph ], [ %call37, %if.end35.lor.lhs.false_crit_edge ]
  %30 = ptrtoint ptr %sg13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sg13, align 4
  %tobool14.not = icmp eq ptr %31, null
  br i1 %tobool14.not, label %lor.lhs.false.for.end_crit_edge, label %if.end16

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end16:                                         ; preds = %lor.lhs.false
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_length, align 4
  %34 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset, align 8
  %sub18 = sub i32 %33, %35
  %36 = tail call i32 @llvm.umin.i32(i32 %len.1135, i32 %sub18)
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %31, align 4
  %and.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !38

do.body2.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !45
  unreachable

sg_page.exit:                                     ; preds = %if.end16
  %39 = ptrtoint ptr %iter.0134 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iter.0134, align 4
  %and.i.i.i124 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i124)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i124, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !38

do.body19.i.i:                                    ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !srcloc !44
  unreachable

sg_set_page.exit:                                 ; preds = %sg_page.exit
  %and.i123 = and i32 %38, -4
  %and.i.i125 = and i32 %40, 3
  %or.i.i = or i32 %and.i.i125, %and.i123
  %41 = ptrtoint ptr %iter.0134 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i.i, ptr %iter.0134, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %iter.0134, i32 0, i32 1
  %42 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %35, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %iter.0134, i32 0, i32 2
  %43 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %36, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub18, i32 %len.1135)
  %cmp27.not = icmp ugt i32 %sub18, %len.1135
  br i1 %cmp27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %offset, align 8
  %45 = ptrtoint ptr %sg13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sg13, align 4
  %call31 = tail call ptr @sg_next(ptr noundef %46) #6
  %47 = ptrtoint ptr %sg13 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call31, ptr %sg13, align 4
  br label %if.end35

if.else:                                          ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset, align 8
  %add34 = add i32 %49, %36
  store i32 %add34, ptr %offset, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then28
  %sub36 = sub i32 %len.1135, %36
  %inc = add nuw i32 %i.0136, 1
  %call37 = tail call ptr @sg_next(ptr noundef %iter.0134) #6
  %50 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nents, align 4
  %sub11 = add i32 %51, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %sub11)
  %cmp12 = icmp uge i32 %inc, %sub11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub36)
  %tobool.not = icmp eq i32 %sub36, 0
  %or.cond = select i1 %cmp12, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end35.for.end_crit_edge, label %if.end35.lor.lhs.false_crit_edge

if.end35.lor.lhs.false_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end35.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %cond.end.for.end_crit_edge
  %len.1.lcssa = phi i32 [ %24, %cond.end.for.end_crit_edge ], [ %len.1135, %lor.lhs.false.for.end_crit_edge ], [ %sub36, %if.end35.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %cond.end.for.end_crit_edge ], [ %i.0136, %lor.lhs.false.for.end_crit_edge ], [ %inc, %if.end35.for.end_crit_edge ]
  %52 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %req, align 4
  %53 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sgt, align 4
  %sg41 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 3
  %55 = ptrtoint ptr %sg41 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %sg41, align 4
  %add42 = add i32 %i.0.lcssa, 1
  %num_sgs = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 4
  %56 = ptrtoint ptr %num_sgs to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add42, ptr %num_sgs, align 4
  %57 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length, align 4
  %sub44 = sub i32 %58, %len.1.lcssa
  store i32 %sub44, ptr %length, align 4
  %sub46 = sub i32 %sub44, %call
  %59 = ptrtoint ptr %buf_used to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %buf_used, align 4
  %add49 = add i32 %60, %sub46
  store i32 %add49, ptr %buf_used, align 4
  %61 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bytesused, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %add49)
  %cmp53 = icmp eq i32 %62, %add49
  br i1 %cmp53, label %for.end.if.then57_crit_edge, label %lor.lhs.false54

for.end.if.then57_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

lor.lhs.false54:                                  ; preds = %for.end
  %sg55 = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 5
  %63 = ptrtoint ptr %sg55 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sg55, align 4
  %tobool56.not = icmp eq ptr %64, null
  br i1 %tobool56.not, label %lor.lhs.false54.if.then57_crit_edge, label %lor.lhs.false54.if.end63_crit_edge

lor.lhs.false54.if.end63_crit_edge:               ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

lor.lhs.false54.if.then57_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

if.then57:                                        ; preds = %lor.lhs.false54.if.then57_crit_edge, %for.end.if.then57_crit_edge
  %65 = ptrtoint ptr %buf_used to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %buf_used, align 4
  %state = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 2
  %66 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 3, ptr %state, align 8
  %offset60 = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 6
  %67 = ptrtoint ptr %offset60 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %offset60, align 8
  %call62 = tail call ptr @uvcg_queue_next_buffer(ptr noundef %queue, ptr noundef %buf) #6
  %fid = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 19
  %68 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fid, align 4
  %xor = xor i32 %69, 1
  store i32 %xor, ptr %fid, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %lor.lhs.false54.if.end63_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_video_encode_isoc(ptr nocapture noundef %req, ptr noundef %video, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %req_size = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 10
  %2 = ptrtoint ptr %req_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req_size, align 4
  %call = tail call fastcc i32 @uvc_video_encode_header(ptr noundef %video, ptr noundef %buf, ptr noundef %1, i32 noundef %3)
  %add.ptr = getelementptr i8, ptr %1, i32 %call
  %sub = sub i32 %3, %call
  %mem2.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 3
  %4 = ptrtoint ptr %mem2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem2.i, align 4
  %buf_used.i = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 18, i32 3
  %6 = ptrtoint ptr %buf_used.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_used.i, align 4
  %bytesused.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 8
  %8 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytesused.i, align 8
  %sub.i = sub i32 %9, %7
  %10 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %sub) #6
  %add.ptr.i = getelementptr i8, ptr %5, i32 %7
  %11 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr.i, i32 %10)
  %12 = ptrtoint ptr %buf_used.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_used.i, align 4
  %add.i = add i32 %13, %10
  store i32 %add.i, ptr %buf_used.i, align 4
  %sub3.neg = sub i32 %10, %sub
  %14 = ptrtoint ptr %req_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %req_size, align 4
  %sub5 = add i32 %sub3.neg, %15
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %16 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub5, ptr %length, align 4
  %17 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bytesused.i, align 8
  %19 = load i32, ptr %buf_used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %19)
  %cmp = icmp eq i32 %18, %19
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %queue = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 18
  %20 = ptrtoint ptr %buf_used.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %buf_used.i, align 4
  %state = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 2
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %state, align 8
  %call9 = tail call ptr @uvcg_queue_next_buffer(ptr noundef %queue, ptr noundef %buf) #6
  %fid = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 19
  %22 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fid, align 4
  %xor = xor i32 %23, 1
  store i32 %xor, ptr %fid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvcg_video_init(ptr noundef %video, ptr noundef %uvc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %req_free = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 12
  %0 = ptrtoint ptr %req_free to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %req_free, ptr %req_free, align 4
  %prev.i = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 12, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %req_free, ptr %prev.i, align 4
  %req_lock = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %req_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @uvcg_video_init.__key, i16 noundef signext 3) #6
  %pump = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 2
  tail call void @__init_work(ptr noundef %pump, i32 noundef 0) #6
  %2 = ptrtoint ptr %pump to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %pump, align 4
  %lockdep_map = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @uvcg_video_init.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry5 = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i25 = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 2, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i25 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry5, ptr %prev.i25, align 4
  %func = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @uvcg_video_pump, ptr %func, align 4
  %6 = ptrtoint ptr %video to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %uvc, ptr %video, align 4
  %fcc = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 4
  %7 = ptrtoint ptr %fcc to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1448695129, ptr %fcc, align 4
  %bpp = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 3
  %8 = ptrtoint ptr %bpp to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %bpp, align 4
  %width = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 5
  %9 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 320, ptr %width, align 4
  %height = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 6
  %10 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 240, ptr %height, align 4
  %imagesize = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 7
  %11 = ptrtoint ptr %imagesize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 153600, ptr %imagesize, align 4
  %queue = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 18
  %v4l2_dev = getelementptr inbounds %struct.uvc_device, ptr %uvc, i32 0, i32 1
  %12 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %v4l2_dev, align 8
  %parent = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  %mutex = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 8
  %call9 = tail call i32 @uvcg_queue_init(ptr noundef %queue, ptr noundef %15, i32 noundef 2, ptr noundef %mutex) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvcg_video_pump(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %queue1 = getelementptr i8, ptr %work, i32 236
  %ep = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %enabled130 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %enabled130 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled130, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not131 = icmp eq i8 %3, 0
  br i1 %tobool.not131, label %entry.cleanup_crit_edge, label %do.body2.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body2.lr.ph:                                   ; preds = %entry
  %req_lock = getelementptr i8, ptr %work, i32 176
  %req_free = getelementptr i8, ptr %work, i32 168
  %irqlock = getelementptr i8, ptr %work, i32 764
  %encode = getelementptr i8, ptr %work, i32 224
  %req_int_count = getelementptr i8, ptr %work, i32 220
  %uvc_num_requests = getelementptr i8, ptr %work, i32 156
  br label %do.body2

do.body2:                                         ; preds = %if.end53.do.body2_crit_edge, %do.body2.lr.ph
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #6
  %4 = ptrtoint ptr %req_free to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %req_free, align 4
  %cmp.i.not = icmp eq ptr %5, %req_free
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call4) #6
  br label %cleanup

if.end:                                           ; preds = %do.body2
  %add.ptr13 = getelementptr i8, ptr %5, i32 -36
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call4) #6
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #6
  %call28 = tail call ptr @uvcg_queue_head(ptr noundef %queue1) #6
  %cmp29 = icmp eq ptr %call28, null
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call23) #6
  br label %while.end

if.end33:                                         ; preds = %list_del.exit
  %14 = ptrtoint ptr %encode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %encode, align 4
  tail call void %15(ptr noundef %add.ptr13, ptr noundef %add.ptr, ptr noundef nonnull %call28) #6
  %16 = ptrtoint ptr %req_free to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %req_free, align 4
  %cmp.i114.not = icmp eq ptr %17, %req_free
  br i1 %cmp.i114.not, label %if.end33.if.then41_crit_edge, label %lor.lhs.false

if.end33.if.then41_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41

lor.lhs.false:                                    ; preds = %if.end33
  %state = getelementptr inbounds %struct.uvc_buffer, ptr %call28, i32 0, i32 2
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp37 = icmp eq i32 %19, 3
  br i1 %cmp37, label %lor.lhs.false.if.then41_crit_edge, label %lor.lhs.false39

lor.lhs.false.if.then41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41

lor.lhs.false39:                                  ; preds = %lor.lhs.false
  %20 = ptrtoint ptr %req_int_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %req_int_count, align 4
  %22 = ptrtoint ptr %uvc_num_requests to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %uvc_num_requests, align 4
  %sub = add i32 %23, 3
  %div113 = lshr i32 %sub, 2
  %rem = urem i32 %21, %div113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool40.not = icmp eq i32 %rem, 0
  br i1 %tobool40.not, label %lor.lhs.false39.if.then41_crit_edge, label %if.else

lor.lhs.false39.if.then41_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41

if.then41:                                        ; preds = %lor.lhs.false39.if.then41_crit_edge, %lor.lhs.false.if.then41_crit_edge, %if.end33.if.then41_crit_edge
  %24 = ptrtoint ptr %req_int_count to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %req_int_count, align 4
  %no_interrupt = getelementptr i8, ptr %5, i32 -12
  %25 = ptrtoint ptr %no_interrupt to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load = load i32, ptr %no_interrupt, align 4
  %bf.clear = and i32 %bf.load, -16385
  store i32 %bf.clear, ptr %no_interrupt, align 4
  br label %if.end47

if.else:                                          ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #8
  %no_interrupt43 = getelementptr i8, ptr %5, i32 -12
  %26 = ptrtoint ptr %no_interrupt43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load44 = load i32, ptr %no_interrupt43, align 4
  %bf.set46 = or i32 %bf.load44, 16384
  store i32 %bf.set46, ptr %no_interrupt43, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then41
  %27 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ep, align 4
  %call.i = tail call i32 @usb_ep_queue(ptr noundef %28, ptr noundef %add.ptr13, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i116 = icmp slt i32 %call.i, 0
  br i1 %cmp.i116, label %do.end.i, label %if.end53

do.end.i:                                         ; preds = %if.end47
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  %func.i = getelementptr inbounds %struct.uvc_device, ptr %30, i32 0, i32 3
  %config.i = getelementptr inbounds %struct.uvc_device, ptr %30, i32 0, i32 3, i32 6
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i, align 4
  %cdev.i = getelementptr inbounds %struct.usb_configuration, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cdev.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %36, i32 0, i32 11
  %37 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %func.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.12, ptr noundef %38, i32 noundef %call.i) #9
  %39 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ep, align 4
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %desc.i, align 4
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %do.end.i.if.then52_crit_edge, label %if.then4.i

do.end.i.if.then52_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

if.then4.i:                                       ; preds = %do.end.i
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bmAttributes.i.i, align 1
  %45 = and i8 %44, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %cmp.i.not.i = icmp eq i8 %45, 2
  br i1 %cmp.i.not.i, label %if.then9.i, label %if.then4.i.if.then52_crit_edge

if.then4.i.if.then52_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

if.then9.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i = tail call i32 @usb_ep_set_halt(ptr noundef %40) #6
  br label %if.then52

if.then52:                                        ; preds = %if.then9.i, %if.then4.i.if.then52_crit_edge, %do.end.i.if.then52_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call23) #6
  tail call void @uvcg_queue_cancel(ptr noundef %queue1, i32 noundef 0) #6
  br label %while.end

if.end53:                                         ; preds = %if.end47
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call23) #6
  %46 = ptrtoint ptr %req_int_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %req_int_count, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %req_int_count, align 4
  %48 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ep, align 4
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %enabled, align 1, !range !41
  %tobool.not = icmp eq i8 %51, 0
  br i1 %tobool.not, label %if.end53.while.end_crit_edge, label %if.end53.do.body2_crit_edge

if.end53.do.body2_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

if.end53.while.end_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end53.while.end_crit_edge, %if.then52, %if.then31
  %tobool55.not = icmp eq ptr %add.ptr13, null
  br i1 %tobool55.not, label %while.end.cleanup_crit_edge, label %do.body59

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body59:                                        ; preds = %while.end
  %req_lock65 = getelementptr i8, ptr %work, i32 176
  %call67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock65) #6
  %req_free73 = getelementptr i8, ptr %work, i32 168
  %prev.i117 = getelementptr i8, ptr %work, i32 172
  %52 = ptrtoint ptr %prev.i117 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i117, align 4
  %call.i.i118 = tail call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %53, ptr noundef %req_free73) #6
  br i1 %call.i.i118, label %if.end.i.i119, label %do.body59.list_add_tail.exit_crit_edge

do.body59.list_add_tail.exit_crit_edge:           ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i119:                                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %prev.i117 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %5, ptr %prev.i117, align 4
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %req_free73, ptr %5, align 4
  %prev3.i.i = getelementptr i8, ptr %5, i32 4
  %56 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev3.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %5, ptr %53, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i119, %do.body59.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock65, i32 noundef %call67) #6
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %while.end.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_queue_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_video_complete(ptr nocapture noundef readnone %ep, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %video1 = getelementptr inbounds %struct.uvc_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %video1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %video1, align 4
  %queue2 = getelementptr inbounds %struct.uvc_video, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.end12 [
    i32 0, label %entry.do.body24_crit_edge
    i32 -108, label %do.body
  ]

entry.do.body24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uvc_video_complete.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@uvc_video_complete, %do.body24.sink.split)) #6
          to label %if.then [label %do.body24.sink.split], !srcloc !46

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %func = getelementptr inbounds %struct.uvc_device, ptr %10, i32 0, i32 3
  %config = getelementptr inbounds %struct.uvc_device, ptr %10, i32 0, i32 3, i32 6
  %11 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config, align 4
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cdev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %func, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uvc_video_complete.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %18) #6
  br label %do.body24.sink.split

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %func14 = getelementptr inbounds %struct.uvc_device, ptr %5, i32 0, i32 3
  %config15 = getelementptr inbounds %struct.uvc_device, ptr %5, i32 0, i32 3, i32 6
  %19 = ptrtoint ptr %config15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %config15, align 4
  %cdev16 = getelementptr inbounds %struct.usb_configuration, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %cdev16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cdev16, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %dev18 = getelementptr inbounds %struct.usb_gadget, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %func14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %func14, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev18, ptr noundef nonnull @.str.11, ptr noundef %26, i32 noundef %7) #9
  br label %do.body24.sink.split

do.body24.sink.split:                             ; preds = %do.end12, %if.then, %do.body
  %.sink = phi i32 [ 0, %do.end12 ], [ 1, %do.body ], [ 1, %if.then ]
  tail call void @uvcg_queue_cancel(ptr noundef %queue2, i32 noundef %.sink) #6
  br label %do.body24

do.body24:                                        ; preds = %do.body24.sink.split, %entry.do.body24_crit_edge
  %req_lock = getelementptr inbounds %struct.uvc_video, ptr %3, i32 0, i32 13
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #6
  %list = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 9
  %req_free = getelementptr inbounds %struct.uvc_video, ptr %3, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.uvc_video, ptr %3, i32 0, i32 12, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %28, ptr noundef %req_free) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.body24.list_add_tail.exit_crit_edge

do.body24.list_add_tail.exit_crit_edge:           ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list, ptr %prev.i, align 4
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %req_free, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 9, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body24.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call27) #6
  %state = getelementptr inbounds %struct.uvc_device, ptr %5, i32 0, i32 2
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp33 = icmp eq i32 %34, 2
  br i1 %cmp33, label %if.then35, label %list_add_tail.exit.if.end37_crit_edge

list_add_tail.exit.if.end37_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then35:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %pump = getelementptr inbounds %struct.uvc_video, ptr %3, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %35 = load ptr, ptr @system_wq, align 4
  %call.i.i51 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %pump) #6
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %list_add_tail.exit.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvc_video_encode_header(ptr nocapture noundef readonly %video, ptr nocapture noundef readonly %buf, ptr nocapture noundef %data, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr i8, ptr %video, i32 -84
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #6
  %4 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 5
  %5 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %timestamp, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts, i64 noundef %6) #6
  %fid = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 19
  %7 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fid, align 4
  %9 = trunc i32 %8 to i8
  %conv = or i8 %9, -128
  %arrayidx = getelementptr i8, ptr %data, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx, align 1
  %buf_used = getelementptr inbounds %struct.uvc_video, ptr %video, i32 0, i32 18, i32 3
  %11 = ptrtoint ptr %buf_used to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buf_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.not = icmp eq i64 %14, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %15 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tv_nsec, align 8
  %div = sdiv i32 %16, 1000
  %17 = trunc i64 %14 to i32
  %18 = mul i32 %17, 1000000
  %19 = add i32 %div, %18
  %conv7 = mul i32 %19, 48
  %20 = or i8 %9, -124
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx, align 1
  %arrayidx12 = getelementptr i8, ptr %data, i32 2
  %22 = call i32 @llvm.bswap.i32(i32 %conv7) #6
  %23 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %arrayidx12, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pos.0 = phi i32 [ 6, %if.then ], [ 2, %land.lhs.true.if.end_crit_edge ], [ 2, %entry.if.end_crit_edge ]
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %ops = getelementptr inbounds %struct.usb_gadget, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool14.not = icmp eq ptr %29, null
  br i1 %tobool14.not, label %if.end.if.end34_crit_edge, label %if.then15

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 @usb_gadget_frame_number(ptr noundef %25) #6
  call void @ktime_get_ts64(ptr noundef nonnull %ts) #6
  %30 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ts, align 8
  %tv_nsec19 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %32 = ptrtoint ptr %tv_nsec19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tv_nsec19, align 8
  %div20 = sdiv i32 %33, 1000
  %34 = trunc i64 %31 to i32
  %35 = mul i32 %34, 1000000
  %36 = add i32 %35, %div20
  %conv24 = mul i32 %36, 48
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx, align 1
  %39 = or i8 %38, 8
  store i8 %39, ptr %arrayidx, align 1
  %arrayidx29 = getelementptr i8, ptr %data, i32 %pos.0
  %40 = call i32 @llvm.bswap.i32(i32 %conv24) #6
  %41 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %arrayidx29, align 1
  %conv30 = trunc i32 %call to i16
  %add31 = add nuw nsw i32 %pos.0, 4
  %arrayidx32 = getelementptr i8, ptr %data, i32 %add31
  %42 = call i16 @llvm.bswap.i16(i16 %conv30) #6
  %43 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %42, ptr %arrayidx32, align 1
  %add33 = add nuw nsw i32 %pos.0, 6
  br label %if.end34

if.end34:                                         ; preds = %if.then15, %if.end.if.end34_crit_edge
  %pos.1 = phi i32 [ %add33, %if.then15 ], [ %pos.0, %if.end.if.end34_crit_edge ]
  %conv35 = trunc i32 %pos.1 to i8
  %44 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv35, ptr %data, align 1
  %bytesused = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 8
  %45 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bytesused, align 8
  %47 = ptrtoint ptr %buf_used to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buf_used, align 4
  %sub = sub i32 %46, %48
  %sub39 = sub i32 %len, %pos.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub39)
  %cmp40.not = icmp ugt i32 %sub, %sub39
  br i1 %cmp40.not, label %if.end34.if.end47_crit_edge, label %if.then42

if.end34.if.end47_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx, align 1
  %51 = or i8 %50, 2
  store i8 %51, ptr %arrayidx, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.end34.if.end47_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #6
  ret i32 %pos.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uvcg_queue_next_buffer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_frame_number(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uvcg_queue_head(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/uvc_video.c", i32 439, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @uvcg_video_enable._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @uvcg_video_enable._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @uvcg_video_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/usb/gadget/function/uvc_video.c", i32 483, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @uvcg_video_init.__key.6, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/usb/gadget/function/uvc_video.c", i32 484, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/function/uvc_video.c", i32 256, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @uvc_video_complete.__UNIQUE_ID_ddebug304, !15, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/function/uvc_video.c", i32 261, i32 3}
!21 = !{ptr @uvc_video_complete._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @uvc_video_complete._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/function/uvc_video.c", i32 228, i32 3}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @uvcg_video_ep_queue._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @uvcg_video_ep_queue._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2156458131, i64 2156458635, i64 2156458168, i64 2156458224, i64 2156458258, i64 2156458282, i64 2156458323, i64 2156458344, i64 2156458372, i64 2156458406}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{i8 0, i8 2}
!42 = !{i64 2153893333, i64 2153893825, i64 2153893370, i64 2153893426, i64 2153893460, i64 2153893484, i64 2153893525, i64 2153893546, i64 2153893574, i64 2153893608}
!43 = !{i64 2153887014, i64 2153887506, i64 2153887051, i64 2153887107, i64 2153887141, i64 2153887165, i64 2153887206, i64 2153887227, i64 2153887255, i64 2153887289}
!44 = !{i64 2153888624, i64 2153889116, i64 2153888661, i64 2153888717, i64 2153888751, i64 2153888775, i64 2153888816, i64 2153888837, i64 2153888865, i64 2153888899}
!45 = !{i64 2153890572, i64 2153891064, i64 2153890609, i64 2153890665, i64 2153890699, i64 2153890723, i64 2153890764, i64 2153890785, i64 2153890813, i64 2153890847}
!46 = !{i64 2148701721, i64 2148701726, i64 2148701739, i64 2148701783, i64 2148701817, i64 2148701838}
