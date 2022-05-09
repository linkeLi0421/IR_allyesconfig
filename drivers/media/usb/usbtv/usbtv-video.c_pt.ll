; ModuleID = '/llk/IR_all_yes/drivers/media/usb/usbtv/usbtv-video.c_pt.bc'
source_filename = "../drivers/media/usb/usbtv/usbtv-video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usbtv_norm_params = type { i64, i32, i32 }
%struct.usbtv = type { ptr, ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.vb2_queue, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, [16 x ptr], ptr, ptr, %struct.atomic_t, %struct.work_struct, ptr, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usbtv_buf = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
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
%struct.v4l2_format = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }

@usbtv_video_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&usbtv->buflock\00", [16 x i8] zeroinitializer }, align 32
@usbtv_video_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&usbtv->v4l2_lock\00", [46 x i8] zeroinitializer }, align 32
@usbtv_video_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&usbtv->vb2q_lock\00", [46 x i8] zeroinitializer }, align 32
@usbtv_vb2_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @usbtv_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbtv_start_streaming, ptr @usbtv_stop_streaming, ptr @usbtv_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@usbtv_video_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 900, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Could not initialize videobuf2 queue\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usbtv_video_init\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/usbtv/usbtv-video.c\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbtv_video_init._entry_ptr = internal global ptr @usbtv_video_init._entry, section ".printk_index", align 4
@usbtv_video_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"usbtv_video:905:(&usbtv->ctrl)->_lock\00", [58 x i8] zeroinitializer }, align 32
@usbtv_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @usbtv_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@usbtv_video_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 918, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not initialize controls\0A\00", [33 x i8] zeroinitializer }, align 32
@usbtv_video_init._entry_ptr.13 = internal global ptr @usbtv_video_init._entry.11, section ".printk_index", align 4
@usbtv_video_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 927, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not register v4l2 device\0A\00", [32 x i8] zeroinitializer }, align 32
@usbtv_video_init._entry_ptr.16 = internal global ptr @usbtv_video_init._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usbtv\00", [26 x i8] zeroinitializer }, align 32
@usbtv_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@usbtv_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @usbtv_querycap, ptr @usbtv_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbtv_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbtv_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbtv_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @usbtv_g_std, ptr @usbtv_s_std, ptr null, ptr @usbtv_enum_input, ptr @usbtv_g_input, ptr @usbtv_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@usbtv_video_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str.7, i32 945, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@usbtv_video_init._entry_ptr.20 = internal global ptr @usbtv_video_init._entry.18, section ".printk_index", align 4
@norm_params = internal constant { [2 x %struct.usbtv_norm_params], [32 x i8] } { [2 x %struct.usbtv_norm_params] [%struct.usbtv_norm_params { i64 63744, i32 720, i32 480 }, %struct.usbtv_norm_params { i64 16713471, i32 720, i32 576 }], [32 x i8] zeroinitializer }, align 32
@usbtv_setup_capture.setup = internal constant { [54 x [2 x i16]], [40 x i8] } { [54 x [2 x i16]] [[2 x i16] [i16 -16376, i16 1], [2 x i16] [i16 -15920, i16 255], [2 x i16] [i16 -15911, i16 2], [2 x i16] [i16 -15815, i16 64], [2 x i16] [i16 -15808, i16 0], [2 x i16] [i16 -15807, i16 0], [2 x i16] [i16 -15806, i16 2], [2 x i16] [i16 -15805, i16 128], [2 x i16] [i16 -15804, i16 18], [2 x i16] [i16 -15803, i16 144], [2 x i16] [i16 -15802, i16 0], [2 x i16] [i16 -15752, i16 45], [2 x i16] [i16 -15751, i16 10], [2 x i16] [i16 -15750, i16 50], [2 x i16] [i16 -1904, i16 12], [2 x i16] [i16 -1900, i16 134], [2 x i16] [i16 -16212, i16 192], [2 x i16] [i16 -16211, i16 0], [2 x i16] [i16 -16222, i16 18], [2 x i16] [i16 -16221, i16 224], [2 x i16] [i16 -16220, i16 40], [2 x i16] [i16 -16219, i16 130], [2 x i16] [i16 -16217, i16 128], [2 x i16] [i16 -16384, i16 20], [2 x i16] [i16 -16378, i16 3], [2 x i16] [i16 -16240, i16 153], [2 x i16] [i16 -16239, i16 144], [2 x i16] [i16 -16236, i16 104], [2 x i16] [i16 -16235, i16 112], [2 x i16] [i16 -16228, i16 48], [2 x i16] [i16 -16227, i16 192], [2 x i16] [i16 -16226, i16 224], [2 x i16] [i16 -16359, i16 6], [2 x i16] [i16 -16244, i16 186], [2 x i16] [i16 -16127, i16 255], [2 x i16] [i16 -16116, i16 179], [2 x i16] [i16 -15950, i16 128], [2 x i16] [i16 -15948, i16 160], [2 x i16] [i16 -16052, i16 255], [2 x i16] [i16 -16051, i16 202], [2 x i16] [i16 -16109, i16 83], [2 x i16] [i16 -16103, i16 138], [2 x i16] [i16 -16068, i16 3], [2 x i16] [i16 -16048, i16 156], [2 x i16] [i16 -16047, i16 113], [2 x i16] [i16 -16046, i16 198], [2 x i16] [i16 -16045, i16 132], [2 x i16] [i16 -16044, i16 188], [2 x i16] [i16 -16043, i16 160], [2 x i16] [i16 -16042, i16 160], [2 x i16] [i16 -16041, i16 156], [2 x i16] [i16 -16040, i16 31], [2 x i16] [i16 -16039, i16 6], [2 x i16] [i16 -16035, i16 0]], [40 x i8] zeroinitializer }, align 32
@usbtv_select_norm.pal = internal constant { [23 x [2 x i16]], [36 x i8] } { [23 x [2 x i16]] [[2 x i16] [i16 -16381, i16 4], [2 x i16] [i16 -16358, i16 104], [2 x i16] [i16 -16128, i16 211], [2 x i16] [i16 -16114, i16 114], [2 x i16] [i16 -16113, i16 162], [2 x i16] [i16 -16110, i16 176], [2 x i16] [i16 -16107, i16 21], [2 x i16] [i16 -16105, i16 1], [2 x i16] [i16 -16104, i16 44], [2 x i16] [i16 -16083, i16 16], [2 x i16] [i16 -16081, i16 32], [2 x i16] [i16 -15840, i16 46], [2 x i16] [i16 -15835, i16 8], [2 x i16] [i16 -15794, i16 2], [2 x i16] [i16 -15793, i16 2], [2 x i16] [i16 -15788, i16 89], [2 x i16] [i16 -15782, i16 22], [2 x i16] [i16 -15781, i16 53], [2 x i16] [i16 -15773, i16 23], [2 x i16] [i16 -15770, i16 22], [2 x i16] [i16 -15769, i16 54], [2 x i16] [i16 -15794, i16 2], [2 x i16] [i16 -15793, i16 2]], [36 x i8] zeroinitializer }, align 32
@usbtv_select_norm.ntsc = internal constant { [23 x [2 x i16]], [36 x i8] } { [23 x [2 x i16]] [[2 x i16] [i16 -16381, i16 4], [2 x i16] [i16 -16358, i16 121], [2 x i16] [i16 -16128, i16 211], [2 x i16] [i16 -16114, i16 104], [2 x i16] [i16 -16113, i16 156], [2 x i16] [i16 -16110, i16 240], [2 x i16] [i16 -16107, i16 21], [2 x i16] [i16 -16105, i16 0], [2 x i16] [i16 -16104, i16 252], [2 x i16] [i16 -16083, i16 4], [2 x i16] [i16 -16081, i16 8], [2 x i16] [i16 -15840, i16 46], [2 x i16] [i16 -15835, i16 8], [2 x i16] [i16 -15794, i16 2], [2 x i16] [i16 -15793, i16 1], [2 x i16] [i16 -15788, i16 95], [2 x i16] [i16 -15782, i16 18], [2 x i16] [i16 -15781, i16 1], [2 x i16] [i16 -15773, i16 28], [2 x i16] [i16 -15770, i16 17], [2 x i16] [i16 -15769, i16 5], [2 x i16] [i16 -15794, i16 2], [2 x i16] [i16 -15793, i16 2]], [36 x i8] zeroinitializer }, align 32
@usbtv_select_norm.secam = internal constant { [23 x [2 x i16]], [36 x i8] } { [23 x [2 x i16]] [[2 x i16] [i16 -16381, i16 4], [2 x i16] [i16 -16358, i16 115], [2 x i16] [i16 -16128, i16 220], [2 x i16] [i16 -16114, i16 114], [2 x i16] [i16 -16113, i16 162], [2 x i16] [i16 -16110, i16 144], [2 x i16] [i16 -16107, i16 53], [2 x i16] [i16 -16105, i16 1], [2 x i16] [i16 -16104, i16 48], [2 x i16] [i16 -16083, i16 4], [2 x i16] [i16 -16081, i16 8], [2 x i16] [i16 -15840, i16 45], [2 x i16] [i16 -15835, i16 40], [2 x i16] [i16 -15794, i16 8], [2 x i16] [i16 -15793, i16 2], [2 x i16] [i16 -15788, i16 105], [2 x i16] [i16 -15782, i16 22], [2 x i16] [i16 -15781, i16 53], [2 x i16] [i16 -15773, i16 33], [2 x i16] [i16 -15770, i16 22], [2 x i16] [i16 -15769, i16 54], [2 x i16] [i16 -15794, i16 2], [2 x i16] [i16 -15793, i16 2]], [36 x i8] zeroinitializer }, align 32
@usbtv_select_input.composite = internal constant { [5 x [2 x i16]], [44 x i8] } { [5 x [2 x i16]] [[2 x i16] [i16 -16123, i16 96], [2 x i16] [i16 -16097, i16 242], [2 x i16] [i16 -16089, i16 96], [2 x i16] [i16 -16210, i16 16], [2 x i16] [i16 -15815, i16 96]], [44 x i8] zeroinitializer }, align 32
@usbtv_select_input.svideo = internal constant { [5 x [2 x i16]], [44 x i8] } { [5 x [2 x i16]] [[2 x i16] [i16 -16123, i16 16], [2 x i16] [i16 -16097, i16 255], [2 x i16] [i16 -16089, i16 96], [2 x i16] [i16 -16210, i16 48], [2 x i16] [i16 -15815, i16 96]], [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@usbtv_iso_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 474, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Bad response for ISO request.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbtv_iso_cb\00", [19 x i8] zeroinitializer }, align 32
@usbtv_iso_cb._entry_ptr = internal global ptr @usbtv_iso_cb._entry, section ".printk_index", align 4
@usbtv_iso_cb._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.7, i32 492, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not resubmit ISO URB\0A\00", [36 x i8] zeroinitializer }, align 32
@usbtv_iso_cb._entry_ptr.25 = internal global ptr @usbtv_iso_cb._entry.23, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@usbtv_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.7, i32 859, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to submit a control request.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbtv_s_ctrl\00", [19 x i8] zeroinitializer }, align 32
@usbtv_s_ctrl._entry_ptr = internal global ptr @usbtv_s_ctrl._entry, section ".printk_index", align 4
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Composite\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S-Video\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9963803]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 884, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 885, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 886, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"usbtv_vb2_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 774, i32 29 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 900, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 905, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"usbtv_ctrl_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 865, i32 35 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 918, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 927, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 932, i32 28 }
@___asan_gen_.99 = private unnamed_addr constant [11 x i8] c"usbtv_fops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 710, i32 42 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"usbtv_ioctl_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 688, i32 36 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 945, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [12 x i8] c"norm_params\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 50, i32 39 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"setup\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 270, i32 19 }
@___asan_gen_.117 = private unnamed_addr constant [4 x i8] c"pal\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 153, i32 19 }
@___asan_gen_.120 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 181, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"secam\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 209, i32 19 }
@___asan_gen_.126 = private unnamed_addr constant [10 x i8] c"composite\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 91, i32 19 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"svideo\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 99, i32 19 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 474, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 492, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1163, i32 7 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 859, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 912, i32 31 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 616, i32 20 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [41 x i8] c"../drivers/media/usb/usbtv/usbtv-video.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 619, i32 20 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @usbtv_iso_cb._entry, ptr @usbtv_iso_cb._entry.23, ptr @usbtv_iso_cb._entry_ptr, ptr @usbtv_iso_cb._entry_ptr.25, ptr @usbtv_s_ctrl._entry, ptr @usbtv_s_ctrl._entry_ptr, ptr @usbtv_video_init._entry, ptr @usbtv_video_init._entry.11, ptr @usbtv_video_init._entry.14, ptr @usbtv_video_init._entry.18, ptr @usbtv_video_init._entry_ptr, ptr @usbtv_video_init._entry_ptr.13, ptr @usbtv_video_init._entry_ptr.16, ptr @usbtv_video_init._entry_ptr.20, ptr @usbtv_video_init.__key, ptr @.str, ptr @usbtv_video_init.__key.1, ptr @.str.2, ptr @usbtv_video_init.__key.3, ptr @.str.4, ptr @usbtv_vb2_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @usbtv_video_init._key, ptr @.str.10, ptr @usbtv_ctrl_ops, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @usbtv_fops, ptr @usbtv_ioctl_ops, ptr @.str.19, ptr @norm_params, ptr @usbtv_setup_capture.setup, ptr @usbtv_select_norm.pal, ptr @usbtv_select_norm.ntsc, ptr @usbtv_select_norm.secam, ptr @usbtv_select_input.composite, ptr @usbtv_select_input.svideo, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_video_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_video_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_video_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_video_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_video_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_video_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_video_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_video_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @norm_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_setup_capture.setup to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_select_norm.pal to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_select_norm.ntsc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_select_norm.secam to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_select_input.composite to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_select_input.svideo to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_iso_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_iso_cb._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbtv_video_init(ptr noundef %usbtv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %width.i = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 14
  %0 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 720, ptr %width.i, align 8
  %height.i = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 15
  %1 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 480, ptr %height.i, align 4
  %n_chunks.i = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 16
  %2 = ptrtoint ptr %n_chunks.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 360, ptr %n_chunks.i, align 8
  %norm8.i = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 13
  %3 = ptrtoint ptr %norm8.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 63744, ptr %norm8.i, align 8
  %buflock = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %buflock, ptr noundef nonnull @.str, ptr noundef nonnull @usbtv_video_init.__key, i16 noundef signext 3) #10
  %v4l2_lock = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %v4l2_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @usbtv_video_init.__key.1) #10
  %vb2q_lock = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %vb2q_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @usbtv_video_init.__key.3) #10
  %bufs = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 9
  %4 = ptrtoint ptr %bufs to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %bufs, ptr %bufs, align 4
  %prev.i = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bufs, ptr %prev.i, align 4
  %vb2q = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 5
  %6 = ptrtoint ptr %vb2q to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %vb2q, align 8
  %io_modes = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 7, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 5, i32 10
  %8 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %usbtv, ptr %drv_priv, align 8
  %buf_struct_size = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 5, i32 12
  %9 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 744, ptr %buf_struct_size, align 8
  %ops = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 5, i32 7
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @usbtv_vb2_ops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 5, i32 8
  %11 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 8
  %timestamp_flags = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 5, i32 13
  %12 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8192, ptr %timestamp_flags, align 4
  %lock = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 5, i32 5
  %13 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vb2q_lock, ptr %lock, align 4
  %call17 = tail call i32 @vb2_queue_init(ptr noundef %vb2q) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %do.end20, label %if.end

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %usbtv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usbtv, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.5) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 3
  %call21 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl, i32 noundef 4, ptr noundef nonnull @usbtv_video_init._key, ptr noundef nonnull @.str.10) #10
  %call23 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl, ptr noundef nonnull @usbtv_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 1023, i64 noundef 1, i64 noundef 464) #10
  %call25 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl, ptr noundef nonnull @usbtv_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 1023, i64 noundef 1, i64 noundef 448) #10
  %call27 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl, ptr noundef nonnull @usbtv_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 1023, i64 noundef 1, i64 noundef 512) #10
  %call29 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl, ptr noundef nonnull @usbtv_ctrl_ops, i32 noundef 9963779, i64 noundef -3583, i64 noundef 3583, i64 noundef 1, i64 noundef 0) #10
  %call31 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl, ptr noundef nonnull @usbtv_ctrl_ops, i32 noundef 9963803, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 96) #10
  %error = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 3, i32 9
  %16 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp33 = icmp slt i32 %17, 0
  br i1 %cmp33, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %usbtv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usbtv, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.12) #13
  br label %ctrl_fail

if.end39:                                         ; preds = %if.end
  %v4l2_dev = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 2
  %ctrl_handler = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 2, i32 6
  %20 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ctrl, ptr %ctrl_handler, align 4
  %release = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 2, i32 9
  %21 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @usbtv_release, ptr %release, align 4
  %22 = ptrtoint ptr %usbtv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usbtv, align 8
  %call44 = tail call i32 @v4l2_device_register(ptr noundef %23, ptr noundef %v4l2_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.end49, label %if.end51

do.end49:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %usbtv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usbtv, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.15) #13
  br label %ctrl_fail

if.end51:                                         ; preds = %if.end39
  %vdev = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 4
  %name = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 4, i32 12
  %call52 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.17, i32 noundef 32) #10
  %v4l2_dev55 = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 4, i32 7
  %26 = ptrtoint ptr %v4l2_dev55 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %v4l2_dev, ptr %v4l2_dev55, align 4
  %release57 = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 4, i32 23
  %27 = ptrtoint ptr %release57 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @video_device_release_empty, ptr %release57, align 8
  %fops = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @usbtv_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 4, i32 24
  %29 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @usbtv_ioctl_ops, ptr %ioctl_ops, align 4
  %tvnorms = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 4, i32 22
  %30 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 16775679, ptr %tvnorms, align 8
  %queue = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 4, i32 10
  %31 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %vb2q, ptr %queue, align 8
  %lock65 = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 4, i32 26
  %32 = ptrtoint ptr %lock65 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %v4l2_lock, ptr %lock65, align 8
  %device_caps = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 4, i32 4
  %33 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 83886081, ptr %device_caps, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 4, i32 5, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %usbtv, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp70 = icmp slt i32 %call.i, 0
  br i1 %cmp70, label %do.end74, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end74:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %usbtv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usbtv, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.19) #13
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #10
  br label %ctrl_fail

ctrl_fail:                                        ; preds = %do.end74, %do.end49, %do.end37
  %ret.0 = phi i32 [ %17, %do.end37 ], [ %call44, %do.end49 ], [ %call.i, %do.end74 ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl) #10
  br label %cleanup

cleanup:                                          ; preds = %ctrl_fail, %if.end51.cleanup_crit_edge, %do.end20
  %retval.0 = phi i32 [ %call17, %do.end20 ], [ %ret.0, %ctrl_fail ], [ 0, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbtv_release(ptr noundef %v4l2_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %v4l2_dev, i32 -8
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #10
  %ctrl = getelementptr i8, ptr %v4l2_dev, i32 128
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbtv_video_free(ptr noundef %usbtv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vb2q_lock = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %vb2q_lock, i32 noundef 0) #10
  %v4l2_lock = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #10
  tail call fastcc void @usbtv_stop(ptr noundef %usbtv)
  %vdev = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 4
  tail call void @vb2_video_unregister_device(ptr noundef %vdev) #10
  %v4l2_dev = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 2
  tail call void @v4l2_device_disconnect(ptr noundef %v4l2_dev) #10
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #10
  tail call void @mutex_unlock(ptr noundef %vb2q_lock) #10
  %call = tail call i32 @v4l2_device_put(ptr noundef %v4l2_dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbtv_stop(ptr noundef %usbtv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.025 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usbtv, ptr %usbtv, i32 0, i32 20, i32 %i.025
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %1) #10
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %3) #10
  tail call void @usb_free_urb(ptr noundef nonnull %1) #10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.body4, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body4:                                         ; preds = %cleanup
  %buflock = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buflock) #10
  %bufs = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 9
  %5 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %bufs, align 4
  %cmp.i.not26 = icmp eq ptr %6, %bufs
  br i1 %cmp.i.not26, label %do.body4.while.end_crit_edge, label %do.body4.while.body_crit_edge

do.body4.while.body_crit_edge:                    ; preds = %do.body4
  br label %while.body

do.body4.while.end_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %do.body4.while.body_crit_edge
  %7 = phi ptr [ %17, %list_del.exit.while.body_crit_edge ], [ %6, %do.body4.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %7, i32 -736
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %16 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %bufs, align 4
  %cmp.i.not = icmp eq ptr %17, %bufs
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %do.body4.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buflock, i32 noundef %call6) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbtv_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %n_chunks = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %n_chunks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_chunks, align 8
  %mul2 = mul i32 %3, 1920
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %4 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers, align 4
  %6 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbuffers, align 4
  %add = add i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp = icmp ult i32 %add, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 2, %5
  %8 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %mul2)
  %cmp5 = icmp ult i32 %12, %mul2
  %cond = select i1 %cmp5, i32 -22, i32 0
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %nplanes, align 4
  %14 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul2, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4
  %retval.0 = phi i32 [ %cond, %if.then4 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtv_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %udev = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %last_odd = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %last_odd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %last_odd, align 8
  %sequence = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sequence, align 4
  tail call void @usbtv_audio_suspend(ptr noundef %1) #10
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %call.i = tail call i32 @usb_set_interface(ptr noundef %7, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i.i = tail call i32 @usbtv_set_regs(ptr noundef %1, ptr noundef nonnull @usbtv_setup_capture.setup, i32 noundef 54) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.usbtv_setup_capture.exit.i_crit_edge

if.end.i.usbtv_setup_capture.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtv_setup_capture.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %norm.i.i = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %norm.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %norm.i.i, align 8
  %call1.i.i = tail call fastcc i32 @usbtv_select_norm(ptr noundef %1, i64 noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.usbtv_setup_capture.exit.i_crit_edge

if.end.i.i.usbtv_setup_capture.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtv_setup_capture.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %input.i.i = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %input.i.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end4.i.i.cleanup_crit_edge [
    i32 0, label %if.end4.i.i.sw.epilog.i.i.i_crit_edge
    i32 1, label %sw.bb1.i.i.i
  ]

if.end4.i.i.sw.epilog.i.i.i_crit_edge:            ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i.i

if.end4.i.i.cleanup_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1.i.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.bb1.i.i.i, %if.end4.i.i.sw.epilog.i.i.i_crit_edge
  %usbtv_select_input.svideo.sink.i.i.i = phi ptr [ @usbtv_select_input.svideo, %sw.bb1.i.i.i ], [ @usbtv_select_input.composite, %if.end4.i.i.sw.epilog.i.i.i_crit_edge ]
  %call2.i.i.i = tail call i32 @usbtv_set_regs(ptr noundef %1, ptr noundef nonnull %usbtv_select_input.svideo.sink.i.i.i, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end8.i.i, label %sw.epilog.i.i.i.usbtv_setup_capture.exit.i_crit_edge

sw.epilog.i.i.i.usbtv_setup_capture.exit.i_crit_edge: ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtv_setup_capture.exit.i

if.end8.i.i:                                      ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %input.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %input.i.i, align 4
  %ctrl.i.i = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 3
  %call9.i.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl.i.i) #10
  br label %usbtv_setup_capture.exit.i

usbtv_setup_capture.exit.i:                       ; preds = %if.end8.i.i, %sw.epilog.i.i.i.usbtv_setup_capture.exit.i_crit_edge, %if.end.i.i.usbtv_setup_capture.exit.i_crit_edge, %if.end.i.usbtv_setup_capture.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.end.i.usbtv_setup_capture.exit.i_crit_edge ], [ %call1.i.i, %if.end.i.i.usbtv_setup_capture.exit.i_crit_edge ], [ %call9.i.i, %if.end8.i.i ], [ %call2.i.i.i, %sw.epilog.i.i.i.usbtv_setup_capture.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp2.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp2.i, label %usbtv_setup_capture.exit.i.cleanup_crit_edge, label %if.end4.i

usbtv_setup_capture.exit.i.cleanup_crit_edge:     ; preds = %usbtv_setup_capture.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.i:                                        ; preds = %usbtv_setup_capture.exit.i
  %14 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev, align 4
  %call6.i = tail call i32 @usb_set_interface(ptr noundef %15, i32 noundef 0, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end4.i.cleanup_crit_edge, label %if.end9.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.i:                                        ; preds = %if.end4.i
  tail call void @usbtv_audio_resume(ptr noundef %1) #10
  %iso_size.i.i = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 17
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end14.i
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end9.i
  %i.053.i = phi i32 [ 0, %if.end9.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %iso_size.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iso_size.i.i, align 4
  %call.i39.i = tail call ptr @usb_alloc_urb(i32 noundef 8, i32 noundef 3264) #10
  %cmp.i.i = icmp eq ptr %call.i39.i, null
  br i1 %cmp.i.i, label %for.body.i.start_fail.i_crit_edge, label %if.end.i40.i

for.body.i.start_fail.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %start_fail.i

if.end.i40.i:                                     ; preds = %for.body.i
  %18 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev, align 4
  %dev.i.i = getelementptr inbounds %struct.urb, ptr %call.i39.i, i32 0, i32 8
  %20 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %dev.i.i, align 4
  %context.i.i = getelementptr inbounds %struct.urb, ptr %call.i39.i, i32 0, i32 27
  %21 = ptrtoint ptr %context.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %context.i.i, align 4
  %22 = load ptr, ptr %udev, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i.i = shl i32 %24, 8
  %or3.i.i = or i32 %shl.i.i.i, 4227200
  %pipe.i.i = getelementptr inbounds %struct.urb, ptr %call.i39.i, i32 0, i32 10
  %25 = ptrtoint ptr %pipe.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or3.i.i, ptr %pipe.i.i, align 4
  %interval.i.i = getelementptr inbounds %struct.urb, ptr %call.i39.i, i32 0, i32 25
  %26 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %interval.i.i, align 4
  %transfer_flags.i.i = getelementptr inbounds %struct.urb, ptr %call.i39.i, i32 0, i32 13
  %27 = ptrtoint ptr %transfer_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %transfer_flags.i.i, align 4
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 8) #10
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %kcalloc.exit.thread.i.i, label %if.end7.i.i.i.i, !prof !92

kcalloc.exit.thread.i.i:                          ; preds = %if.end.i40.i
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_buffer39.i.i = getelementptr inbounds %struct.urb, ptr %call.i39.i, i32 0, i32 14
  %30 = ptrtoint ptr %transfer_buffer39.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %transfer_buffer39.i.i, align 4
  br label %if.then6.i.i

if.end7.i.i.i.i:                                  ; preds = %if.end.i40.i
  %31 = extractvalue { i32, i1 } %28, 0
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %31, i32 noundef 3520) #14
  %transfer_buffer.i.i = getelementptr inbounds %struct.urb, ptr %call.i39.i, i32 0, i32 14
  %32 = ptrtoint ptr %transfer_buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call8.i.i.i.i, ptr %transfer_buffer.i.i, align 4
  %tobool.not.i41.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i41.i, label %if.end7.i.i.i.i.if.then6.i.i_crit_edge, label %if.end14.i

if.end7.i.i.i.i.if.then6.i.i_crit_edge:           ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end7.i.i.i.i.if.then6.i.i_crit_edge, %kcalloc.exit.thread.i.i
  tail call void @usb_free_urb(ptr noundef nonnull %call.i39.i) #10
  br label %start_fail.i

if.end14.i:                                       ; preds = %if.end7.i.i.i.i
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call.i39.i, i32 0, i32 28
  %33 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @usbtv_iso_cb, ptr %complete.i.i, align 4
  %number_of_packets.i.i = getelementptr inbounds %struct.urb, ptr %call.i39.i, i32 0, i32 24
  %34 = ptrtoint ptr %number_of_packets.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %number_of_packets.i.i, align 4
  %mul.i.i = shl nuw i32 %17, 3
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call.i39.i, i32 0, i32 19
  %35 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul.i.i, ptr %transfer_buffer_length.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.urb, ptr %call.i39.i, i32 0, i32 29, i32 0
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx.i.i, align 4
  %length.i.i = getelementptr %struct.urb, ptr %call.i39.i, i32 0, i32 29, i32 0, i32 1
  %37 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %17, ptr %length.i.i, align 4
  %arrayidx.1.i.i = getelementptr %struct.urb, ptr %call.i39.i, i32 0, i32 29, i32 1
  %38 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %17, ptr %arrayidx.1.i.i, align 4
  %length.1.i.i = getelementptr %struct.urb, ptr %call.i39.i, i32 0, i32 29, i32 1, i32 1
  %39 = ptrtoint ptr %length.1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %17, ptr %length.1.i.i, align 4
  %mul9.2.i.i = shl nuw nsw i32 %17, 1
  %arrayidx.2.i.i = getelementptr %struct.urb, ptr %call.i39.i, i32 0, i32 29, i32 2
  %40 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul9.2.i.i, ptr %arrayidx.2.i.i, align 4
  %length.2.i.i = getelementptr %struct.urb, ptr %call.i39.i, i32 0, i32 29, i32 2, i32 1
  %41 = ptrtoint ptr %length.2.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %17, ptr %length.2.i.i, align 4
  %mul9.3.i.i = mul nuw nsw i32 %17, 3
  %arrayidx.3.i.i = getelementptr %struct.urb, ptr %call.i39.i, i32 0, i32 29, i32 3
  %42 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul9.3.i.i, ptr %arrayidx.3.i.i, align 4
  %length.3.i.i = getelementptr %struct.urb, ptr %call.i39.i, i32 0, i32 29, i32 3, i32 1
  %43 = ptrtoint ptr %length.3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %17, ptr %length.3.i.i, align 4
  %mul9.4.i.i = shl nuw nsw i32 %17, 2
  %arrayidx.4.i.i = getelementptr %struct.urb, ptr %call.i39.i, i32 0, i32 29, i32 4
  %44 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul9.4.i.i, ptr %arrayidx.4.i.i, align 4
  %length.4.i.i = getelementptr %struct.urb, ptr %call.i39.i, i32 0, i32 29, i32 4, i32 1
  %45 = ptrtoint ptr %length.4.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %17, ptr %length.4.i.i, align 4
  %mul9.5.i.i = mul nuw i32 %17, 5
  %arrayidx.5.i.i = getelementptr %struct.urb, ptr %call.i39.i, i32 0, i32 29, i32 5
  %46 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul9.5.i.i, ptr %arrayidx.5.i.i, align 4
  %length.5.i.i = getelementptr %struct.urb, ptr %call.i39.i, i32 0, i32 29, i32 5, i32 1
  %47 = ptrtoint ptr %length.5.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %17, ptr %length.5.i.i, align 4
  %mul9.6.i.i = mul nuw i32 %17, 6
  %arrayidx.6.i.i = getelementptr %struct.urb, ptr %call.i39.i, i32 0, i32 29, i32 6
  %48 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul9.6.i.i, ptr %arrayidx.6.i.i, align 4
  %length.6.i.i = getelementptr %struct.urb, ptr %call.i39.i, i32 0, i32 29, i32 6, i32 1
  %49 = ptrtoint ptr %length.6.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %17, ptr %length.6.i.i, align 4
  %mul9.7.i.i = mul nuw i32 %17, 7
  %arrayidx.7.i.i = getelementptr %struct.urb, ptr %call.i39.i, i32 0, i32 29, i32 7
  %50 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %mul9.7.i.i, ptr %arrayidx.7.i.i, align 4
  %length.7.i.i = getelementptr %struct.urb, ptr %call.i39.i, i32 0, i32 29, i32 7, i32 1
  %51 = ptrtoint ptr %length.7.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %17, ptr %length.7.i.i, align 4
  %arrayidx.i = getelementptr %struct.usbtv, ptr %1, i32 0, i32 20, i32 %i.053.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i39.i, ptr %arrayidx.i, align 4
  %call15.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call.i39.i, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.end14.i.start_fail.i_crit_edge, label %for.cond.i

if.end14.i.start_fail.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %start_fail.i

start_fail.i:                                     ; preds = %if.end14.i.start_fail.i_crit_edge, %if.then6.i.i, %for.body.i.start_fail.i_crit_edge
  %ret.0.ph.i = phi i32 [ -12, %if.then6.i.i ], [ -12, %for.body.i.start_fail.i_crit_edge ], [ %call15.i, %if.end14.i.start_fail.i_crit_edge ]
  tail call fastcc void @usbtv_stop(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %start_fail.i, %for.cond.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %usbtv_setup_capture.exit.i.cleanup_crit_edge, %if.end4.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %ret.0.ph.i, %start_fail.i ], [ %call.i, %if.end.cleanup_crit_edge ], [ %retval.0.i.i, %usbtv_setup_capture.exit.i.cleanup_crit_edge ], [ %call6.i, %if.end4.i.cleanup_crit_edge ], [ -22, %if.end4.i.i.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbtv_stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %udev = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @usbtv_stop(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbtv_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %udev = getelementptr inbounds %struct.usbtv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %do.body4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vb2_buffer_done(ptr noundef %vb, i32 noundef 6) #10
  br label %cleanup

do.body4:                                         ; preds = %entry
  %buflock = getelementptr inbounds %struct.usbtv, ptr %3, i32 0, i32 8
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buflock) #10
  %list = getelementptr inbounds %struct.usbtv_buf, ptr %vb, i32 0, i32 1
  %bufs = getelementptr inbounds %struct.usbtv, ptr %3, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.usbtv, ptr %3, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %bufs) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.body4.list_add_tail.exit_crit_edge

do.body4.list_add_tail.exit_crit_edge:            ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bufs, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.usbtv_buf, ptr %vb, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body4.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buflock, i32 noundef %call8) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbtv_audio_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbtv_audio_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbtv_set_regs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtv_select_norm(ptr noundef %usbtv, i64 noundef %norm) unnamed_addr #0 align 64 {
entry:
  %cfg = alloca [1 x [2 x i16]], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i64 %norm, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.i:                                        ; preds = %entry
  %and.1.i = and i64 %norm, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.1.i)
  %tobool.not.1.i = icmp eq i64 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.if.end22_crit_edge, label %for.inc.i.if.then_crit_edge

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.i.if.end22_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then:                                          ; preds = %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  %i.024.lcssa.i = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.i.if.then_crit_edge ]
  %cap_width.i = getelementptr [2 x %struct.usbtv_norm_params], ptr @norm_params, i32 0, i32 %i.024.lcssa.i, i32 1
  %0 = ptrtoint ptr %cap_width.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cap_width.i, align 8
  %width.i = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 14
  %2 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %width.i, align 8
  %cap_height.i = getelementptr [2 x %struct.usbtv_norm_params], ptr @norm_params, i32 0, i32 %i.024.lcssa.i, i32 2
  %3 = ptrtoint ptr %cap_height.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cap_height.i, align 4
  %height.i = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 15
  %5 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %height.i, align 4
  %mul.i = mul i32 %4, %1
  %div7.i = sdiv i32 %mul.i, 960
  %n_chunks.i = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 16
  %6 = ptrtoint ptr %n_chunks.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div7.i, ptr %n_chunks.i, align 8
  %norm8.i = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 13
  %7 = ptrtoint ptr %norm8.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %norm, ptr %norm8.i, align 8
  %and = and i64 %norm, 61440
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.else:                                          ; preds = %if.then
  %and4 = and i64 %norm, 2559
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %if.else8, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.else8:                                         ; preds = %if.else
  %and9 = and i64 %norm, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9)
  %tobool10.not = icmp eq i64 %and9, 0
  br i1 %tobool10.not, label %if.else8.if.end22_crit_edge, label %if.else8.if.end16_crit_edge

if.else8.if.end16_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.else8.if.end22_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end16:                                         ; preds = %if.else8.if.end16_crit_edge, %if.else.if.end16_crit_edge, %if.then.if.end16_crit_edge
  %usbtv_select_norm.ntsc.sink = phi ptr [ @usbtv_select_norm.ntsc, %if.then.if.end16_crit_edge ], [ @usbtv_select_norm.pal, %if.else.if.end16_crit_edge ], [ @usbtv_select_norm.secam, %if.else8.if.end16_crit_edge ]
  %call3 = tail call i32 @usbtv_set_regs(ptr noundef %usbtv, ptr noundef nonnull %usbtv_select_norm.ntsc.sink, i32 noundef 23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool17.not = icmp eq i32 %call3, 0
  br i1 %tobool17.not, label %if.then18, label %if.end16.if.end22_crit_edge

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then18:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfg) #10
  %8 = getelementptr inbounds [2 x i16], ptr %cfg, i32 0, i32 1
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -16017, ptr %cfg, align 2
  %and.i33 = and i64 %norm, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i33)
  %tobool.not.i34 = icmp eq i64 %and.i33, 0
  br i1 %tobool.not.i34, label %if.end.i, label %if.then18.usbtv_norm_to_16f_reg.exit_crit_edge

if.then18.usbtv_norm_to_16f_reg.exit_crit_edge:   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtv_norm_to_16f_reg.exit

if.end.i:                                         ; preds = %if.then18
  %and1.i = and i64 %norm, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp eq i64 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.usbtv_norm_to_16f_reg.exit_crit_edge

if.end.i.usbtv_norm_to_16f_reg.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtv_norm_to_16f_reg.exit

if.end4.i:                                        ; preds = %if.end.i
  %and5.i = and i64 %norm, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5.i)
  %tobool6.not.i = icmp eq i64 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.usbtv_norm_to_16f_reg.exit_crit_edge

if.end4.i.usbtv_norm_to_16f_reg.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtv_norm_to_16f_reg.exit

if.end8.i:                                        ; preds = %if.end4.i
  %and9.i = and i64 %norm, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9.i)
  %tobool10.not.i = icmp eq i64 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.usbtv_norm_to_16f_reg.exit_crit_edge

if.end8.i.usbtv_norm_to_16f_reg.exit_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtv_norm_to_16f_reg.exit

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %and13.i = and i64 %norm, 2304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13.i)
  %tobool14.not.i = icmp eq i64 %and13.i, 0
  %..i = select i1 %tobool14.not.i, i16 0, i16 188
  br label %usbtv_norm_to_16f_reg.exit

usbtv_norm_to_16f_reg.exit:                       ; preds = %if.end12.i, %if.end8.i.usbtv_norm_to_16f_reg.exit_crit_edge, %if.end4.i.usbtv_norm_to_16f_reg.exit_crit_edge, %if.end.i.usbtv_norm_to_16f_reg.exit_crit_edge, %if.then18.usbtv_norm_to_16f_reg.exit_crit_edge
  %retval.0.i = phi i16 [ 184, %if.then18.usbtv_norm_to_16f_reg.exit_crit_edge ], [ 238, %if.end.i.usbtv_norm_to_16f_reg.exit_crit_edge ], [ 255, %if.end4.i.usbtv_norm_to_16f_reg.exit_crit_edge ], [ 168, %if.end8.i.usbtv_norm_to_16f_reg.exit_crit_edge ], [ %..i, %if.end12.i ]
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %retval.0.i, ptr %8, align 2
  %call21 = call i32 @usbtv_set_regs(ptr noundef %usbtv, ptr noundef nonnull %cfg, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfg) #10
  br label %if.end22

if.end22:                                         ; preds = %usbtv_norm_to_16f_reg.exit, %if.end16.if.end22_crit_edge, %if.else8.if.end22_crit_edge, %for.inc.i.if.end22_crit_edge
  %ret.1 = phi i32 [ %call3, %if.end16.if.end22_crit_edge ], [ %call21, %usbtv_norm_to_16f_reg.exit ], [ -22, %if.else8.if.end22_crit_edge ], [ -22, %for.inc.i.if.end22_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbtv_iso_cb(ptr noundef %ip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %ip, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %ip, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %3, label %do.end [
    i32 0, label %for.cond.preheader
    i32 -19, label %entry.cleanup_crit_edge
    i32 -2, label %entry.cleanup_crit_edge37
    i32 -104, label %entry.cleanup_crit_edge38
    i32 -108, label %entry.cleanup_crit_edge39
  ]

entry.cleanup_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %ip, i32 0, i32 24
  %5 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp35 = icmp sgt i32 %6, 0
  br i1 %cmp35, label %for.body.lr.ph, label %for.cond.preheader.resubmit_crit_edge

for.cond.preheader.resubmit_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %resubmit

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %ip, i32 0, i32 14
  %n_chunks.i = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 16
  %frame_id13.i = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 10
  %chunks_done.i = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 11
  %buflock.i = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 8
  %bufs.i = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 9
  %last_odd.i = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 18
  %sequence.i = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 19
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.21) #13
  br label %resubmit

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc10, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.urb, ptr %ip, i32 0, i32 29, i32 %i.036
  %actual_length = getelementptr %struct.urb, ptr %ip, i32 0, i32 29, i32 %i.036, i32 2
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  %11 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transfer_buffer, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp532 = icmp sgt i32 %10, 0
  br i1 %cmp532, label %for.body.for.body6_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body6:                                        ; preds = %usbtv_image_chunk.exit.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %mul34 = phi i32 [ %mul, %usbtv_image_chunk.exit.for.body6_crit_edge ], [ 0, %for.body.for.body6_crit_edge ]
  %offset3.033 = phi i32 [ %inc, %usbtv_image_chunk.exit.for.body6_crit_edge ], [ 0, %for.body.for.body6_crit_edge ]
  %arrayidx8 = getelementptr i8, ptr %add.ptr, i32 %mul34
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx8, align 4
  %and.i = and i32 %16, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2013265920, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -2013265920
  br i1 %cmp.i, label %if.end.i, label %for.body6.usbtv_image_chunk.exit_crit_edge

for.body6.usbtv_image_chunk.exit_crit_edge:       ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtv_image_chunk.exit

if.end.i:                                         ; preds = %for.body6
  %and2.i = lshr i32 %16, 16
  %shr.i = and i32 %and2.i, 255
  %and4.i = lshr i32 %16, 15
  %shr5.i = and i32 %and4.i, 1
  %and7.i = and i32 %16, 4095
  %17 = ptrtoint ptr %n_chunks.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_chunks.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and7.i, i32 %18)
  %cmp8.not.i = icmp slt i32 %and7.i, %18
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end.i.usbtv_image_chunk.exit_crit_edge

if.end.i.usbtv_image_chunk.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtv_image_chunk.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %cmp11.i = icmp eq i32 %and7.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.end10.i.if.end14.i_crit_edge

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %frame_id13.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr.i, ptr %frame_id13.i, align 4
  %20 = ptrtoint ptr %chunks_done.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %chunks_done.i, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end14.i_crit_edge
  %21 = ptrtoint ptr %frame_id13.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frame_id13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %shr.i)
  %cmp16.not.i = icmp eq i32 %22, %shr.i
  br i1 %cmp16.not.i, label %do.body19.i, label %if.end14.i.usbtv_image_chunk.exit_crit_edge

if.end14.i.usbtv_image_chunk.exit_crit_edge:      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtv_image_chunk.exit

do.body19.i:                                      ; preds = %if.end14.i
  %call21.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buflock.i) #10
  %23 = ptrtoint ptr %bufs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %bufs.i, align 4
  %cmp.i.not.i = icmp eq ptr %24, %bufs.i
  br i1 %cmp.i.not.i, label %do.body19.i.cleanup.sink.split.i_crit_edge, label %if.end27.i

do.body19.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end27.i:                                       ; preds = %do.body19.i
  %add.ptr.i = getelementptr i8, ptr %24, i32 -736
  %call30.i = tail call ptr @vb2_plane_vaddr(ptr noundef %add.ptr.i, i32 noundef 0) #10
  %arrayidx31.i = getelementptr i32, ptr %arrayidx8, i32 1
  %mul.i.i = shl nuw nsw i32 %and7.i, 1
  %25 = xor i32 %shr5.i, 1
  %div.i100.lhs.trunc.i = trunc i32 %mul.i.i to i16
  %div.i100.lhs.trunc.i.frozen = freeze i16 %div.i100.lhs.trunc.i
  %div.i100101.i = udiv i16 %div.i100.lhs.trunc.i.frozen, 3
  %26 = shl nuw nsw i16 %div.i100101.i, 1
  %mul1.i.i = zext i16 %26 to i32
  %add2.i.i = or i32 %25, %mul1.i.i
  %mul3.i.i = mul nuw nsw i32 %add2.i.i, 3
  %27 = mul i16 %div.i100101.i, 3
  %rem.i102103.i.decomposed = sub i16 %div.i100.lhs.trunc.i.frozen, %27
  %rem.i102.zext.i = zext i16 %rem.i102103.i.decomposed to i32
  %add4.i.i = add nuw nsw i32 %mul3.i.i, %rem.i102.zext.i
  %div6.i.i = mul nuw nsw i32 %add4.i.i, 120
  %arrayidx.i.i = getelementptr i32, ptr %call30.i, i32 %div6.i.i
  %28 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %arrayidx31.i, i32 480)
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx8, i32 121
  %add.1.i.i = or i32 %mul.i.i, 1
  %add.1.i.i.frozen = freeze i32 %add.1.i.i
  %div.1.i.i = udiv i32 %add.1.i.i.frozen, 3
  %mul1.1.i.i = shl nuw nsw i32 %div.1.i.i, 1
  %add2.1.i.i = or i32 %mul1.1.i.i, %25
  %mul3.1.i.i = mul nuw nsw i32 %add2.1.i.i, 3
  %29 = mul i32 %div.1.i.i, 3
  %rem.1.i.i.decomposed = sub i32 %add.1.i.i.frozen, %29
  %add4.1.i.i = add nuw i32 %mul3.1.i.i, %rem.1.i.i.decomposed
  %mul5.1.i.i = mul i32 %add4.1.i.i, 240
  %div6.1.i.i = sdiv i32 %mul5.1.i.i, 2
  %arrayidx.1.i.i = getelementptr i32, ptr %call30.i, i32 %div6.1.i.i
  %30 = call ptr @memcpy(ptr %arrayidx.1.i.i, ptr %add.ptr.i.i, i32 480)
  %31 = ptrtoint ptr %chunks_done.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chunks_done.i, align 8
  %inc.i = add i32 %32, 1
  store i32 %inc.i, ptr %chunks_done.i, align 8
  %33 = ptrtoint ptr %n_chunks.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_chunks.i, align 8
  %sub.i = add i32 %34, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %and7.i, i32 %sub.i)
  %cmp34.i = icmp eq i32 %and7.i, %sub.i
  br i1 %cmp34.i, label %if.then36.i, label %if.end27.i.cleanup.sink.split.i_crit_edge

if.end27.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.then36.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr5.i)
  %tobool.not.i.i = icmp eq i32 %shr5.i, 0
  br i1 %tobool.not.i.i, label %if.then36.i.if.end58.i_crit_edge, label %land.lhs.true.i

if.then36.i.if.end58.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

land.lhs.true.i:                                  ; preds = %if.then36.i
  %35 = ptrtoint ptr %last_odd.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %last_odd.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool38.not.i = icmp eq i32 %36, 0
  br i1 %tobool38.not.i, label %if.then39.i, label %land.lhs.true.i.if.end58.i_crit_edge

land.lhs.true.i.if.end58.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

if.then39.i:                                      ; preds = %land.lhs.true.i
  %num_planes.i.i = getelementptr i8, ptr %24, i32 -720
  %37 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not.i.i = icmp eq i32 %38, 0
  br i1 %cmp.not.i.i, label %if.then39.i.vb2_plane_size.exit.i_crit_edge, label %if.then.i.i

if.then39.i.vb2_plane_size.exit.i_crit_edge:      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_plane_size.exit.i

if.then.i.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  %length.i.i = getelementptr i8, ptr %24, i32 -648
  %39 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length.i.i, align 8
  br label %vb2_plane_size.exit.i

vb2_plane_size.exit.i:                            ; preds = %if.then.i.i, %if.then39.i.vb2_plane_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %40, %if.then.i.i ], [ 0, %if.then39.i.vb2_plane_size.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %34)
  %cmp45.i = icmp eq i32 %inc.i, %34
  %cond.i = select i1 %cmp45.i, i32 5, i32 6
  %field.i = getelementptr i8, ptr %24, i32 -292
  %41 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %field.i, align 4
  %42 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sequence.i, align 4
  %inc48.i = add i32 %43, 1
  store i32 %inc48.i, ptr %sequence.i, align 4
  %sequence50.i = getelementptr i8, ptr %24, i32 -272
  %44 = ptrtoint ptr %sequence50.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %sequence50.i, align 8
  %call.i.i = tail call i64 @ktime_get() #10
  %timestamp.i = getelementptr i8, ptr %24, i32 -712
  %45 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %46 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.not.i = icmp eq i32 %47, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit.i.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

vb2_plane_size.exit.i.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %vb2_plane_size.exit.i
  %length.i = getelementptr i8, ptr %24, i32 -648
  %48 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %retval.0.i.i)
  %cmp1.i = icmp ult i32 %49, %retval.0.i.i
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !93

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1163, i32 noundef 9, ptr noundef null) #10
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %50 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %51, %if.then38.i ], [ %retval.0.i.i, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr i8, ptr %24, i32 -652
  %52 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.i.vb2_set_plane_payload.exit_crit_edge
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i, i32 noundef %cond.i) #10
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %vb2_set_plane_payload.exit.list_del.exit.i_crit_edge

vb2_set_plane_payload.exit.list_del.exit.i_crit_edge: ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i.i, align 4
  %55 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %24, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %vb2_set_plane_payload.exit.list_del.exit.i_crit_edge
  %59 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %if.end58.i

if.end58.i:                                       ; preds = %list_del.exit.i, %land.lhs.true.i.if.end58.i_crit_edge, %if.then36.i.if.end58.i_crit_edge
  %61 = ptrtoint ptr %last_odd.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %shr5.i, ptr %last_odd.i, align 8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end58.i, %if.end27.i.cleanup.sink.split.i_crit_edge, %do.body19.i.cleanup.sink.split.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buflock.i, i32 noundef %call21.i) #10
  br label %usbtv_image_chunk.exit

usbtv_image_chunk.exit:                           ; preds = %cleanup.sink.split.i, %if.end14.i.usbtv_image_chunk.exit_crit_edge, %if.end.i.usbtv_image_chunk.exit_crit_edge, %for.body6.usbtv_image_chunk.exit_crit_edge
  %inc = add i32 %offset3.033, 1
  %mul = shl i32 %inc, 8
  %cmp5 = icmp slt i32 %mul, %10
  br i1 %cmp5, label %usbtv_image_chunk.exit.for.body6_crit_edge, label %usbtv_image_chunk.exit.for.end_crit_edge

usbtv_image_chunk.exit.for.end_crit_edge:         ; preds = %usbtv_image_chunk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

usbtv_image_chunk.exit.for.body6_crit_edge:       ; preds = %usbtv_image_chunk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6

for.end:                                          ; preds = %usbtv_image_chunk.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc10 = add nuw nsw i32 %i.036, 1
  %62 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %number_of_packets, align 4
  %cmp = icmp slt i32 %inc10, %63
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.resubmit_crit_edge

for.end.resubmit_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %resubmit

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

resubmit:                                         ; preds = %for.end.resubmit_crit_edge, %do.end, %for.cond.preheader.resubmit_crit_edge
  %call = tail call i32 @usb_submit_urb(ptr noundef %ip, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp12 = icmp slt i32 %call, 0
  br i1 %cmp12, label %do.end15, label %resubmit.cleanup_crit_edge

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end15:                                         ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %65, ptr noundef nonnull @.str.24) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %resubmit.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge37, %entry.cleanup_crit_edge38, %entry.cleanup_crit_edge39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtv_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 3) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %5 = and i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963776, i32 %5)
  %switch = icmp eq i32 %5, 9963776
  br i1 %switch, label %if.then3, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then3:                                         ; preds = %if.end
  %udev = getelementptr i8, ptr %1, i32 -132
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i = shl i32 %9, 8
  %or6 = or i32 %shl.i, -2147483520
  %call7 = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or6, i8 noundef zeroext 11, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -15804, ptr noundef nonnull %call7.i, i16 noundef zeroext 3, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then3.do.end_crit_edge, label %if.end11thread-pre-split

if.then3.do.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end11thread-pre-split:                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %id, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end11thread-pre-split, %if.end.if.end11_crit_edge
  %11 = phi i32 [ %.pr, %if.end11thread-pre-split ], [ %4, %if.end.if.end11_crit_edge ]
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %11, label %if.end11.cleanup.sink.split_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb23
    i32 9963778, label %sw.bb39
    i32 9963779, label %sw.bb48
    i32 9963803, label %sw.bb72
  ]

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call7.i, align 8
  %15 = and i8 %14, -16
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %18 = lshr i32 %17, 8
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 15
  %conv18 = or i8 %20, %15
  store i8 %conv18, ptr %call7.i, align 8
  %conv21 = trunc i32 %17 to i8
  %arrayidx22 = getelementptr i8, ptr %call7.i, i32 2
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv21, ptr %arrayidx22, align 2
  br label %error

sw.bb23:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %call7.i, align 8
  %24 = and i8 %23, 15
  %val28 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %25 = ptrtoint ptr %val28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val28, align 4
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, -16
  %conv34 = or i8 %29, %24
  store i8 %conv34, ptr %call7.i, align 8
  %conv37 = trunc i32 %26 to i8
  %arrayidx38 = getelementptr i8, ptr %call7.i, i32 1
  %30 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv37, ptr %arrayidx38, align 1
  br label %error

sw.bb39:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %val40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %31 = ptrtoint ptr %val40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val40, align 4
  %33 = lshr i32 %32, 8
  %conv42 = trunc i32 %33 to i8
  %34 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv42, ptr %call7.i, align 8
  %conv46 = trunc i32 %32 to i8
  %arrayidx47 = getelementptr i8, ptr %call7.i, i32 1
  %35 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv46, ptr %arrayidx47, align 1
  br label %error

sw.bb48:                                          ; preds = %if.end11
  %val49 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %36 = ptrtoint ptr %val49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp50 = icmp sgt i32 %37, 0
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #12
  %38 = lshr i32 %37, 8
  %39 = trunc i32 %38 to i8
  %conv55 = add i8 %39, -110
  %40 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv55, ptr %call7.i, align 8
  %conv59 = trunc i32 %37 to i8
  %arrayidx60 = getelementptr i8, ptr %call7.i, i32 1
  %41 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv59, ptr %arrayidx60, align 1
  br label %error

if.else:                                          ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 0, %37
  %42 = lshr i32 %sub, 8
  %43 = trunc i32 %42 to i8
  %conv64 = add i8 %43, -126
  %44 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv64, ptr %call7.i, align 8
  %45 = trunc i32 %37 to i8
  %conv69 = sub i8 0, %45
  %arrayidx70 = getelementptr i8, ptr %call7.i, i32 1
  %46 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv69, ptr %arrayidx70, align 1
  br label %error

sw.bb72:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %call7.i, align 8
  %val74 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %48 = ptrtoint ptr %val74 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val74, align 4
  %conv75 = trunc i32 %49 to i8
  %arrayidx76 = getelementptr i8, ptr %call7.i, i32 1
  %50 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv75, ptr %arrayidx76, align 1
  br label %error

error:                                            ; preds = %sw.bb72, %if.else, %if.then52, %sw.bb39, %sw.bb23, %sw.bb
  %index.0 = phi i16 [ -15815, %sw.bb72 ], [ -15808, %if.then52 ], [ -15808, %if.else ], [ -15806, %sw.bb39 ], [ -15804, %sw.bb23 ], [ -15804, %sw.bb ]
  %size.0 = phi i16 [ 2, %sw.bb72 ], [ 2, %if.then52 ], [ 2, %if.else ], [ 2, %sw.bb39 ], [ 3, %sw.bb23 ], [ 3, %sw.bb ]
  %udev77 = getelementptr i8, ptr %1, i32 -132
  %51 = ptrtoint ptr %udev77 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %udev77, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  %shl.i130 = shl i32 %54, 8
  %or80 = or i32 %shl.i130, -2147483648
  %call81 = tail call i32 @usb_control_msg(ptr noundef %52, i32 noundef %or80, i8 noundef zeroext 11, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %index.0, ptr noundef nonnull %call7.i, i16 noundef zeroext %size.0, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %error.do.end_crit_edge, label %error.cleanup.sink.split_crit_edge

error.cleanup.sink.split_crit_edge:               ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

error.do.end_crit_edge:                           ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %error.do.end_crit_edge, %if.then3.do.end_crit_edge
  %ret.0134 = phi i32 [ %call81, %error.do.end_crit_edge ], [ %call7, %if.then3.do.end_crit_edge ]
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.27) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %error.cleanup.sink.split_crit_edge, %if.end11.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.end11.cleanup.sink.split_crit_edge ], [ %ret.0134, %do.end ], [ %call81, %error.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

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
define internal i32 @usbtv_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.17, i32 noundef 16) #10
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.17, i32 noundef 32) #10
  %udev = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 1
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
  %call.i8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.29, ptr noundef %7, ptr noundef %devpath.i) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbtv_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1448695129, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtv_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %width = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %height3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height3, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1448695129, ptr %pixelformat, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %field, align 4
  %10 = load i32, ptr %width, align 8
  %mul = shl i32 %10, 1
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %11 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %bytesperline, align 4
  %mul12 = mul i32 %mul, %6
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %12 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul12, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %colorspace, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtv_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %norm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %norm1 = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %norm1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %norm1, align 8
  %4 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %norm, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtv_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %norm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %and = and i64 %norm, 16775679
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call fastcc i32 @usbtv_select_norm(ptr noundef %1, i64 noundef %norm)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtv_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %.str.31.sink = phi ptr [ @.str.31, %sw.bb2 ], [ @.str.30, %entry.sw.epilog_crit_edge ]
  %name3 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %call5 = tail call i32 @strscpy(ptr noundef %name3, ptr noundef nonnull %.str.31.sink, i32 noundef 32) #10
  %type = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %type, align 4
  %tvnorms = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 4, i32 22
  %6 = ptrtoint ptr %tvnorms to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tvnorms, align 8
  %std = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 5
  %8 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtv_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtv_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = zext i32 %i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %i, label %entry.usbtv_select_input.exit_crit_edge [
    i32 0, label %entry.sw.epilog.i_crit_edge
    i32 1, label %sw.bb1.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

entry.usbtv_select_input.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtv_select_input.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %entry.sw.epilog.i_crit_edge
  %usbtv_select_input.svideo.sink.i = phi ptr [ @usbtv_select_input.svideo, %sw.bb1.i ], [ @usbtv_select_input.composite, %entry.sw.epilog.i_crit_edge ]
  %call2.i = tail call i32 @usbtv_set_regs(ptr noundef %1, ptr noundef nonnull %usbtv_select_input.svideo.sink.i, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.epilog.i.usbtv_select_input.exit_crit_edge

sw.epilog.i.usbtv_select_input.exit_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtv_select_input.exit

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %input3.i = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %input3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %i, ptr %input3.i, align 4
  br label %usbtv_select_input.exit

usbtv_select_input.exit:                          ; preds = %if.then.i, %sw.epilog.i.usbtv_select_input.exit_crit_edge, %entry.usbtv_select_input.exit_crit_edge
  %ret.010.i = phi i32 [ 0, %if.then.i ], [ %call2.i, %sw.epilog.i.usbtv_select_input.exit_crit_edge ], [ -22, %entry.usbtv_select_input.exit_crit_edge ]
  ret i32 %ret.010.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !68, !70, !71, !72, !73, !75, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @usbtv_video_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 884, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @usbtv_video_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 885, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @usbtv_video_init.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 886, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 900, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.9, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @usbtv_video_init._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @usbtv_video_init._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @usbtv_video_init._key, !18, !"_key", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 905, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 918, i32 3}
!22 = !{ptr @usbtv_video_init._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @usbtv_video_init._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 927, i32 3}
!26 = !{ptr @usbtv_video_init._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @usbtv_video_init._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 932, i32 28}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 945, i32 3}
!32 = !{ptr @usbtv_video_init._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @usbtv_video_init._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @norm_params, !35, !"norm_params", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 50, i32 39}
!36 = !{ptr @usbtv_vb2_ops, !37, !"usbtv_vb2_ops", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 774, i32 29}
!38 = !{ptr @usbtv_setup_capture.setup, !39, !"setup", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 270, i32 19}
!40 = !{ptr @usbtv_select_norm.pal, !41, !"pal", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 153, i32 19}
!42 = !{ptr @usbtv_select_norm.ntsc, !43, !"ntsc", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 181, i32 19}
!44 = !{ptr @usbtv_select_norm.secam, !45, !"secam", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 209, i32 19}
!46 = distinct !{null, !47, !"ntsc_mask", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 241, i32 28}
!48 = distinct !{null, !49, !"pal_mask", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 243, i32 28}
!50 = !{ptr @usbtv_select_input.composite, !51, !"composite", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 91, i32 19}
!52 = !{ptr @usbtv_select_input.svideo, !53, !"svideo", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 99, i32 19}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 474, i32 3}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @usbtv_iso_cb._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @usbtv_iso_cb._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 492, i32 3}
!61 = !{ptr @usbtv_iso_cb._entry.23, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @usbtv_iso_cb._entry_ptr.25, !60, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @usbtv_ctrl_ops, !67, !"usbtv_ctrl_ops", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 865, i32 35}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 859, i32 3}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @usbtv_s_ctrl._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @usbtv_s_ctrl._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @usbtv_fops, !74, !"usbtv_fops", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 710, i32 42}
!75 = !{ptr @usbtv_ioctl_ops, !76, !"usbtv_ioctl_ops", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 688, i32 36}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/usb.h", i32 912, i32 31}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 616, i32 20}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/usbtv/usbtv-video.c", i32 619, i32 20}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"branch_weights", i32 1, i32 2000}
!93 = !{!"branch_weights", i32 2000, i32 1}
