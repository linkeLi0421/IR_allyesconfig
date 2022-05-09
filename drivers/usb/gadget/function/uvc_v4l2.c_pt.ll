; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/uvc_v4l2.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/uvc_v4l2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uvc_format = type { i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.109 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.106], %struct.media_entity_enum, i32 }
%struct.anon.106 = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.uvc_device = type { %struct.video_device, %struct.v4l2_device, i32, %struct.usb_function, %struct.uvc_video, i8, %struct.anon.117, i32, ptr, ptr, ptr, i32, i32, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.uvc_video = type { ptr, ptr, %struct.work_struct, i8, i32, i32, i32, i32, %struct.mutex, i32, i32, ptr, %struct.list_head, %struct.spinlock, i32, ptr, i32, i32, %struct.uvc_video_queue, i32 }
%struct.uvc_video_queue = type { %struct.vb2_queue, i32, i32, i32, i8, %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.anon.117 = type { ptr, ptr, ptr, ptr, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.v4l2_format = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.86, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.86 = type { i8 }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32, i8, [3 x i8] }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.uvc_file_handle = type { %struct.v4l2_fh, ptr, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.uvc_request_data = type { i32, [60 x i8] }

@uvc_v4l2_ioctl_ops = dso_local constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @uvc_v4l2_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_v4l2_get_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_v4l2_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_v4l2_reqbufs, ptr @uvc_v4l2_querybuf, ptr @uvc_v4l2_qbuf, ptr null, ptr @uvc_v4l2_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_v4l2_streamon, ptr @uvc_v4l2_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_v4l2_subscribe_event, ptr @uvc_v4l2_unsubscribe_event, ptr @uvc_v4l2_ioctl_default }, [120 x i8] zeroinitializer }, align 32
@uvc_v4l2_fops = dso_local constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @uvc_v4l2_poll, ptr @video_ioctl2, ptr null, ptr @uvc_v4l2_mmap, ptr @uvc_v4l2_open, ptr @uvc_v4l2_release }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"g_uvc\00", [26 x i8] zeroinitializer }, align 32
@uvc_formats = internal constant { [2 x %struct.uvc_format], [16 x i8] } { [2 x %struct.uvc_format] [%struct.uvc_format { i8 16, i32 1448695129 }, %struct.uvc_format { i8 0, i32 1196444237 }], [16 x i8] zeroinitializer }, align 32
@uvc_v4l2_set_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 115, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Unsupported format 0x%08x.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uvc_v4l2_set_format\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/usb/gadget/function/uvc_v4l2.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uvc_v4l2_set_format._entry_ptr = internal global ptr @uvc_v4l2_set_format._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1196444237, i64 1448695129]
@___asan_gen_.6 = private unnamed_addr constant [19 x i8] c"uvc_v4l2_ioctl_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 298, i32 29 }
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"uvc_v4l2_fops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 388, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 70, i32 23 }
@___asan_gen_.15 = private unnamed_addr constant [12 x i8] c"uvc_formats\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 58, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [42 x i8] c"../drivers/usb/gadget/function/uvc_v4l2.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 114, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @uvc_v4l2_set_format._entry, ptr @uvc_v4l2_set_format._entry_ptr, ptr @uvc_v4l2_ioctl_ops, ptr @uvc_v4l2_fops, ptr @.str, ptr @uvc_formats, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_v4l2_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_v4l2_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_formats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_v4l2_set_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_querycap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %config = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %cdev2 = getelementptr inbounds %struct.usb_configuration, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %cdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev2, align 4
  %call3 = tail call i32 @strlcpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #6
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %name = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call5 = tail call i32 @strlcpy(ptr noundef %card, ptr noundef %9, i32 noundef 32) #6
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %init_name.i = getelementptr inbounds %struct.usb_gadget, ptr %11, i32 0, i32 11, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %11, i32 0, i32 11
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call9 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_get_format(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fcc = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %fcc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fcc, align 4
  %fmt3 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat, align 4
  %width = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 5
  %5 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %width, align 4
  %7 = ptrtoint ptr %fmt3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %fmt3, align 4
  %height = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %height7 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %height7, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %field, align 4
  %bpp = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bpp, align 4
  %conv = zext i8 %13 to i32
  %14 = load i32, ptr %width, align 4
  %mul = mul i32 %14, %conv
  %div26 = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %15 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div26, ptr %bytesperline, align 4
  %imagesize = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 7
  %16 = ptrtoint ptr %imagesize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %imagesize, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %18 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %19 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %colorspace, align 4
  %priv = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %priv, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_set_format(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 1448695129, label %entry.if.end10_crit_edge
    i32 1196444237, label %if.end10.fold.split
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %func = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 3
  %config = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 3, i32 6
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config, align 4
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cdev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %func, align 4
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pixelformat, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %12, i32 noundef %14) #9
  br label %cleanup

if.end10.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %if.end10.fold.split, %entry.if.end10_crit_edge
  %i.070.lcssa = phi i32 [ 0, %entry.if.end10_crit_edge ], [ 1, %if.end10.fold.split ]
  %format.167 = getelementptr [2 x %struct.uvc_format], ptr @uvc_formats, i32 0, i32 %i.070.lcssa
  %15 = ptrtoint ptr %format.167 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %format.167, align 4
  %conv = zext i8 %16 to i32
  %fmt11 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %17 = ptrtoint ptr %fmt11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fmt11, align 4
  %mul = mul i32 %18, %conv
  %div64 = lshr i32 %mul, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mul)
  %tobool.not = icmp ult i32 %mul, 8
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %height = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 4
  %mul13 = mul i32 %20, %div64
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %21 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sizeimage, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul13, %cond.true ], [ %22, %cond.false ]
  %fcc15 = getelementptr [2 x %struct.uvc_format], ptr @uvc_formats, i32 0, i32 %i.070.lcssa, i32 1
  %23 = ptrtoint ptr %fcc15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fcc15, align 4
  %fcc16 = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 4
  %25 = ptrtoint ptr %fcc16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %fcc16, align 4
  %26 = ptrtoint ptr %format.167 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %format.167, align 4
  %bpp18 = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %bpp18 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %bpp18, align 4
  %29 = ptrtoint ptr %fmt11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fmt11, align 4
  %width21 = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 5
  %31 = ptrtoint ptr %width21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %width21, align 4
  %height23 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %height23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height23, align 4
  %height24 = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 6
  %34 = ptrtoint ptr %height24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %height24, align 4
  %imagesize25 = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 7
  %35 = ptrtoint ptr %imagesize25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond, ptr %imagesize25, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %36 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %field, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %37 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div64, ptr %bytesperline, align 4
  %sizeimage29 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %38 = ptrtoint ptr %sizeimage29 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond, ptr %sizeimage29, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %39 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %colorspace, align 4
  %priv = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_reqbufs(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %queue = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 18
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @uvcg_alloc_buffers(ptr noundef %queue, ptr noundef %b) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_querybuf(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %queue = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 18
  %call3 = tail call i32 @uvcg_query_buffer(ptr noundef %queue, ptr noundef %b) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_qbuf(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %queue = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 18
  %call3 = tail call i32 @uvcg_queue_buffer(ptr noundef %queue, ptr noundef %b) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp4 = icmp eq i32 %3, 2
  br i1 %cmp4, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pump = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %pump) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_dqbuf(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %queue = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 18
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %and = and i32 %3, 2048
  %call3 = tail call i32 @uvcg_dequeue_buffer(ptr noundef %queue, ptr noundef %b, i32 noundef %and) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_streamon(ptr noundef %file, ptr nocapture noundef readnone %fh, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %queue = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 18
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %type)
  %cmp.not = icmp eq i32 %3, %type
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %video2 = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4
  %call5 = tail call i32 @uvcg_video_enable(ptr noundef %video2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @uvc_function_setup_continue(ptr noundef %1) #6
  %state = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_streamoff(ptr noundef %file, ptr nocapture noundef readnone %fh, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %queue = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 18
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %type)
  %cmp.not = icmp eq i32 %3, %type
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %video2 = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4
  %call5 = tail call i32 @uvcg_video_enable(ptr noundef %video2, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_subscribe_event(ptr noundef %fh, ptr noundef %sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.v4l2_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sub, align 4
  %6 = add i32 %5, -134217734
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %6)
  %7 = icmp ult i32 %6, -6
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217732, i32 %5)
  %cmp4 = icmp eq i32 %5, 134217732
  br i1 %cmp4, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %func_connected = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %func_connected to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %func_connected, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %call7 = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 2, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217732, i32 %11)
  %cmp12 = icmp eq i32 %11, 134217732
  br i1 %cmp12, label %if.then13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %func_connected14 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %func_connected14 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %func_connected14, align 4
  %is_uvc_app_handle = getelementptr inbounds %struct.uvc_file_handle, ptr %fh, i32 0, i32 2
  %13 = ptrtoint ptr %is_uvc_app_handle to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %is_uvc_app_handle, align 4
  tail call void @uvc_function_connect(ptr noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %land.lhs.true.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_unsubscribe_event(ptr noundef %fh, ptr noundef %sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.v4l2_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @v4l2_event_unsubscribe(ptr noundef %fh, ptr noundef %sub) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217732, i32 %5)
  %cmp2 = icmp eq i32 %5, 134217732
  br i1 %cmp2, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %is_uvc_app_handle = getelementptr inbounds %struct.uvc_file_handle, ptr %fh, i32 0, i32 2
  %6 = ptrtoint ptr %is_uvc_app_handle to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_uvc_app_handle, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %func_connected.i = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %func_connected.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %func_connected.i, align 4
  tail call void @uvc_function_disconnect(ptr noundef %3) #6
  %video.i = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @uvcg_video_enable(ptr noundef %video.i, i32 noundef 0) #6
  %queue.i = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 4, i32 18
  tail call void @uvcg_free_buffers(ptr noundef %queue.i) #6
  %9 = ptrtoint ptr %is_uvc_app_handle to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %is_uvc_app_handle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_ioctl_default(ptr noundef %file, ptr nocapture noundef readnone %fh, i1 noundef zeroext %valid_prio, i32 noundef %cmd, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1077957889, i32 %cmd)
  %cond = icmp eq i32 %cmd, 1077957889
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %config.i = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config.i, align 4
  %cdev1.i = getelementptr inbounds %struct.usb_configuration, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %cdev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev1.i, align 4
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp slt i32 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %ep0.i = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ep0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep0.i, align 4
  %call.i = tail call i32 @usb_ep_set_halt(ptr noundef %11) #6
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %control_req.i = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %control_req.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %control_req.i, align 4
  %event_length.i = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %event_length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %event_length.i, align 8
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %7) #6
  %length4.i = getelementptr inbounds %struct.usb_request, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %length4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %length4.i, align 4
  %18 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arg, align 4
  %20 = ptrtoint ptr %event_length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %event_length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp7.i = icmp ult i32 %19, %21
  %zero.i = getelementptr inbounds %struct.usb_request, ptr %13, i32 0, i32 6
  %22 = ptrtoint ptr %zero.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load.i = load i32, ptr %zero.i, align 4
  %bf.shl.i = select i1 %cmp7.i, i32 8192, i32 0
  %bf.clear.i = and i32 %bf.load.i, -8193
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %zero.i, align 4
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %13, align 4
  %data8.i = getelementptr inbounds %struct.uvc_request_data, ptr %arg, i32 0, i32 1
  %25 = call ptr @memcpy(ptr %24, ptr %data8.i, i32 %16)
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  %ep011.i = getelementptr inbounds %struct.usb_gadget, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %ep011.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ep011.i, align 4
  %call12.i = tail call i32 @usb_ep_queue(ptr noundef %29, ptr noundef %13, i32 noundef 3264) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -515, %entry.cleanup_crit_edge ], [ %call.i, %if.then.i ], [ %call12.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %queue = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 18
  %call2 = tail call i32 @uvcg_queue_poll(ptr noundef %queue, ptr noundef %file, ptr noundef %wait) #6
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_mmap(ptr noundef %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %queue = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 18
  %call2 = tail call i32 @uvcg_queue_mmap(ptr noundef %queue, ptr noundef %vma) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 200) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call) #6
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #6
  %video = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4
  %device = getelementptr inbounds %struct.uvc_file_handle, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %video, ptr %device, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_release(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %device = getelementptr inbounds %struct.uvc_file_handle, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %mutex = getelementptr inbounds %struct.uvc_video, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %is_uvc_app_handle = getelementptr inbounds %struct.uvc_file_handle, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %is_uvc_app_handle to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_uvc_app_handle, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %func_connected.i = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %func_connected.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %func_connected.i, align 4
  tail call void @uvc_function_disconnect(ptr noundef %1) #6
  %video.i = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @uvcg_video_enable(ptr noundef %video.i, i32 noundef 0) #6
  %queue.i = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 4, i32 18
  tail call void @uvcg_free_buffers(ptr noundef %queue.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %private_data, align 4
  tail call void @v4l2_fh_del(ptr noundef %3) #6
  tail call void @v4l2_fh_exit(ptr noundef %3) #6
  tail call void @kfree(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_alloc_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_query_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_queue_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_dequeue_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_video_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_function_setup_continue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_function_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_function_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvcg_free_buffers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_queue_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_queue_mmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @uvc_v4l2_ioctl_ops, !1, !"uvc_v4l2_ioctl_ops", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/uvc_v4l2.c", i32 298, i32 29}
!2 = !{ptr @uvc_v4l2_fops, !3, !"uvc_v4l2_fops", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/function/uvc_v4l2.c", i32 388, i32 35}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/function/uvc_v4l2.c", i32 70, i32 23}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/gadget/function/uvc_v4l2.c", i32 114, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @uvc_v4l2_set_format._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @uvc_v4l2_set_format._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @uvc_formats, !15, !"uvc_formats", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/function/uvc_v4l2.c", i32 58, i32 26}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i8 0, i8 2}
