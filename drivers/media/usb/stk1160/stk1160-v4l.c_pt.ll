; ModuleID = '/llk/IR_all_yes/drivers/media/usb/stk1160/stk1160-v4l.c_pt.bc'
source_filename = "../drivers/media/usb/stk1160/stk1160-v4l.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
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
%struct.stk1160_fmt = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stk1160 = type { %struct.v4l2_device, %struct.video_device, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, %struct.list_head, %struct.vb2_queue, i32, ptr, i32, i32, %struct.stk1160_isoc_ctl, i32, i32, i32, i64, ptr, i32, %struct.i2c_adapter, %struct.i2c_client, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.stk1160_isoc_ctl = type { i32, i32, ptr, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stk1160_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, ptr, i32, i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.96, i32 }
%union.anon.96 = type { i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.97 }
%union.anon.97 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.99, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.99 = type { i8 }
%struct.stk1160_decimate_ctrl = type { i8, i8, i32, i32, i32, i32 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.90 }
%union.anon.90 = type { i32, [28 x i8] }

@__param_str_keep_buffers = internal constant [21 x i8] c"stk1160.keep_buffers\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@keep_buffers = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_keep_buffers = internal constant %struct.kernel_param { ptr @__param_str_keep_buffers, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @keep_buffers } }, section "__param", align 4
@__UNIQUE_ID_keep_bufferstype309 = internal constant [35 x i8] c"stk1160.parmtype=keep_buffers:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_keep_buffers310 = internal constant [68 x i8] c"stk1160.parm=keep_buffers:don't release buffers upon stop streaming\00", section ".modinfo", align 1
@stk1160_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @start_streaming, ptr @stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@v4l_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @stk1160_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"stk1160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 16777215, ptr @video_device_release_empty, ptr @stk1160_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@format = internal global { [1 x %struct.stk1160_fmt], [24 x i8] } { [1 x %struct.stk1160_fmt] [%struct.stk1160_fmt { i32 1498831189, i32 16 }], [24 x i8] zeroinitializer }, align 32
@stk1160_video_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013stk1160: video_register_device failed (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stk1160_video_register\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/stk1160/stk1160-v4l.c\00", [56 x i8] zeroinitializer }, align 32
@stk1160_video_register._entry_ptr = internal global ptr @stk1160_video_register._entry, section ".printk_index", align 4
@stk1160_video_register._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: V4L2 device registered as %s\0A\00", [60 x i8] zeroinitializer }, align 32
@stk1160_video_register._entry_ptr.5 = internal global ptr @stk1160_video_register._entry.3, section ".printk_index", align 4
@stk1160_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013stk1160: cannot submit urb[%d] (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stk1160_start_streaming\00", [40 x i8] zeroinitializer }, align 32
@stk1160_start_streaming._entry_ptr = internal global ptr @stk1160_start_streaming._entry, section ".printk_index", align 4
@stk1160_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@stk1160_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr @vidioc_querystd, ptr @vidioc_enum_input, ptr @vidioc_g_input, ptr @vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr @vidioc_g_register, ptr @vidioc_s_register, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stk1160\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Composite%d\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"keep_buffers\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 31, i32 13 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"stk1160_video_qops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 728, i32 29 }
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"v4l_template\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 737, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 47, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 835, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 839, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 237, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant [13 x i8] c"stk1160_fops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 318, i32 42 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"stk1160_ioctl_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 613, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 336, i32 23 }
@___asan_gen_.61 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 912, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [43 x i8] c"../drivers/media/usb/stk1160/stk1160-v4l.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 559, i32 20 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_keep_buffers310, ptr @__UNIQUE_ID_keep_bufferstype309, ptr @__param_keep_buffers, ptr @stk1160_start_streaming._entry, ptr @stk1160_start_streaming._entry_ptr, ptr @stk1160_video_register._entry, ptr @stk1160_video_register._entry.3, ptr @stk1160_video_register._entry_ptr, ptr @stk1160_video_register._entry_ptr.5, ptr @keep_buffers, ptr @stk1160_video_qops, ptr @v4l_template, ptr @format, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @stk1160_fops, ptr @stk1160_ioctl_ops, ptr @.str.8, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keep_buffers to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_video_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_video_register._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stk1160_clear_queue(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_lock = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 23
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buf_lock) #8
  %avail_bufs = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %avail_bufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %avail_bufs, align 4
  %cmp.i.not25 = icmp eq ptr %1, %avail_bufs
  br i1 %cmp.i.not25, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %12, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #8
  %11 = ptrtoint ptr %avail_bufs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %avail_bufs, align 4
  %cmp.i.not = icmp eq ptr %12, %avail_bufs
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %buf8 = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 12, i32 4
  %13 = ptrtoint ptr %buf8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf8, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %buf8, align 4
  tail call void @vb2_buffer_done(ptr noundef nonnull %14, i32 noundef 6) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buf_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stk1160_vb2_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vb_vidq = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %vb_vidq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %vb_vidq, align 4
  %io_modes = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 23, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 7, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 7, i32 12
  %3 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 768, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 7, i32 7
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @stk1160_video_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 7, i32 8
  %5 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 4
  %vb_queue_lock = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 22
  %lock = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vb_queue_lock, ptr %lock, align 4
  %timestamp_flags = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 7, i32 13
  %7 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8192, ptr %timestamp_flags, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %vb_vidq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %avail_bufs = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 6
  %8 = ptrtoint ptr %avail_bufs to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %avail_bufs, ptr %avail_bufs, align 4
  %prev.i = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %avail_bufs, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stk1160_video_register(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %vdev, ptr @v4l_template, i32 1352)
  %vb_vidq = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 7
  %queue = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 1, i32 10
  %1 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vb_vidq, ptr %queue, align 8
  %v4l_lock = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 21
  %lock = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 1, i32 26
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %v4l_lock, ptr %lock, align 8
  %v4l2_dev4 = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 1, i32 7
  %3 = ptrtoint ptr %v4l2_dev4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %v4l2_dev4, align 4
  %device_caps = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 83886081, ptr %device_caps, align 8
  %norm = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 16
  %5 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 4096, ptr %norm, align 8
  %width = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 13
  %6 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 720, ptr %width, align 8
  %height = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 14
  %7 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 480, ptr %height, align 4
  %fmt = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 17
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @format, ptr %fmt, align 8
  tail call fastcc void @stk1160_set_std(ptr noundef %dev)
  %subdevs = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn71 = load ptr, ptr %subdevs, align 4
  %cmp.not73 = icmp eq ptr %.pn71, %subdevs
  br i1 %cmp.not73, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn74 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn71, %entry.for.body_crit_edge ]
  %__sd.075 = getelementptr i8, ptr %.pn74, i32 -80
  %ops = getelementptr i8, ptr %.pn74, i32 24
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_std, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %norm, align 8
  %call = tail call i32 %15(ptr noundef %__sd.075, i64 noundef %17) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %.pn74 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn74, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 1, i32 5, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %driver_data.i.i, align 4
  %fops.i = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fops.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp27 = icmp slt i32 %call.i, 0
  br i1 %cmp27, label %do.end31, label %do.end37

do.end31:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i) #11
  br label %cleanup

do.end37:                                         ; preds = %do.end
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %init_name.i.i = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 1, i32 5, i32 3
  %24 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end37.video_device_node_name.exit_crit_edge

do.end37.video_device_node_name.exit_crit_edge:   ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end37.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %27, %if.end.i.i ], [ %25, %do.end37.video_device_node_name.exit_crit_edge ]
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name, ptr noundef %retval.0.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %video_device_node_name.exit, %do.end31
  %retval.0 = phi i32 [ %call.i, %do.end31 ], [ 0, %video_device_node_name.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stk1160_set_std(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %norm = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %norm, align 8
  %and = and i64 %1, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %call16 = tail call i32 @stk1160_write_reg(ptr noundef %dev, i16 noundef zeroext 272, i16 noundef zeroext 0) #8
  %call16.1 = tail call i32 @stk1160_write_reg(ptr noundef %dev, i16 noundef zeroext 273, i16 noundef zeroext 0) #8
  %. = select i1 %tobool.not, i16 1, i16 3
  %.35 = select i1 %tobool.not, i16 289, i16 243
  %.36 = zext i1 %tobool.not to i16
  %call.2 = tail call i32 @stk1160_write_reg(ptr noundef %dev, i16 noundef zeroext 274, i16 noundef zeroext %.) #8
  %call.3 = tail call i32 @stk1160_write_reg(ptr noundef %dev, i16 noundef zeroext 275, i16 noundef zeroext 0) #8
  %call.4 = tail call i32 @stk1160_write_reg(ptr noundef %dev, i16 noundef zeroext 276, i16 noundef zeroext 1440) #8
  %call.5 = tail call i32 @stk1160_write_reg(ptr noundef %dev, i16 noundef zeroext 277, i16 noundef zeroext 5) #8
  %call.6 = tail call i32 @stk1160_write_reg(ptr noundef %dev, i16 noundef zeroext 278, i16 noundef zeroext %.35) #8
  %call.7 = tail call i32 @stk1160_write_reg(ptr noundef %dev, i16 noundef zeroext 279, i16 noundef zeroext %.36) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %width = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %mul = shl i32 %3, 1
  %mul1 = mul i32 %mul, %5
  %6 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbuffers, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 8)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 32)
  %10 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nbuffers, align 4
  %11 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %mul1)
  %cmp8 = icmp ult i32 %14, %mul1
  %cond9 = select i1 %cmp8, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %nplanes, align 4
  %16 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul1, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond9, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %udev.i = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.stk1160_start_streaming.exit_crit_edge, label %if.end.i

entry.stk1160_start_streaming.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %stk1160_start_streaming.exit

if.end.i:                                         ; preds = %entry
  %v4l_lock.i = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 21
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %v4l_lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.stk1160_start_streaming.exit_crit_edge

if.end.i.stk1160_start_streaming.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stk1160_start_streaming.exit

if.end3.i:                                        ; preds = %if.end.i
  %alt.i.i = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %alt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alt.i.i, align 4
  %num_alt.i.i = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %num_alt.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_alt.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp48.i.i = icmp sgt i32 %7, 0
  br i1 %cmp48.i.i, label %for.body.lr.ph.i.i, label %if.end3.i.for.end.i.i_crit_edge

if.end3.i.for.end.i.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end3.i
  %alt_max_pkt_size.i.i = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %alt_max_pkt_size.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %alt_max_pkt_size.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.049.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %9, i32 %i.049.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3071, i32 %11)
  %cmp1.i.i = icmp ugt i32 %11, 3071
  br i1 %cmp1.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %alt.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %i.049.i.i, ptr %alt.i.i, align 4
  br label %for.end.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %13 = ptrtoint ptr %alt.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %alt.i.i, align 4
  %arrayidx7.i.i = getelementptr i32, ptr %9, i32 %14
  %15 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %16)
  %cmp8.i.i = icmp ugt i32 %11, %16
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.else.i.i.for.inc.i.i_crit_edge

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then9.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %alt.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i.049.i.i, ptr %alt.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then9.i.i, %if.else.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.049.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %7
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then.i.i, %if.end3.i.for.end.i.i_crit_edge
  %18 = ptrtoint ptr %alt.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %alt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %5)
  %cmp13.not.i.i = icmp eq i32 %19, %5
  br i1 %cmp13.not.i.i, label %for.end.i.i.stk1160_set_alternate.exit.i_crit_edge, label %if.then14.i.i

for.end.i.i.stk1160_set_alternate.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stk1160_set_alternate.exit.i

if.then14.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev.i, align 4
  %call.i.i = tail call i32 @usb_set_interface(ptr noundef %21, i32 noundef 0, i32 noundef %19) #8
  br label %stk1160_set_alternate.exit.i

stk1160_set_alternate.exit.i:                     ; preds = %if.then14.i.i, %for.end.i.i.stk1160_set_alternate.exit.i_crit_edge
  %max_pkt_size.i.i = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %max_pkt_size.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_pkt_size.i.i, align 4
  %alt_max_pkt_size17.i.i = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %alt_max_pkt_size17.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %alt_max_pkt_size17.i.i, align 8
  %26 = ptrtoint ptr %alt.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %alt.i.i, align 4
  %arrayidx19.i.i = getelementptr i32, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx19.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %29)
  %cmp20.i.i = icmp ne i32 %23, %29
  %30 = ptrtoint ptr %max_pkt_size.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %max_pkt_size.i.i, align 4
  %num_bufs.i = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 12, i32 1
  %31 = ptrtoint ptr %num_bufs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_bufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool5.not.i = icmp eq i32 %32, 0
  %brmerge.i = select i1 %tobool5.not.i, i1 true, i1 %cmp20.i.i
  br i1 %brmerge.i, label %if.then7.i, label %stk1160_set_alternate.exit.i.if.end11.i_crit_edge

stk1160_set_alternate.exit.i.if.end11.i_crit_edge: ; preds = %stk1160_set_alternate.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then7.i:                                       ; preds = %stk1160_set_alternate.exit.i
  %call8.i = tail call i32 @stk1160_alloc_isoc(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %if.then7.i.out_stop_hw.i_crit_edge, label %if.end11thread-pre-split.i

if.then7.i.out_stop_hw.i_crit_edge:               ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_stop_hw.i

if.end11thread-pre-split.i:                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %num_bufs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr.i = load i32, ptr %num_bufs.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end11thread-pre-split.i, %stk1160_set_alternate.exit.i.if.end11.i_crit_edge
  %34 = phi i32 [ %.pr.i, %if.end11thread-pre-split.i ], [ %32, %stk1160_set_alternate.exit.i.if.end11.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp1488.i = icmp sgt i32 %34, 0
  br i1 %cmp1488.i, label %for.body.lr.ph.i, label %if.end11.i.do.body21.i_crit_edge

if.end11.i.do.body21.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21.i

for.body.lr.ph.i:                                 ; preds = %if.end11.i
  %urb.i = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 12, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.089.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %urb.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %36, i32 %i.089.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %call16.i = tail call i32 @usb_submit_urb(ptr noundef %38, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %for.inc.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %i.089.i, i32 noundef %call16.i) #11
  tail call void @stk1160_uninit_isoc(ptr noundef %1) #8
  br label %out_stop_hw.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.089.i, 1
  %39 = ptrtoint ptr %num_bufs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_bufs.i, align 4
  %cmp14.i = icmp slt i32 %inc.i, %40
  br i1 %cmp14.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.body21.i_crit_edge

for.inc.i.do.body21.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.body21.i:                                      ; preds = %for.inc.i.do.body21.i_crit_edge, %if.end11.i.do.body21.i_crit_edge
  %subdevs.i = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn90.i = load ptr, ptr %subdevs.i, align 4
  %cmp27.not92.i = icmp eq ptr %.pn90.i, %subdevs.i
  br i1 %cmp27.not92.i, label %do.body21.i.do.end47.i_crit_edge, label %do.body21.i.for.body28.i_crit_edge

do.body21.i.for.body28.i_crit_edge:               ; preds = %do.body21.i
  br label %for.body28.i

do.body21.i.do.end47.i_crit_edge:                 ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47.i

for.body28.i:                                     ; preds = %for.inc39.i.for.body28.i_crit_edge, %do.body21.i.for.body28.i_crit_edge
  %.pn93.i = phi ptr [ %.pn.i, %for.inc39.i.for.body28.i_crit_edge ], [ %.pn90.i, %do.body21.i.for.body28.i_crit_edge ]
  %__sd.094.i = getelementptr i8, ptr %.pn93.i, i32 -80
  %ops.i = getelementptr i8, ptr %.pn93.i, i32 24
  %42 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %video.i, align 4
  %tobool29.not.i = icmp eq ptr %45, null
  br i1 %tobool29.not.i, label %for.body28.i.for.inc39.i_crit_edge, label %land.lhs.true.i

for.body28.i.for.inc39.i_crit_edge:               ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39.i

land.lhs.true.i:                                  ; preds = %for.body28.i
  %s_stream.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %45, i32 0, i32 10
  %46 = ptrtoint ptr %s_stream.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_stream.i, align 4
  %tobool32.not.i = icmp eq ptr %47, null
  br i1 %tobool32.not.i, label %land.lhs.true.i.for.inc39.i_crit_edge, label %if.then33.i

land.lhs.true.i.for.inc39.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39.i

if.then33.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call37.i = tail call i32 %47(ptr noundef %__sd.094.i, i32 noundef 1) #8
  br label %for.inc39.i

for.inc39.i:                                      ; preds = %if.then33.i, %land.lhs.true.i.for.inc39.i_crit_edge, %for.body28.i.for.inc39.i_crit_edge
  %48 = ptrtoint ptr %.pn93.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i = load ptr, ptr %.pn93.i, align 4
  %cmp27.not.i = icmp eq ptr %.pn.i, %subdevs.i
  br i1 %cmp27.not.i, label %for.inc39.i.do.end47.i_crit_edge, label %for.inc39.i.for.body28.i_crit_edge

for.inc39.i.for.body28.i_crit_edge:               ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body28.i

for.inc39.i.do.end47.i_crit_edge:                 ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47.i

do.end47.i:                                       ; preds = %for.inc39.i.do.end47.i_crit_edge, %do.body21.i.do.end47.i_crit_edge
  %sequence.i = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 18
  %49 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %sequence.i, align 4
  %call50.i = tail call i32 @stk1160_write_reg(ptr noundef %1, i16 noundef zeroext 256, i16 noundef zeroext 179) #8
  %call51.i = tail call i32 @stk1160_write_reg(ptr noundef %1, i16 noundef zeroext 259, i16 noundef zeroext 0) #8
  br label %cleanup.sink.split.i

out_stop_hw.i:                                    ; preds = %do.end.i, %if.then7.i.out_stop_hw.i_crit_edge
  %rc.0.i = phi i32 [ %call8.i, %if.then7.i.out_stop_hw.i_crit_edge ], [ %call16.i, %do.end.i ]
  %50 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %udev.i, align 4
  %call54.i = tail call i32 @usb_set_interface(ptr noundef %51, i32 noundef 0, i32 noundef 0) #8
  tail call void @stk1160_clear_queue(ptr noundef %1) #8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %out_stop_hw.i, %do.end47.i
  %retval.0.ph.i = phi i32 [ 0, %do.end47.i ], [ %rc.0.i, %out_stop_hw.i ]
  tail call void @mutex_unlock(ptr noundef %v4l_lock.i) #8
  br label %stk1160_start_streaming.exit

stk1160_start_streaming.exit:                     ; preds = %cleanup.sink.split.i, %if.end.i.stk1160_start_streaming.exit_crit_edge, %entry.stk1160_start_streaming.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %entry.stk1160_start_streaming.exit_crit_edge ], [ -512, %if.end.i.stk1160_start_streaming.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %v4l_lock.i = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 21
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %v4l_lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.stk1160_stop_streaming.exit_crit_edge

entry.stk1160_stop_streaming.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %stk1160_stop_streaming.exit

if.end.i:                                         ; preds = %entry
  tail call void @stk1160_cancel_isoc(ptr noundef %1) #8
  %2 = load i8, ptr @keep_buffers, align 1, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not.i = icmp eq i8 %2, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @stk1160_free_isoc(ptr noundef %1) #8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %udev.i.i = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end3.i.stk1160_stop_hw.exit.i_crit_edge, label %if.end.i.i

if.end3.i.stk1160_stop_hw.exit.i_crit_edge:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stk1160_stop_hw.exit.i

if.end.i.i:                                       ; preds = %if.end3.i
  %alt.i.i = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %alt.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %alt.i.i, align 4
  %call.i.i = tail call i32 @usb_set_interface(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0) #8
  %call2.i.i = tail call i32 @stk1160_write_reg(ptr noundef %1, i16 noundef zeroext 256, i16 noundef zeroext 0) #8
  %call3.i.i = tail call i32 @stk1160_write_reg(ptr noundef %1, i16 noundef zeroext 259, i16 noundef zeroext 0) #8
  %subdevs.i.i = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %subdevs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn36.i.i = load ptr, ptr %subdevs.i.i, align 4
  %cmp.not38.i.i = icmp eq ptr %.pn36.i.i, %subdevs.i.i
  br i1 %cmp.not38.i.i, label %if.end.i.i.stk1160_stop_hw.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.stk1160_stop_hw.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stk1160_stop_hw.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %.pn39.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn36.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %__sd.040.i.i = getelementptr i8, ptr %.pn39.i.i, i32 -80
  %ops.i.i = getelementptr i8, ptr %.pn39.i.i, i32 24
  %7 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i.i, align 4
  %video.i.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %video.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %video.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %10, null
  br i1 %tobool7.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %s_stream.i.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %s_stream.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_stream.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %12, null
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %if.then11.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then11.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i.i = tail call i32 %12(ptr noundef %__sd.040.i.i, i32 noundef 0) #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then11.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %13 = ptrtoint ptr %.pn39.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i.i = load ptr, ptr %.pn39.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %subdevs.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.stk1160_stop_hw.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.stk1160_stop_hw.exit.i_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stk1160_stop_hw.exit.i

stk1160_stop_hw.exit.i:                           ; preds = %for.inc.i.i.stk1160_stop_hw.exit.i_crit_edge, %if.end.i.i.stk1160_stop_hw.exit.i_crit_edge, %if.end3.i.stk1160_stop_hw.exit.i_crit_edge
  tail call void @stk1160_clear_queue(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %v4l_lock.i) #8
  br label %stk1160_stop_streaming.exit

stk1160_stop_streaming.exit:                      ; preds = %stk1160_stop_hw.exit.i, %entry.stk1160_stop_streaming.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %buf_lock = getelementptr inbounds %struct.stk1160, ptr %3, i32 0, i32 23
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buf_lock) #8
  %udev = getelementptr inbounds %struct.stk1160, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vb2_buffer_done(ptr noundef %vb, i32 noundef 6) #8
  br label %if.end21

if.else:                                          ; preds = %entry
  %call11 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #8
  %mem = getelementptr inbounds %struct.stk1160_buffer, ptr %vb, i32 0, i32 2
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call11, ptr %mem, align 8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %7 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.else.vb2_plane_size.exit_crit_edge, label %if.then.i

if.else.vb2_plane_size.exit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %if.else.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %10, %if.then.i ], [ 0, %if.else.vb2_plane_size.exit_crit_edge ]
  %length = getelementptr inbounds %struct.stk1160_buffer, ptr %vb, i32 0, i32 3
  %11 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %length, align 4
  %bytesused = getelementptr inbounds %struct.stk1160_buffer, ptr %vb, i32 0, i32 4
  %12 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %bytesused, align 8
  %pos = getelementptr inbounds %struct.stk1160_buffer, ptr %vb, i32 0, i32 6
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %pos, align 8
  %width = getelementptr inbounds %struct.stk1160, ptr %3, i32 0, i32 13
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.stk1160, ptr %3, i32 0, i32 14
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %mul = shl i32 %15, 1
  %mul14 = mul i32 %mul, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %mul14)
  %cmp15 = icmp ult i32 %retval.0.i, %mul14
  br i1 %cmp15, label %if.then17, label %if.else20

if.then17:                                        ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vb2_buffer_done(ptr noundef %vb, i32 noundef 6) #8
  br label %if.end21

if.else20:                                        ; preds = %vb2_plane_size.exit
  %list = getelementptr inbounds %struct.stk1160_buffer, ptr %vb, i32 0, i32 1
  %avail_bufs = getelementptr inbounds %struct.stk1160, ptr %3, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.stk1160, ptr %3, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %19, ptr noundef %avail_bufs) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.else20.if.end21_crit_edge

if.else20.if.end21_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end.i.i:                                       ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list, ptr %prev.i, align 4
  %21 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %avail_bufs, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.stk1160_buffer, ptr %vb, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list, ptr %19, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end.i.i, %if.else20.if.end21_crit_edge, %if.then17, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buf_lock, i32 noundef %call7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stk1160_alloc_isoc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stk1160_write_reg(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @stk1160_uninit_isoc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @stk1160_cancel_isoc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @stk1160_free_isoc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.8, i32 noundef 16) #8
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.8, i32 noundef 32) #8
  %udev = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 1
  %call.i8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.9, ptr noundef %7, ptr noundef %devpath.i) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr @format, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %width = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %height3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height3, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %field, align 4
  %fmt5 = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %fmt5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fmt5, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pixelformat, align 4
  %14 = load i32, ptr %width, align 8
  %mul = shl i32 %14, 1
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %15 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %bytesperline, align 4
  %16 = load i32, ptr %height, align 4
  %mul12 = mul i32 %16, %mul
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %17 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul12, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %18 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %colorspace, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  %ctrl = alloca %struct.stk1160_decimate_ctrl, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ctrl) #8
  %2 = call ptr @memset(ptr %ctrl, i32 255, i32 20)
  %num_buffers.i = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 7, i32 21
  %3 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.not = icmp eq i32 %4, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @stk1160_try_fmt(ptr noundef %1, ptr noundef %f, ptr noundef nonnull %ctrl)
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fmt, align 4
  %width5 = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %width5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %width5, align 8
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %height7 = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %height7, align 4
  %11 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ctrl, align 4, !range !54
  %13 = or i8 %12, 16
  %or2.i = zext i8 %13 to i16
  %row_en.i = getelementptr inbounds %struct.stk1160_decimate_ctrl, ptr %ctrl, i32 0, i32 1
  %14 = ptrtoint ptr %row_en.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %row_en.i, align 1, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not.i = icmp eq i8 %15, 0
  %cond4.i = select i1 %tobool3.not.i, i16 0, i16 4
  %or5.i = or i16 %cond4.i, %or2.i
  %col_mode.i = getelementptr inbounds %struct.stk1160_decimate_ctrl, ptr %ctrl, i32 0, i32 2
  %16 = ptrtoint ptr %col_mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %col_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i18 = icmp eq i32 %17, 0
  %cond6.i = select i1 %cmp.i18, i16 2, i16 0
  %or7.i = or i16 %or5.i, %cond6.i
  %row_mode.i = getelementptr inbounds %struct.stk1160_decimate_ctrl, ptr %ctrl, i32 0, i32 3
  %18 = ptrtoint ptr %row_mode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %row_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp8.i = icmp eq i32 %19, 0
  %cond9.i = select i1 %cmp8.i, i16 8, i16 0
  %or10.i = or i16 %or7.i, %cond9.i
  %col_n.i = getelementptr inbounds %struct.stk1160_decimate_ctrl, ptr %ctrl, i32 0, i32 4
  %20 = ptrtoint ptr %col_n.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %col_n.i, align 4
  %conv.i = trunc i32 %21 to i16
  %call.i19 = call i32 @stk1160_write_reg(ptr noundef %1, i16 noundef zeroext 260, i16 noundef zeroext %conv.i) #8
  %row_n.i = getelementptr inbounds %struct.stk1160_decimate_ctrl, ptr %ctrl, i32 0, i32 5
  %22 = ptrtoint ptr %row_n.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %row_n.i, align 4
  %conv11.i = trunc i32 %23 to i16
  %call12.i = call i32 @stk1160_write_reg(ptr noundef %1, i16 noundef zeroext 261, i16 noundef zeroext %conv11.i) #8
  %call14.i = call i32 @stk1160_write_reg(ptr noundef %1, i16 noundef zeroext 262, i16 noundef zeroext %or10.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ctrl) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call fastcc void @stk1160_try_fmt(ptr noundef %1, ptr noundef %f, ptr noundef null)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %norm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %norm1 = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %norm1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %norm1, align 8
  %4 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %norm, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %norm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %norm1 = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %norm1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %norm1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %norm)
  %cmp = icmp eq i64 %3, %norm
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_buffers.i = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 7, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %udev = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %width = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 720, ptr %width, align 8
  %and = and i64 %norm, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool7.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool7.not, i32 576, i32 480
  %height = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %height, align 4
  %10 = ptrtoint ptr %norm1 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %norm, ptr %norm1, align 8
  tail call fastcc void @stk1160_set_std(ptr noundef %1)
  %call14.i = tail call i32 @stk1160_write_reg(ptr noundef %1, i16 noundef zeroext 262, i16 noundef zeroext 0) #8
  %subdevs = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn50 = load ptr, ptr %subdevs, align 4
  %cmp12.not52 = icmp eq ptr %.pn50, %subdevs
  br i1 %cmp12.not52, label %if.end6.cleanup_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6.for.body_crit_edge
  %.pn53 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn50, %if.end6.for.body_crit_edge ]
  %__sd.054 = getelementptr i8, ptr %.pn53, i32 -80
  %ops = getelementptr i8, ptr %.pn53, i32 24
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %video, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_std, align 4
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %land.lhs.true.for.inc_crit_edge, label %if.then17

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %norm1 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %norm1, align 8
  %call22 = tail call i32 %17(ptr noundef %__sd.054, i64 noundef %19) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %.pn53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn53, align 4
  %cmp12.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp12.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querystd(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %norm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdevs = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn25 = load ptr, ptr %subdevs, align 4
  %cmp.not27 = icmp eq ptr %.pn25, %subdevs
  br i1 %cmp.not27, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn28 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn25, %entry.for.body_crit_edge ]
  %__sd.029 = getelementptr i8, ptr %.pn28, i32 -80
  %ops = getelementptr i8, ptr %.pn28, i32 24
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %querystd = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %querystd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %querystd, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 %8(ptr noundef %__sd.029, ptr noundef %norm) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn28, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp2 = icmp eq i32 %3, 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %name to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 5993541689755922176, ptr %name, align 1
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.11, i32 noundef %3)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3
  %type = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %type, align 4
  %tvnorms = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 1, i32 22
  %6 = ptrtoint ptr %tvnorms to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tvnorms, align 8
  %std = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 5
  %8 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %ctl_input = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %ctl_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctl_input, align 8
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i)
  %cmp = icmp ugt i32 %i, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %ctl_input = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %ctl_input to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %i, ptr %ctl_input, align 8
  tail call void @stk1160_select_input(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_register(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %reg) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !55
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %3 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %4 to i16
  %call2 = call i32 @stk1160_read_reg(ptr noundef %1, i16 noundef zeroext %conv, ptr noundef nonnull %val) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %conv3 = zext i8 %6 to i64
  %val4 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %7 = ptrtoint ptr %val4 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %conv3, ptr %val4, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 1, ptr %size, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_register(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %3 to i16
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %val, align 1
  %conv2 = trunc i64 %5 to i16
  %call3 = tail call i32 @stk1160_write_reg(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext %conv2) #8
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stk1160_try_fmt(ptr nocapture noundef readonly %dev, ptr nocapture noundef %f, ptr noundef writeonly %ctrl) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %norm = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %norm, align 8
  %and = and i64 %1, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 576, i32 480
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %4)
  %cmp4 = icmp ult i32 %4, 720
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 720)
  %height10 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %height10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height10, align 4
  %div11.lhs.trunc = trunc i32 %cond to i16
  %div1125 = udiv i16 %div11.lhs.trunc, 20
  %div11.zext = zext i16 %div1125 to i32
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 %div11.zext)
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %cond)
  %cmp19 = icmp ult i32 %8, %cond
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 %cond)
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 720, ptr %fmt, align 4
  %11 = ptrtoint ptr %height10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %height10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 360, i32 %5)
  %cmp30 = icmp ugt i32 %5, 360
  %or.cond = and i1 %cmp4, %cmp30
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = sub nuw nsw i32 720, %5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then
  %y.addr.0.i = phi i32 [ %sub, %if.then ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %.frozen = freeze i32 %5
  %y.addr.0.i.frozen = freeze i32 %y.addr.0.i
  %div.i = udiv i32 %.frozen, %y.addr.0.i.frozen
  %12 = mul i32 %div.i, %y.addr.0.i.frozen
  %rem.i.decomposed = sub i32 %.frozen, %12
  %cmp.i = icmp eq i32 %rem.i.decomposed, 0
  %inc.i = add i32 %y.addr.0.i, 1
  br i1 %cmp.i, label %div_round_integer.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

div_round_integer.exit:                           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %y.addr.0.i, i32 %5)
  %cmp31.not = icmp ugt i32 %y.addr.0.i, %5
  br i1 %cmp31.not, label %div_round_integer.exit.if.end53_crit_edge, label %land.lhs.true32

div_round_integer.exit.if.end53_crit_edge:        ; preds = %div_round_integer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

land.lhs.true32:                                  ; preds = %div_round_integer.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.i)
  %cmp33 = icmp ult i32 %div.i, 256
  br i1 %cmp33, label %if.then34, label %land.lhs.true32.if.end53_crit_edge

land.lhs.true32.if.end53_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  %mul = mul nuw nsw i32 %div.i, 720
  %add = add nuw nsw i32 %div.i, 1
  %div35 = udiv i32 %mul, %add
  br label %if.end53.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 361, i32 %5)
  %cmp39 = icmp ult i32 %5, 361
  br i1 %cmp39, label %if.else.for.cond.i8_crit_edge, label %if.else.if.end53_crit_edge

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.else.for.cond.i8_crit_edge:                    ; preds = %if.else
  br label %for.cond.i8

for.cond.i8:                                      ; preds = %for.cond.i8.for.cond.i8_crit_edge, %if.else.for.cond.i8_crit_edge
  %y.addr.0.i4 = phi i32 [ %inc.i7, %for.cond.i8.for.cond.i8_crit_edge ], [ %4, %if.else.for.cond.i8_crit_edge ]
  %y.addr.0.i4.frozen = freeze i32 %y.addr.0.i4
  %div.i9 = udiv i32 720, %y.addr.0.i4.frozen
  %13 = mul i32 %div.i9, %y.addr.0.i4.frozen
  %rem.i5.decomposed = sub i32 720, %13
  %cmp.i6 = icmp eq i32 %rem.i5.decomposed, 0
  %inc.i7 = add i32 %y.addr.0.i4, 1
  br i1 %cmp.i6, label %div_round_integer.exit10, label %for.cond.i8.for.cond.i8_crit_edge

for.cond.i8.for.cond.i8_crit_edge:                ; preds = %for.cond.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i8

div_round_integer.exit10:                         ; preds = %for.cond.i8
  %sub42 = add nsw i32 %div.i9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub42)
  %cmp43.not = icmp eq i32 %sub42, 0
  br i1 %cmp43.not, label %div_round_integer.exit10.if.end53_crit_edge, label %land.lhs.true44

div_round_integer.exit10.if.end53_crit_edge:      ; preds = %div_round_integer.exit10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

land.lhs.true44:                                  ; preds = %div_round_integer.exit10
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub42)
  %cmp45 = icmp ult i32 %sub42, 256
  br i1 %cmp45, label %if.then46, label %land.lhs.true44.if.end53_crit_edge

land.lhs.true44.if.end53_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then46:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  %div48.rhs.trunc = trunc i32 %div.i9 to i16
  %div4826 = udiv i16 720, %div48.rhs.trunc
  %div48.zext = zext i16 %div4826 to i32
  br label %if.end53.sink.split

if.end53.sink.split:                              ; preds = %if.then46, %if.then34
  %div48.zext.sink = phi i32 [ %div48.zext, %if.then46 ], [ %div35, %if.then34 ]
  %col_n.0.ph = phi i32 [ %sub42, %if.then46 ], [ %div.i, %if.then34 ]
  %col_mode.0.ph = phi i32 [ 0, %if.then46 ], [ 1, %if.then34 ]
  %14 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div48.zext.sink, ptr %fmt, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end53.sink.split, %land.lhs.true44.if.end53_crit_edge, %div_round_integer.exit10.if.end53_crit_edge, %if.else.if.end53_crit_edge, %land.lhs.true32.if.end53_crit_edge, %div_round_integer.exit.if.end53_crit_edge
  %col_n.0 = phi i32 [ %div.i, %land.lhs.true32.if.end53_crit_edge ], [ 0, %div_round_integer.exit.if.end53_crit_edge ], [ %sub42, %land.lhs.true44.if.end53_crit_edge ], [ 0, %div_round_integer.exit10.if.end53_crit_edge ], [ 0, %if.else.if.end53_crit_edge ], [ %col_n.0.ph, %if.end53.sink.split ]
  %col_mode.0 = phi i32 [ 1, %land.lhs.true32.if.end53_crit_edge ], [ 1, %div_round_integer.exit.if.end53_crit_edge ], [ 1, %land.lhs.true44.if.end53_crit_edge ], [ 1, %div_round_integer.exit10.if.end53_crit_edge ], [ 1, %if.else.if.end53_crit_edge ], [ %col_mode.0.ph, %if.end53.sink.split ]
  %col_en.0.off0 = phi i1 [ false, %land.lhs.true32.if.end53_crit_edge ], [ false, %div_round_integer.exit.if.end53_crit_edge ], [ false, %land.lhs.true44.if.end53_crit_edge ], [ false, %div_round_integer.exit10.if.end53_crit_edge ], [ false, %if.else.if.end53_crit_edge ], [ true, %if.end53.sink.split ]
  %div562 = lshr exact i32 %cond, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %div562)
  %cmp57 = icmp ugt i32 %9, %div562
  %or.cond3 = select i1 %cmp19, i1 %cmp57, i1 false
  br i1 %or.cond3, label %if.then58, label %if.else71

if.then58:                                        ; preds = %if.end53
  %sub59 = sub nsw i32 %cond, %9
  br label %for.cond.i15

for.cond.i15:                                     ; preds = %for.cond.i15.for.cond.i15_crit_edge, %if.then58
  %y.addr.0.i11 = phi i32 [ %sub59, %if.then58 ], [ %inc.i14, %for.cond.i15.for.cond.i15_crit_edge ]
  %.frozen27 = freeze i32 %9
  %y.addr.0.i11.frozen = freeze i32 %y.addr.0.i11
  %div.i16 = udiv i32 %.frozen27, %y.addr.0.i11.frozen
  %15 = mul i32 %div.i16, %y.addr.0.i11.frozen
  %rem.i12.decomposed = sub i32 %.frozen27, %15
  %cmp.i13 = icmp eq i32 %rem.i12.decomposed, 0
  %inc.i14 = add i32 %y.addr.0.i11, 1
  br i1 %cmp.i13, label %div_round_integer.exit17, label %for.cond.i15.for.cond.i15_crit_edge

for.cond.i15.for.cond.i15_crit_edge:              ; preds = %for.cond.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i15

div_round_integer.exit17:                         ; preds = %for.cond.i15
  call void @__sanitizer_cov_trace_cmp4(i32 %y.addr.0.i11, i32 %9)
  %cmp61.not = icmp ugt i32 %y.addr.0.i11, %9
  br i1 %cmp61.not, label %div_round_integer.exit17.if.end87_crit_edge, label %land.lhs.true62

div_round_integer.exit17.if.end87_crit_edge:      ; preds = %div_round_integer.exit17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

land.lhs.true62:                                  ; preds = %div_round_integer.exit17
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.i16)
  %cmp63 = icmp ult i32 %div.i16, 256
  br i1 %cmp63, label %if.then64, label %land.lhs.true62.if.end87_crit_edge

land.lhs.true62.if.end87_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  %mul65 = mul nuw nsw i32 %div.i16, %cond
  %add66 = add nuw nsw i32 %div.i16, 1
  %div67 = udiv i32 %mul65, %add66
  br label %if.end87.sink.split

if.else71:                                        ; preds = %if.end53
  br i1 %cmp57, label %if.else71.if.end87_crit_edge, label %if.else71.for.cond.i22_crit_edge

if.else71.for.cond.i22_crit_edge:                 ; preds = %if.else71
  br label %for.cond.i22

if.else71.if.end87_crit_edge:                     ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

for.cond.i22:                                     ; preds = %for.cond.i22.for.cond.i22_crit_edge, %if.else71.for.cond.i22_crit_edge
  %y.addr.0.i18 = phi i32 [ %inc.i21, %for.cond.i22.for.cond.i22_crit_edge ], [ %9, %if.else71.for.cond.i22_crit_edge ]
  %cond.frozen = freeze i32 %cond
  %y.addr.0.i18.frozen = freeze i32 %y.addr.0.i18
  %div.i23 = udiv i32 %cond.frozen, %y.addr.0.i18.frozen
  %16 = mul i32 %div.i23, %y.addr.0.i18.frozen
  %rem.i19.decomposed = sub i32 %cond.frozen, %16
  %cmp.i20 = icmp eq i32 %rem.i19.decomposed, 0
  %inc.i21 = add i32 %y.addr.0.i18, 1
  br i1 %cmp.i20, label %div_round_integer.exit24, label %for.cond.i22.for.cond.i22_crit_edge

for.cond.i22.for.cond.i22_crit_edge:              ; preds = %for.cond.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i22

div_round_integer.exit24:                         ; preds = %for.cond.i22
  %sub76 = add nsw i32 %div.i23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub76)
  %cmp77.not = icmp eq i32 %sub76, 0
  br i1 %cmp77.not, label %div_round_integer.exit24.if.end87_crit_edge, label %land.lhs.true78

div_round_integer.exit24.if.end87_crit_edge:      ; preds = %div_round_integer.exit24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

land.lhs.true78:                                  ; preds = %div_round_integer.exit24
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub76)
  %cmp79 = icmp ult i32 %sub76, 256
  br i1 %cmp79, label %if.then80, label %land.lhs.true78.if.end87_crit_edge

land.lhs.true78.if.end87_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then80:                                        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  %div82 = udiv i32 %cond, %div.i23
  br label %if.end87.sink.split

if.end87.sink.split:                              ; preds = %if.then80, %if.then64
  %div82.sink = phi i32 [ %div82, %if.then80 ], [ %div67, %if.then64 ]
  %row_n.0.ph = phi i32 [ %sub76, %if.then80 ], [ %div.i16, %if.then64 ]
  %row_mode.0.ph = phi i32 [ 0, %if.then80 ], [ 1, %if.then64 ]
  %17 = ptrtoint ptr %height10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div82.sink, ptr %height10, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.end87.sink.split, %land.lhs.true78.if.end87_crit_edge, %div_round_integer.exit24.if.end87_crit_edge, %if.else71.if.end87_crit_edge, %land.lhs.true62.if.end87_crit_edge, %div_round_integer.exit17.if.end87_crit_edge
  %row_n.0 = phi i32 [ %div.i16, %land.lhs.true62.if.end87_crit_edge ], [ 0, %div_round_integer.exit17.if.end87_crit_edge ], [ %sub76, %land.lhs.true78.if.end87_crit_edge ], [ 0, %div_round_integer.exit24.if.end87_crit_edge ], [ 0, %if.else71.if.end87_crit_edge ], [ %row_n.0.ph, %if.end87.sink.split ]
  %row_mode.0 = phi i32 [ 1, %land.lhs.true62.if.end87_crit_edge ], [ 1, %div_round_integer.exit17.if.end87_crit_edge ], [ 1, %land.lhs.true78.if.end87_crit_edge ], [ 1, %div_round_integer.exit24.if.end87_crit_edge ], [ 1, %if.else71.if.end87_crit_edge ], [ %row_mode.0.ph, %if.end87.sink.split ]
  %row_en.0.off0 = phi i1 [ false, %land.lhs.true62.if.end87_crit_edge ], [ false, %div_round_integer.exit17.if.end87_crit_edge ], [ false, %land.lhs.true78.if.end87_crit_edge ], [ false, %div_round_integer.exit24.if.end87_crit_edge ], [ false, %if.else71.if.end87_crit_edge ], [ true, %if.end87.sink.split ]
  %fmt88 = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 17
  %18 = ptrtoint ptr %fmt88 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fmt88, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %pixelformat, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %23 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %field, align 4
  %24 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fmt, align 4
  %mul93 = shl i32 %25, 1
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %26 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul93, ptr %bytesperline, align 4
  %27 = ptrtoint ptr %height10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height10, align 4
  %mul99 = mul i32 %28, %mul93
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %29 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul99, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %30 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %colorspace, align 4
  %tobool102.not = icmp eq ptr %ctrl, null
  br i1 %tobool102.not, label %if.end87.if.end113_crit_edge, label %if.then103

if.end87.if.end113_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then103:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %frombool = zext i1 %col_en.0.off0 to i8
  %31 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool, ptr %ctrl, align 4
  %col_n106 = getelementptr inbounds %struct.stk1160_decimate_ctrl, ptr %ctrl, i32 0, i32 4
  %32 = ptrtoint ptr %col_n106 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %col_n.0, ptr %col_n106, align 4
  %col_mode107 = getelementptr inbounds %struct.stk1160_decimate_ctrl, ptr %ctrl, i32 0, i32 2
  %33 = ptrtoint ptr %col_mode107 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %col_mode.0, ptr %col_mode107, align 4
  %row_en109 = getelementptr inbounds %struct.stk1160_decimate_ctrl, ptr %ctrl, i32 0, i32 1
  %frombool110 = zext i1 %row_en.0.off0 to i8
  %34 = ptrtoint ptr %row_en109 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool110, ptr %row_en109, align 1
  %row_n111 = getelementptr inbounds %struct.stk1160_decimate_ctrl, ptr %ctrl, i32 0, i32 5
  %35 = ptrtoint ptr %row_n111 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %row_n.0, ptr %row_n111, align 4
  %row_mode112 = getelementptr inbounds %struct.stk1160_decimate_ctrl, ptr %ctrl, i32 0, i32 3
  %36 = ptrtoint ptr %row_mode112 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %row_mode.0, ptr %row_mode112, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then103, %if.end87.if.end113_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @stk1160_select_input(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stk1160_read_reg(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !20, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__param_keep_buffers, !1, !"__param_keep_buffers", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/stk1160/stk1160-v4l.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_keep_bufferstype309, !1, !"__UNIQUE_ID_keep_bufferstype309", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_keep_buffers310, !4, !"__UNIQUE_ID_keep_buffers310", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/stk1160/stk1160-v4l.c", i32 33, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/stk1160/stk1160-v4l.c", i32 835, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @stk1160_video_register._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @stk1160_video_register._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/stk1160/stk1160-v4l.c", i32 839, i32 2}
!13 = !{ptr @stk1160_video_register._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @stk1160_video_register._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @keep_buffers, !16, !"keep_buffers", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/stk1160/stk1160-v4l.c", i32 31, i32 13}
!17 = !{ptr @__param_str_keep_buffers, !1, !"__param_str_keep_buffers", i1 false, i1 false}
!18 = !{ptr @stk1160_video_qops, !19, !"stk1160_video_qops", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/stk1160/stk1160-v4l.c", i32 728, i32 29}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/stk1160/stk1160-v4l.c", i32 237, i32 4}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @stk1160_start_streaming._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @stk1160_start_streaming._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @v4l_template, !26, !"v4l_template", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/stk1160/stk1160-v4l.c", i32 737, i32 34}
!27 = !{ptr @stk1160_fops, !28, !"stk1160_fops", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/stk1160/stk1160-v4l.c", i32 318, i32 42}
!29 = !{ptr @stk1160_ioctl_ops, !30, !"stk1160_ioctl_ops", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/stk1160/stk1160-v4l.c", i32 613, i32 36}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/stk1160/stk1160-v4l.c", i32 336, i32 23}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/usb.h", i32 912, i32 31}
!35 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/stk1160/stk1160-v4l.c", i32 557, i32 20}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/stk1160/stk1160-v4l.c", i32 559, i32 20}
!39 = !{ptr @format, !40, !"format", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/stk1160/stk1160-v4l.c", i32 47, i32 27}
!41 = distinct !{null, !42, !"std525", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/stk1160/stk1160-v4l.c", i32 71, i32 23}
!43 = distinct !{null, !44, !"std625", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/stk1160/stk1160-v4l.c", i32 90, i32 23}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i8 0, i8 2}
!55 = !{!"auto-init"}
