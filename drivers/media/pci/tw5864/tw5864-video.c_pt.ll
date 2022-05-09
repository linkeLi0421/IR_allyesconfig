; ModuleID = '/llk/IR_all_yes/drivers/media/pci/tw5864/tw5864-video.c_pt.bc'
source_filename = "../drivers/media/pci/tw5864/tw5864-video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tw5864_input = type { i32, ptr, %struct.mutex, %struct.spinlock, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [192 x i16], i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.tw5864_dev = type { %struct.spinlock, %struct.v4l2_device, [4 x %struct.tw5864_input], [4 x %struct.tw5864_h264_frame], i32, i32, %struct.tasklet_struct, i32, i32, [64 x i8], ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.tw5864_h264_frame = type { %struct.tw5864_dma_buf, %struct.tw5864_dma_buf, i32, i32, ptr, i64, i32, i32 }
%struct.tw5864_dma_buf = type { ptr, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.120, i32 }
%union.anon.120 = type { ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%struct.tw5864_buf = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.111 }
%union.anon.111 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.83 }
%union.anon.83 = type { i32, [28 x i8] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.112, [2 x i32] }
%union.anon.112 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.113, [2 x i32] }
%union.anon.113 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%struct.v4l2_event = type { i32, %union.anon.123, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.123 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.124, i32, i32, i32, i32, i32 }
%union.anon.124 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }

@tw5864_video_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 964, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dma alloc fail\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tw5864_video_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/tw5864/tw5864-video.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tw5864_video_init._entry_ptr = internal global ptr @tw5864_video_init._entry, section ".printk_index", align 4
@tw5864_video_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 973, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@tw5864_video_init._entry_ptr.6 = internal global ptr @tw5864_video_init._entry.5, section ".printk_index", align 4
@tw5864_prepare_frame_headers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tw5864_video_input_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&input->lock\00", [19 x i8] zeroinitializer }, align 32
@tw5864_video_input_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&input->slock\00", [18 x i8] zeroinitializer }, align 32
@tw5864_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @tw5864_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tw5864_start_streaming, ptr @tw5864_stop_streaming, ptr @tw5864_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@tw5864_video_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @video_fops, i32 83886081, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"tw5864_video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 16777215, ptr @video_device_release_empty, ptr @video_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@tw5864_video_input_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tw5864_video:1131:(hdl)->_lock\00", [33 x i8] zeroinitializer }, align 32
@tw5864_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @tw5864_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@tw5864_md_thresholds = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @tw5864_ctrl_ops, ptr null, i32 10684675, ptr null, i32 0, i64 0, i64 30, i64 1, i64 14, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] [i32 16, i32 12, i32 0, i32 0], i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@tw5864_video_input_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1169, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Registered video device %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tw5864_video_input_init\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tw5864_video_input_init._entry_ptr = internal global ptr @tw5864_video_input_init._entry, section ".printk_index", align 4
@tw5864_enable_input.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tw5864\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tw5864_enable_input\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enabling channel %d\0A\00", [43 x i8] zeroinitializer }, align 32
@lambda_lookup_table = internal constant { [52 x i32], [48 x i8] } { [52 x i32] [i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 64, i32 64, i32 64, i32 64, i32 96, i32 96, i32 96, i32 128, i32 128, i32 128, i32 160, i32 192, i32 192, i32 224, i32 256, i32 288, i32 320, i32 352, i32 416, i32 448, i32 512, i32 576, i32 640, i32 736, i32 800, i32 928, i32 1024, i32 1152, i32 1280, i32 1440, i32 1632, i32 1824, i32 2048, i32 2304, i32 2592, i32 2912], [48 x i8] zeroinitializer }, align 32
@intra4x4_lambda3 = internal constant { [52 x i32], [48 x i8] } { [52 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 6, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 14, i32 16, i32 18, i32 20, i32 23, i32 25, i32 29, i32 32, i32 36, i32 40, i32 45, i32 51, i32 57, i32 64, i32 72, i32 81, i32 91], [48 x i8] zeroinitializer }, align 32
@tw5864_disable_input.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tw5864_disable_input\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Disabling channel %d\0A\00", [42 x i8] zeroinitializer }, align 32
@video_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @tw5864_querycap, ptr @tw5864_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tw5864_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tw5864_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tw5864_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @tw5864_g_std, ptr @tw5864_s_std, ptr @tw5864_querystd, ptr @tw5864_enum_input, ptr @tw5864_g_input, ptr @tw5864_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tw5864_g_parm, ptr @tw5864_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr @tw5864_g_reg, ptr @tw5864_s_reg, ptr null, ptr @tw5864_enum_framesizes, ptr @tw5864_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tw5864_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TW5864 Encoder %d\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@tw5864_fmt_vid_cap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tw5864_input_std_get.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tw5864_input_std_get\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Video format detection is in progress, please wait\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Encoder %d\00", [21 x i8] zeroinitializer }, align 32
@tw5864_frameinterval_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 725, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"tw5864_frameinterval_get requested for unknown std %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tw5864_frameinterval_get\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tw5864_frameinterval_get._entry_ptr = internal global ptr @tw5864_frameinterval_get._entry, section ".printk_index", align 4
@tw5864_handle_frame.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 1, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tw5864_handle_frame\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vb is empty, dropping frame\0A\00", [35 x i8] zeroinitializer }, align 32
@tw5864_handle_frame.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@tw5864_handle_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 1406, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [123 x i8], [37 x i8] } { [123 x i8] c"Left space in vb2 buffer, %d bytes, is less than considered safely enough to put frame of length %d. Dropping this frame.\0A\00", [37 x i8] zeroinitializer }, align 32
@tw5864_handle_frame._entry_ptr = internal global ptr @tw5864_handle_frame._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@forward_quantization_table = internal constant { [96 x i16], [32 x i8] } { [96 x i16] [i16 13107, i16 8066, i16 13107, i16 8066, i16 8066, i16 5243, i16 8066, i16 5243, i16 13107, i16 8066, i16 13107, i16 8066, i16 8066, i16 5243, i16 8066, i16 5243, i16 11916, i16 7490, i16 11916, i16 7490, i16 7490, i16 4660, i16 7490, i16 4660, i16 11916, i16 7490, i16 11916, i16 7490, i16 7490, i16 4660, i16 7490, i16 4660, i16 10082, i16 6554, i16 10082, i16 6554, i16 6554, i16 4194, i16 6554, i16 4194, i16 10082, i16 6554, i16 10082, i16 6554, i16 6554, i16 4194, i16 6554, i16 4194, i16 9362, i16 5825, i16 9362, i16 5825, i16 5825, i16 3647, i16 5825, i16 3647, i16 9362, i16 5825, i16 9362, i16 5825, i16 5825, i16 3647, i16 5825, i16 3647, i16 8192, i16 5243, i16 8192, i16 5243, i16 5243, i16 3355, i16 5243, i16 3355, i16 8192, i16 5243, i16 8192, i16 5243, i16 5243, i16 3355, i16 5243, i16 3355, i16 7282, i16 4559, i16 7282, i16 4559, i16 4559, i16 2893, i16 4559, i16 2893, i16 7282, i16 4559, i16 7282, i16 4559, i16 4559, i16 2893, i16 4559, i16 2893], [32 x i8] zeroinitializer }, align 32
@inverse_quantization_table = internal constant { [96 x i16], [32 x i8] } { [96 x i16] [i16 -32758, i16 -32755, i16 -32758, i16 -32755, i16 -32755, i16 -32752, i16 -32755, i16 -32752, i16 -32758, i16 -32755, i16 -32758, i16 -32755, i16 -32755, i16 -32752, i16 -32755, i16 -32752, i16 -32757, i16 -32754, i16 -32757, i16 -32754, i16 -32754, i16 -32750, i16 -32754, i16 -32750, i16 -32757, i16 -32754, i16 -32757, i16 -32754, i16 -32754, i16 -32750, i16 -32754, i16 -32750, i16 -32755, i16 -32752, i16 -32755, i16 -32752, i16 -32752, i16 -32748, i16 -32752, i16 -32748, i16 -32755, i16 -32752, i16 -32755, i16 -32752, i16 -32752, i16 -32748, i16 -32752, i16 -32748, i16 -32754, i16 -32750, i16 -32754, i16 -32750, i16 -32750, i16 -32745, i16 -32750, i16 -32745, i16 -32754, i16 -32750, i16 -32754, i16 -32750, i16 -32750, i16 -32745, i16 -32750, i16 -32745, i16 -32752, i16 -32748, i16 -32752, i16 -32748, i16 -32748, i16 -32743, i16 -32748, i16 -32743, i16 -32752, i16 -32748, i16 -32752, i16 -32748, i16 -32748, i16 -32743, i16 -32748, i16 -32743, i16 -32750, i16 -32745, i16 -32750, i16 -32745, i16 -32745, i16 -32739, i16 -32745, i16 -32739, i16 -32750, i16 -32745, i16 -32750, i16 -32745, i16 -32745, i16 -32739, i16 -32745, i16 -32739], [32 x i8] zeroinitializer }, align 32
@encoder_vlc_lookup_table = internal constant { <{ [1010 x i16], [14 x i16] }>, [512 x i8] } { <{ [1010 x i16], [14 x i16] }> <{ [1010 x i16] [i16 17, i16 0, i16 0, i16 0, i16 101, i16 33, i16 0, i16 0, i16 135, i16 100, i16 49, i16 0, i16 151, i16 134, i16 117, i16 83, i16 167, i16 150, i16 133, i16 99, i16 183, i16 166, i16 149, i16 116, i16 223, i16 182, i16 165, i16 132, i16 219, i16 222, i16 181, i16 148, i16 216, i16 218, i16 221, i16 164, i16 239, i16 238, i16 217, i16 180, i16 235, i16 234, i16 237, i16 220, i16 255, i16 254, i16 233, i16 236, i16 251, i16 250, i16 253, i16 232, i16 271, i16 241, i16 249, i16 252, i16 267, i16 270, i16 269, i16 248, i16 263, i16 266, i16 265, i16 268, i16 260, i16 262, i16 261, i16 264, i16 35, i16 0, i16 0, i16 0, i16 107, i16 34, i16 0, i16 0, i16 103, i16 87, i16 51, i16 0, i16 119, i16 106, i16 105, i16 69, i16 135, i16 102, i16 101, i16 68, i16 132, i16 118, i16 117, i16 86, i16 151, i16 134, i16 133, i16 104, i16 191, i16 150, i16 149, i16 100, i16 187, i16 190, i16 189, i16 116, i16 207, i16 186, i16 185, i16 148, i16 203, i16 206, i16 205, i16 188, i16 200, i16 202, i16 201, i16 184, i16 223, i16 222, i16 221, i16 204, i16 219, i16 218, i16 217, i16 220, i16 215, i16 235, i16 214, i16 216, i16 233, i16 232, i16 234, i16 209, i16 231, i16 230, i16 229, i16 228, i16 79, i16 0, i16 0, i16 0, i16 111, i16 78, i16 0, i16 0, i16 107, i16 95, i16 77, i16 0, i16 104, i16 92, i16 94, i16 76, i16 127, i16 90, i16 91, i16 75, i16 123, i16 88, i16 89, i16 74, i16 121, i16 110, i16 109, i16 73, i16 120, i16 106, i16 105, i16 72, i16 143, i16 126, i16 125, i16 93, i16 139, i16 142, i16 122, i16 108, i16 159, i16 138, i16 141, i16 124, i16 155, i16 158, i16 137, i16 140, i16 152, i16 154, i16 157, i16 136, i16 173, i16 151, i16 153, i16 156, i16 169, i16 172, i16 171, i16 170, i16 165, i16 168, i16 167, i16 166, i16 161, i16 164, i16 163, i16 162, i16 33, i16 0, i16 0, i16 0, i16 103, i16 17, i16 0, i16 0, i16 100, i16 102, i16 49, i16 0, i16 99, i16 115, i16 114, i16 101, i16 98, i16 131, i16 130, i16 112, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 17, i16 16, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 17, i16 33, i16 32, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 35, i16 34, i16 33, i16 32, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 35, i16 34, i16 33, i16 49, i16 48, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 35, i16 34, i16 51, i16 50, i16 49, i16 48, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 35, i16 48, i16 49, i16 51, i16 50, i16 53, i16 52, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 55, i16 54, i16 53, i16 52, i16 51, i16 50, i16 49, i16 65, i16 81, i16 97, i16 113, i16 129, i16 145, i16 161, i16 177, i16 0, i16 2, i16 0, i16 228, i16 17, i16 244, i16 2, i16 36, i16 3, i16 5, i16 18, i16 52, i16 19, i16 101, i16 36, i16 19, i16 99, i16 21, i16 34, i16 117, i16 52, i16 68, i16 35, i16 35, i16 115, i16 84, i16 51, i16 51, i16 4, i16 67, i16 20, i16 17, i16 67, i16 20, i16 1, i16 37, i16 21, i16 53, i16 37, i16 100, i16 85, i16 69, i16 53, i16 116, i16 101, i16 133, i16 213, i16 18, i16 149, i16 85, i16 69, i16 149, i16 229, i16 132, i16 117, i16 34, i16 165, i16 148, i16 133, i16 50, i16 181, i16 3, i16 197, i16 1, i16 68, i16 165, i16 50, i16 181, i16 148, i16 197, i16 164, i16 164, i16 84, i16 213, i16 180, i16 180, i16 100, i16 245, i16 245, i16 83, i16 212, i16 229, i16 196, i16 261, i16 261, i16 196, i16 116, i16 99, i16 228, i16 212, i16 132, i16 115, i16 244, i16 4, i16 5, i16 0, i16 83, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 17, i16 33, i16 49, i16 48, i16 17, i16 33, i16 32, i16 0, i16 17, i16 16, i16 0, i16 0, i16 17, i16 51, i16 50, i16 67, i16 66, i16 83, i16 82, i16 99, i16 98, i16 115, i16 114, i16 131, i16 130, i16 147, i16 146, i16 145, i16 55, i16 54, i16 53, i16 52, i16 51, i16 69, i16 68, i16 67, i16 66, i16 83, i16 82, i16 99, i16 98, i16 97, i16 96, i16 0, i16 69, i16 55, i16 54, i16 53, i16 68, i16 67, i16 52, i16 51, i16 66, i16 83, i16 82, i16 97, i16 81, i16 96, i16 0, i16 0, i16 83, i16 55, i16 69, i16 68, i16 54, i16 53, i16 52, i16 67, i16 51, i16 66, i16 82, i16 81, i16 80, i16 0, i16 0, i16 0, i16 69, i16 68, i16 67, i16 55, i16 54, i16 53, i16 52, i16 51, i16 66, i16 81, i16 65, i16 80, i16 0, i16 0, i16 0, i16 0, i16 97, i16 81, i16 55, i16 54, i16 53, i16 52, i16 51, i16 50, i16 65, i16 49, i16 96, i16 0, i16 0, i16 0, i16 0, i16 0, i16 97, i16 81, i16 53, i16 52, i16 51, i16 35, i16 50, i16 65, i16 49, i16 96, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 97, i16 65, i16 81, i16 51, i16 35, i16 34, i16 50, i16 49, i16 96, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 97, i16 96, i16 65, i16 35, i16 34, i16 49, i16 33, i16 81, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 81, i16 80, i16 49, i16 35, i16 34, i16 33, i16 65, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 64, i16 65, i16 49, i16 50, i16 17, i16 51, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 64, i16 65, i16 33, i16 17, i16 49, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 48, i16 49, i16 17, i16 33, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 32, i16 33, i16 17, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 16, i16 17], [14 x i16] zeroinitializer }>, [512 x i8] zeroinitializer }, align 32
@switch.table.tw5864_fmt_vid_cap = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 480, i32 576, i32 576], [20 x i8] zeroinitializer }, align 32
@switch.table.tw5864_g_parm = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1001, i32 1, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.tw5864_g_parm.32 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 30000, i32 25, i32 25], [20 x i8] zeroinitializer }, align 32
@switch.table.tw5864_s_parm = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 30000, i32 25, i32 25], [20 x i8] zeroinitializer }, align 32
@switch.table.tw5864_s_parm.33 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1001, i32 1, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.tw5864_s_parm.34 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1001, i32 1, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.tw5864_s_parm.35 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 30000, i32 25, i32 25], [20 x i8] zeroinitializer }, align 32
@switch.table.tw5864_enum_frameintervals = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 30000, i32 25, i32 25], [20 x i8] zeroinitializer }, align 32
@switch.table.tw5864_enum_frameintervals.36 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1001, i32 1, i32 1], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.37 = internal global [10 x i64] [i64 8, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 10029515, i64 10029665, i64 10684674, i64 10684675]
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 964, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 973, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1104, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1105, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"tw5864_video_qops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 468, i32 29 }
@___asan_gen_.74 = private unnamed_addr constant [22 x i8] c"tw5864_video_template\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 923, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1131, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"tw5864_ctrl_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 829, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant [21 x i8] c"tw5864_md_thresholds\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 934, i32 38 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1168, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 238, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"lambda_lookup_table\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 155, i32 27 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"intra4x4_lambda3\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 165, i32 27 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 419, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [11 x i8] c"video_fops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 833, i32 42 }
@___asan_gen_.125 = private unnamed_addr constant [16 x i8] c"video_ioctl_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 890, i32 36 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 605, i32 41 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 607, i32 25 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 217, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 570, i32 37 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 724, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1393, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1404, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1163, i32 7 }
@___asan_gen_.170 = private unnamed_addr constant [27 x i8] c"forward_quantization_table\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 19, i32 18 }
@___asan_gen_.173 = private unnamed_addr constant [27 x i8] c"inverse_quantization_table\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 34, i32 18 }
@___asan_gen_.176 = private unnamed_addr constant [25 x i8] c"encoder_vlc_lookup_table\00", align 1
@___asan_gen_.177 = private constant [43 x i8] c"../drivers/media/pci/tw5864/tw5864-video.c\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 49, i32 18 }
@___asan_gen_.179 = private unnamed_addr constant [32 x i8] c"switch.table.tw5864_fmt_vid_cap\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [27 x i8] c"switch.table.tw5864_g_parm\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [30 x i8] c"switch.table.tw5864_g_parm.32\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [27 x i8] c"switch.table.tw5864_s_parm\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [30 x i8] c"switch.table.tw5864_s_parm.33\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [30 x i8] c"switch.table.tw5864_s_parm.34\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [30 x i8] c"switch.table.tw5864_s_parm.35\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [40 x i8] c"switch.table.tw5864_enum_frameintervals\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [43 x i8] c"switch.table.tw5864_enum_frameintervals.36\00", align 1
@llvm.compiler.used = appending global [61 x ptr] [ptr @tw5864_frameinterval_get._entry, ptr @tw5864_frameinterval_get._entry_ptr, ptr @tw5864_handle_frame._entry, ptr @tw5864_handle_frame._entry_ptr, ptr @tw5864_video_init._entry, ptr @tw5864_video_init._entry.5, ptr @tw5864_video_init._entry_ptr, ptr @tw5864_video_init._entry_ptr.6, ptr @tw5864_video_input_init._entry, ptr @tw5864_video_input_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @tw5864_video_input_init.__key, ptr @.str.7, ptr @tw5864_video_input_init.__key.8, ptr @.str.9, ptr @tw5864_video_qops, ptr @tw5864_video_template, ptr @tw5864_video_input_init._key, ptr @.str.10, ptr @tw5864_ctrl_ops, ptr @tw5864_md_thresholds, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @lambda_lookup_table, ptr @intra4x4_lambda3, ptr @.str.17, ptr @.str.18, ptr @video_fops, ptr @video_ioctl_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @forward_quantization_table, ptr @inverse_quantization_table, ptr @encoder_vlc_lookup_table, ptr @switch.table.tw5864_fmt_vid_cap, ptr @switch.table.tw5864_g_parm, ptr @switch.table.tw5864_g_parm.32, ptr @switch.table.tw5864_s_parm, ptr @switch.table.tw5864_s_parm.33, ptr @switch.table.tw5864_s_parm.34, ptr @switch.table.tw5864_s_parm.35, ptr @switch.table.tw5864_enum_frameintervals, ptr @switch.table.tw5864_enum_frameintervals.36], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_video_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_video_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_video_input_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_video_input_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_video_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_video_input_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_md_thresholds to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_video_input_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lambda_lookup_table to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intra4x4_lambda3 to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_frameinterval_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_handle_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 123, i32 160, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @forward_quantization_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inverse_quantization_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encoder_vlc_lookup_table to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tw5864_fmt_vid_cap to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tw5864_g_parm to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tw5864_g_parm.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tw5864_s_parm to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tw5864_s_parm.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tw5864_s_parm.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tw5864_s_parm.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tw5864_enum_frameintervals to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tw5864_enum_frameintervals.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tw5864_request_encoded_frame(ptr noundef %input) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  tail call void @arm_heavy_mb() #9
  %mmio = getelementptr inbounds %struct.tw5864_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  %5 = or i32 %4, -1073741824
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %reg_emu = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 25
  %8 = ptrtoint ptr %reg_emu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_emu, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %10) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %reg_interlacing = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 21
  %13 = ptrtoint ptr %reg_interlacing to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_interlacing, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio, align 4
  %add.ptr13 = getelementptr i8, ptr %17, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %15) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %reg_dsp = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 24
  %18 = ptrtoint ptr %reg_dsp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_dsp, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio, align 4
  %add.ptr18 = getelementptr i8, ptr %22, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %20) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  %reg_dsp_qp = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 26
  %23 = ptrtoint ptr %reg_dsp_qp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_dsp_qp, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio, align 4
  %add.ptr23 = getelementptr i8, ptr %27, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %25) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %reg_dsp_ref_mvp_lambda = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 27
  %28 = ptrtoint ptr %reg_dsp_ref_mvp_lambda to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg_dsp_ref_mvp_lambda, align 8
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio, align 4
  %add.ptr28 = getelementptr i8, ptr %32, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %30) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %reg_dsp_i4x4_weight = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 28
  %33 = ptrtoint ptr %reg_dsp_i4x4_weight to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg_dsp_i4x4_weight, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio, align 4
  %add.ptr33 = getelementptr i8, ptr %37, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %35) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio, align 4
  %add.ptr40 = getelementptr i8, ptr %39, i32 1040
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #9, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %41 = and i32 %40, -458753
  %42 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio, align 4
  %add.ptr46 = getelementptr i8, ptr %43, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %41) #9, !srcloc !101
  %frame_gop_seqno = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 12
  %44 = ptrtoint ptr %frame_gop_seqno to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %frame_gop_seqno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp = icmp eq i32 %45, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio, align 4
  %add.ptr51 = getelementptr i8, ptr %47, i32 524
  br i1 %cmp, label %do.body47, label %do.body54

do.body47:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 134217728) #9, !srcloc !101
  %h264_idr_pic_id = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 13
  %48 = ptrtoint ptr %h264_idr_pic_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %h264_idr_pic_id, align 4
  %inc = add i32 %49, 1
  %and53 = and i32 %inc, 15
  store i32 %and53, ptr %h264_idr_pic_id, align 4
  br label %if.end

do.body54:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 738197504) #9, !srcloc !101
  br label %if.end

if.end:                                           ; preds = %do.body54, %do.body47
  tail call void @tw5864_prepare_frame_headers(ptr noundef %input)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %tail_nb_bits = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 17
  %50 = ptrtoint ptr %tail_nb_bits to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tail_nb_bits, align 8
  %add = shl i32 %51, 8
  %shl = add i32 %add, 6144
  %52 = ptrtoint ptr %reg_dsp_qp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reg_dsp_qp, align 4
  %or62 = or i32 %53, %shl
  %or64 = or i32 %or62, 32768
  %54 = tail call i32 @llvm.bswap.i32(i32 %or64)
  %55 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio, align 4
  %add.ptr66 = getelementptr i8, ptr %56, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %54) #9, !srcloc !101
  %57 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio, align 4
  %add.ptr70 = getelementptr i8, ptr %58, i32 16
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #9, !srcloc !99
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  %61 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %input, align 8
  %mul = shl i32 %62, 1
  %shl74 = shl i32 3, %mul
  %and75 = and i32 %shl74, %60
  %shr = lshr i32 %and75, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %shl81 = shl i32 %shr, 12
  %63 = tail call i32 @llvm.bswap.i32(i32 %shl81)
  %64 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio, align 4
  %add.ptr83 = getelementptr i8, ptr %65, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %63) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !113
  tail call void @arm_heavy_mb() #9
  %add88 = add i32 %shr, 3
  %and89 = and i32 %add88, 3
  %or90 = or i32 %and89, %shl81
  %66 = tail call i32 @llvm.bswap.i32(i32 %or90)
  %67 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio, align 4
  %add.ptr92 = getelementptr i8, ptr %68, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 %66) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  %69 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio, align 4
  %add.ptr97 = getelementptr i8, ptr %70, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 8388608) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  %71 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio, align 4
  %add.ptr102 = getelementptr i8, ptr %72, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 0) #9, !srcloc !101
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tw5864_prepare_frame_headers(ptr noundef %input) local_unnamed_addr #0 align 64 {
entry:
  %dst = alloca ptr, align 4
  %dst_space = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vb1 = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 30
  %0 = ptrtoint ptr %vb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst_space) #9
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body2, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.body2:                                         ; preds = %entry
  %slock = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #9
  %active = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 7
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %active, align 4
  %cmp.i.not = icmp eq ptr %3, %active
  br i1 %cmp.i.not, label %if.then8, label %if.end

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #9
  %4 = ptrtoint ptr %vb1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %vb1, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body2
  %add.ptr = getelementptr i8, ptr %3, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #9
  br label %if.end14

if.end14:                                         ; preds = %list_del.exit, %entry.if.end14_crit_edge
  %vb.0 = phi ptr [ %1, %entry.if.end14_crit_edge ], [ %add.ptr, %list_del.exit ]
  %call16 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb.0, i32 noundef 0) #9
  %13 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call16, ptr %dst, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb.0, i32 0, i32 4
  %14 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit.thread, label %vb2_plane_size.exit

vb2_plane_size.exit.thread:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %dst_space to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %dst_space, align 4
  br label %land.rhs

vb2_plane_size.exit:                              ; preds = %if.end14
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb.0, i32 0, i32 10, i32 0, i32 4
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i, align 8
  %19 = ptrtoint ptr %dst_space to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dst_space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %18)
  %cmp20 = icmp ult i32 %18, 128
  br i1 %cmp20, label %vb2_plane_size.exit.land.rhs_crit_edge, label %if.end66

vb2_plane_size.exit.land.rhs_crit_edge:           ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

land.rhs:                                         ; preds = %vb2_plane_size.exit.land.rhs_crit_edge, %vb2_plane_size.exit.thread
  %.b100 = load i1, ptr @tw5864_prepare_frame_headers.__already_done, align 1
  br i1 %.b100, label %land.rhs.cleanup_crit_edge, label %if.then30, !prof !116

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then30:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tw5864_prepare_frame_headers.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1247, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end66:                                         ; preds = %vb2_plane_size.exit
  %frame_gop_seqno = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 12
  %20 = ptrtoint ptr %frame_gop_seqno to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %frame_gop_seqno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp67 = icmp eq i32 %21, 0
  br i1 %cmp67, label %if.then69, label %if.end66.if.end70_crit_edge

if.end66.if.end70_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %qp = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 33
  %22 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qp, align 4
  %width = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 9
  %24 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 10
  %26 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height, align 8
  call void @tw5864_h264_put_stream_header(ptr noundef nonnull %dst, ptr noundef nonnull %dst_space, i32 noundef %23, i32 noundef %25, i32 noundef %27) #9
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end66.if.end70_crit_edge
  %h264_idr_pic_id = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 13
  %28 = ptrtoint ptr %h264_idr_pic_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %h264_idr_pic_id, align 4
  %30 = ptrtoint ptr %frame_gop_seqno to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %frame_gop_seqno, align 8
  %tail_nb_bits = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 17
  %tail = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 18
  call void @tw5864_h264_put_slice_header(ptr noundef nonnull %dst, ptr noundef nonnull %dst_space, i32 noundef %29, i32 noundef %31, ptr noundef %tail_nb_bits, ptr noundef %tail) #9
  %32 = ptrtoint ptr %vb1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %vb.0, ptr %vb1, align 4
  %33 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dst, align 4
  %buf_cur_ptr = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 19
  %35 = ptrtoint ptr %buf_cur_ptr to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %buf_cur_ptr, align 8
  %36 = ptrtoint ptr %dst_space to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dst_space, align 4
  %buf_cur_space_left = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 20
  %38 = ptrtoint ptr %buf_cur_space_left to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %buf_cur_space_left, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then30, %land.rhs.cleanup_crit_edge, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst_space) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tw5864_video_init(ptr noundef %dev, ptr nocapture noundef readonly %video_nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr inbounds %struct.tw5864_dev, ptr %dev, i32 0, i32 10
  %arrayidx = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 0
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %dma_addr = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 0, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 524288, ptr noundef %dma_addr, i32 noundef 3268, i32 noundef 0) #9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond:                                         ; preds = %if.end
  %arrayidx.1 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci, align 8
  %dev1.1 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %dma_addr.1 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 1, i32 0, i32 1
  %call.i.1 = tail call ptr @dma_alloc_attrs(ptr noundef %dev1.1, i32 noundef 524288, ptr noundef %dma_addr.1, i32 noundef 3268, i32 noundef 0) #9
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.1, ptr %arrayidx.1, align 8
  %tobool.not.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool.not.1, label %for.cond.do.end_crit_edge, label %if.end.1

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.1:                                         ; preds = %for.cond
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 8
  %dev8.1 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %mv.1 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 1, i32 1
  %dma_addr9.1 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 1, i32 1, i32 1
  %call.i258.1 = tail call ptr @dma_alloc_attrs(ptr noundef %dev8.1, i32 noundef 8192, ptr noundef %dma_addr9.1, i32 noundef 3268, i32 noundef 0) #9
  %8 = ptrtoint ptr %mv.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i258.1, ptr %mv.1, align 8
  %tobool15.not.1 = icmp eq ptr %call.i258.1, null
  br i1 %tobool15.not.1, label %if.end.1.do.end19_crit_edge, label %for.cond.1

if.end.1.do.end19_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

for.cond.1:                                       ; preds = %if.end.1
  %arrayidx.2 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci, align 8
  %dev1.2 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %dma_addr.2 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 2, i32 0, i32 1
  %call.i.2 = tail call ptr @dma_alloc_attrs(ptr noundef %dev1.2, i32 noundef 524288, ptr noundef %dma_addr.2, i32 noundef 3268, i32 noundef 0) #9
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.2, ptr %arrayidx.2, align 8
  %tobool.not.2 = icmp eq ptr %call.i.2, null
  br i1 %tobool.not.2, label %for.cond.1.do.end_crit_edge, label %if.end.2

for.cond.1.do.end_crit_edge:                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.2:                                         ; preds = %for.cond.1
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 8
  %dev8.2 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %mv.2 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 2, i32 1
  %dma_addr9.2 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 2, i32 1, i32 1
  %call.i258.2 = tail call ptr @dma_alloc_attrs(ptr noundef %dev8.2, i32 noundef 8192, ptr noundef %dma_addr9.2, i32 noundef 3268, i32 noundef 0) #9
  %14 = ptrtoint ptr %mv.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i258.2, ptr %mv.2, align 8
  %tobool15.not.2 = icmp eq ptr %call.i258.2, null
  br i1 %tobool15.not.2, label %if.end.2.do.end19_crit_edge, label %for.cond.2

if.end.2.do.end19_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

for.cond.2:                                       ; preds = %if.end.2
  %arrayidx.3 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci, align 8
  %dev1.3 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %dma_addr.3 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 3, i32 0, i32 1
  %call.i.3 = tail call ptr @dma_alloc_attrs(ptr noundef %dev1.3, i32 noundef 524288, ptr noundef %dma_addr.3, i32 noundef 3268, i32 noundef 0) #9
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.3, ptr %arrayidx.3, align 8
  %tobool.not.3 = icmp eq ptr %call.i.3, null
  br i1 %tobool.not.3, label %for.cond.2.do.end_crit_edge, label %if.end.3

for.cond.2.do.end_crit_edge:                      ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.3:                                         ; preds = %for.cond.2
  %18 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci, align 8
  %dev8.3 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %mv.3 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 3, i32 1
  %dma_addr9.3 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 3, i32 1, i32 1
  %call.i258.3 = tail call ptr @dma_alloc_attrs(ptr noundef %dev8.3, i32 noundef 8192, ptr noundef %dma_addr9.3, i32 noundef 3268, i32 noundef 0) #9
  %20 = ptrtoint ptr %mv.3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i258.3, ptr %mv.3, align 8
  %tobool15.not.3 = icmp eq ptr %call.i258.3, null
  br i1 %tobool15.not.3, label %if.end.3.do.end19_crit_edge, label %for.cond.3

if.end.3.do.end19_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

for.cond.3:                                       ; preds = %if.end.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %mmio.i = getelementptr inbounds %struct.tw5864_dev, ptr %dev, i32 0, i32 11
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 4124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #9, !srcloc !101
  br label %do.body1.i

do.end:                                           ; preds = %for.cond.2.do.end_crit_edge, %for.cond.1.do.end_crit_edge, %for.cond.do.end_crit_edge, %entry.do.end_crit_edge
  %last_dma_allocated.0281.lcssa = phi i32 [ -1, %entry.do.end_crit_edge ], [ 0, %for.cond.do.end_crit_edge ], [ 1, %for.cond.1.do.end_crit_edge ], [ 2, %for.cond.2.do.end_crit_edge ]
  %23 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str) #12
  br label %free_dma

if.end:                                           ; preds = %entry
  %25 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %mv = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 0, i32 1
  %dma_addr9 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 0, i32 1, i32 1
  %call.i258 = tail call ptr @dma_alloc_attrs(ptr noundef %dev8, i32 noundef 8192, ptr noundef %dma_addr9, i32 noundef 3268, i32 noundef 0) #9
  %27 = ptrtoint ptr %mv to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i258, ptr %mv, align 8
  %tobool15.not = icmp eq ptr %call.i258, null
  br i1 %tobool15.not, label %if.end.do.end19_crit_edge, label %for.cond

if.end.do.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

do.end19:                                         ; preds = %if.end.do.end19_crit_edge, %if.end.3.do.end19_crit_edge, %if.end.2.do.end19_crit_edge, %if.end.1.do.end19_crit_edge
  %last_dma_allocated.0281.lcssa305 = phi i32 [ -1, %if.end.do.end19_crit_edge ], [ 0, %if.end.1.do.end19_crit_edge ], [ 1, %if.end.2.do.end19_crit_edge ], [ 2, %if.end.3.do.end19_crit_edge ]
  %arrayidx.lcssa301 = phi ptr [ %arrayidx, %if.end.do.end19_crit_edge ], [ %arrayidx.1, %if.end.1.do.end19_crit_edge ], [ %arrayidx.2, %if.end.2.do.end19_crit_edge ], [ %arrayidx.3, %if.end.3.do.end19_crit_edge ]
  %dma_addr.lcssa299 = phi ptr [ %dma_addr, %if.end.do.end19_crit_edge ], [ %dma_addr.1, %if.end.1.do.end19_crit_edge ], [ %dma_addr.2, %if.end.2.do.end19_crit_edge ], [ %dma_addr.3, %if.end.3.do.end19_crit_edge ]
  %28 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str) #12
  %30 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %arrayidx.lcssa301 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.lcssa301, align 8
  %34 = ptrtoint ptr %dma_addr.lcssa299 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_addr.lcssa299, align 4
  tail call void @dma_free_attrs(ptr noundef %dev23, i32 noundef 524288, ptr noundef %33, i32 noundef %35, i32 noundef 0) #9
  br label %free_dma

do.body1.i:                                       ; preds = %do.body1.i.do.body1.i_crit_edge, %for.cond.3
  %i.058.i = phi i32 [ 0, %for.cond.3 ], [ %inc.i, %do.body1.i.do.body1.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !118
  tail call void @arm_heavy_mb() #9
  %arrayidx.i = getelementptr [1024 x i16], ptr @encoder_vlc_lookup_table, i32 0, i32 %i.058.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %37 to i32
  %38 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #9
  %39 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i, align 4
  %mul.i = shl i32 %i.058.i, 2
  %add.i = add nuw nsw i32 %mul.i, 8192
  %add.ptr5.i = getelementptr i8, ptr %40, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %38) #9, !srcloc !101
  %inc.i = add nuw nsw i32 %i.058.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %do.body6.i, label %do.body1.i.do.body1.i_crit_edge

do.body1.i.do.body1.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i

do.body6.i:                                       ; preds = %do.body1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %42, i32 4124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #9, !srcloc !101
  br label %do.body15.i

do.body15.i:                                      ; preds = %do.body15.i.do.body15.i_crit_edge, %do.body6.i
  %i.159.i = phi i32 [ 0, %do.body6.i ], [ %inc25.i, %do.body15.i.do.body15.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %arrayidx18.i = getelementptr [96 x i16], ptr @forward_quantization_table, i32 0, i32 %i.159.i
  %43 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx18.i, align 2
  %conv19.i = zext i16 %44 to i32
  %45 = tail call i32 @llvm.bswap.i32(i32 %conv19.i) #9
  %46 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i, align 4
  %mul21.i = shl i32 %i.159.i, 2
  %add22.i = add nuw nsw i32 %mul21.i, 2048
  %add.ptr23.i = getelementptr i8, ptr %47, i32 %add22.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %45) #9, !srcloc !101
  %inc25.i = add nuw nsw i32 %i.159.i, 1
  %exitcond61.not.i = icmp eq i32 %inc25.i, 96
  br i1 %exitcond61.not.i, label %do.body15.i.do.body31.i_crit_edge, label %do.body15.i.do.body15.i_crit_edge

do.body15.i.do.body15.i_crit_edge:                ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body15.i

do.body15.i.do.body31.i_crit_edge:                ; preds = %do.body15.i
  br label %do.body31.i

do.body31.i:                                      ; preds = %do.body31.i.do.body31.i_crit_edge, %do.body15.i.do.body31.i_crit_edge
  %i.260.i = phi i32 [ %inc41.i, %do.body31.i.do.body31.i_crit_edge ], [ 0, %do.body15.i.do.body31.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @arm_heavy_mb() #9
  %arrayidx34.i = getelementptr [96 x i16], ptr @inverse_quantization_table, i32 0, i32 %i.260.i
  %48 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx34.i, align 2
  %conv35.i = zext i16 %49 to i32
  %50 = tail call i32 @llvm.bswap.i32(i32 %conv35.i) #9
  %51 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio.i, align 4
  %mul37.i = shl i32 %i.260.i, 2
  %add38.i = add nuw nsw i32 %mul37.i, 2048
  %add.ptr39.i = getelementptr i8, ptr %52, i32 %add38.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 %50) #9, !srcloc !101
  %inc41.i = add nuw nsw i32 %i.260.i, 1
  %exitcond62.not.i = icmp eq i32 %inc41.i, 96
  br i1 %exitcond62.not.i, label %tw5864_encoder_tables_upload.exit, label %do.body31.i.do.body31.i_crit_edge

do.body31.i.do.body31.i_crit_edge:                ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31.i

tw5864_encoder_tables_upload.exit:                ; preds = %do.body31.i
  tail call void @tw5864_indir_writeb(ptr noundef %dev, i16 noundef zeroext 65, i8 noundef zeroext 3) #9
  tail call void @tw5864_indir_writeb(ptr noundef %dev, i16 noundef zeroext 3838, i8 noundef zeroext 0) #9
  tail call void @tw5864_indir_writeb(ptr noundef %dev, i16 noundef zeroext 3814, i8 noundef zeroext 2) #9
  tail call void @tw5864_indir_writeb(ptr noundef %dev, i16 noundef zeroext 3815, i8 noundef zeroext 2) #9
  tail call void @tw5864_indir_writeb(ptr noundef %dev, i16 noundef zeroext 3816, i8 noundef zeroext 2) #9
  tail call void @tw5864_indir_writeb(ptr noundef %dev, i16 noundef zeroext 3819, i8 noundef zeroext 2) #9
  tail call void @tw5864_indir_writeb(ptr noundef %dev, i16 noundef zeroext 3820, i8 noundef zeroext 2) #9
  tail call void @tw5864_indir_writeb(ptr noundef %dev, i16 noundef zeroext 3821, i8 noundef zeroext 2) #9
  tail call void @tw5864_indir_writeb(ptr noundef %dev, i16 noundef zeroext 3824, i8 noundef zeroext 0) #9
  tail call void @tw5864_indir_writeb(ptr noundef %dev, i16 noundef zeroext 3824, i8 noundef zeroext -32) #9
  tail call void @msleep(i32 noundef 20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio.i, align 4
  %add.ptr = getelementptr i8, ptr %54, i32 3412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !101
  tail call void @tw5864_indir_writeb(ptr noundef %dev, i16 noundef zeroext 3837, i8 noundef zeroext -16) #9
  %call36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev) #9
  %encoder_busy = getelementptr inbounds %struct.tw5864_dev, ptr %dev, i32 0, i32 7
  %55 = ptrtoint ptr %encoder_busy to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %encoder_busy, align 8
  %h264_buf_r_index = getelementptr inbounds %struct.tw5864_dev, ptr %dev, i32 0, i32 4
  %56 = ptrtoint ptr %h264_buf_r_index to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %h264_buf_r_index, align 8
  %h264_buf_w_index = getelementptr inbounds %struct.tw5864_dev, ptr %dev, i32 0, i32 5
  %57 = ptrtoint ptr %h264_buf_w_index to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %h264_buf_w_index, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @arm_heavy_mb() #9
  %58 = ptrtoint ptr %h264_buf_w_index to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %h264_buf_w_index, align 4
  %dma_addr48 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 %59, i32 0, i32 1
  %60 = ptrtoint ptr %dma_addr48 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma_addr48, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %63 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio.i, align 4
  %add.ptr50 = getelementptr i8, ptr %64, i32 98432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %62) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  tail call void @arm_heavy_mb() #9
  %65 = ptrtoint ptr %h264_buf_w_index to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %h264_buf_w_index, align 4
  %dma_addr58 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 %66, i32 1, i32 1
  %67 = ptrtoint ptr %dma_addr58 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma_addr58, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %70 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio.i, align 4
  %add.ptr60 = getelementptr i8, ptr %71, i32 98436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %69) #9, !srcloc !101
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev, i32 noundef %call36) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  tail call void @arm_heavy_mb() #9
  %72 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio.i, align 4
  %add.ptr66 = getelementptr i8, ptr %73, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 251658240) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  tail call void @arm_heavy_mb() #9
  %74 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio.i, align 4
  %add.ptr71 = getelementptr i8, ptr %75, i32 36868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 251658240) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %76 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmio.i, align 4
  %add.ptr76 = getelementptr i8, ptr %77, i32 37376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 0) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  %78 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio.i, align 4
  %add.ptr81 = getelementptr i8, ptr %79, i32 37380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 286326784) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  tail call void @arm_heavy_mb() #9
  %80 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mmio.i, align 4
  %add.ptr86 = getelementptr i8, ptr %81, i32 37384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 572653568) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  tail call void @arm_heavy_mb() #9
  %82 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmio.i, align 4
  %add.ptr91 = getelementptr i8, ptr %83, i32 37388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 858980352) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %84 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio.i, align 4
  %add.ptr96 = getelementptr i8, ptr %85, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 -16777216) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !132
  tail call void @arm_heavy_mb() #9
  %86 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio.i, align 4
  %add.ptr101 = getelementptr i8, ptr %87, i32 98380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 0) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  tail call void @arm_heavy_mb() #9
  %88 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmio.i, align 4
  %add.ptr106 = getelementptr i8, ptr %89, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 67108864) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %90 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio.i, align 4
  %add.ptr111 = getelementptr i8, ptr %91, i32 98316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 33554432) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @arm_heavy_mb() #9
  %92 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio.i, align 4
  %add.ptr116 = getelementptr i8, ptr %93, i32 98308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116, i32 1191182336) #9, !srcloc !101
  %irqmask = getelementptr inbounds %struct.tw5864_dev, ptr %dev, i32 0, i32 12
  %94 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %irqmask, align 8
  %or = or i32 %95, 4325376
  store i32 %or, ptr %irqmask, align 8
  tail call void @tw5864_irqmask_apply(ptr noundef %dev) #9
  %tasklet = getelementptr inbounds %struct.tw5864_dev, ptr %dev, i32 0, i32 6
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @tw5864_handle_frame_task) #9
  br label %for.body120

for.body120:                                      ; preds = %if.end130.for.body120_crit_edge, %tw5864_encoder_tables_upload.exit
  %last_input_nr_registered.0283 = phi i32 [ -1, %tw5864_encoder_tables_upload.exit ], [ %i.1282, %if.end130.for.body120_crit_edge ]
  %i.1282 = phi i32 [ 0, %tw5864_encoder_tables_upload.exit ], [ %inc132, %if.end130.for.body120_crit_edge ]
  %arrayidx121 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282
  %root = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 1
  %96 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %dev, ptr %root, align 4
  %97 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %i.1282, ptr %arrayidx121, align 8
  %arrayidx126 = getelementptr i32, ptr %video_nr, i32 %i.1282
  %98 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx126, align 4
  %hdl1.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 5
  %lock.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 2
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @tw5864_video_input_init.__key) #9
  %slock.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %slock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @tw5864_video_input_init.__key.8, i16 noundef signext 3) #9
  %active.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 7
  %100 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %active.i, ptr %active.i, align 4
  %prev.i.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 7, i32 1
  %101 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %active.i, ptr %prev.i.i, align 4
  %vidq.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 6
  %102 = ptrtoint ptr %vidq.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %vidq.i, align 8
  %timestamp_flags.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 6, i32 13
  %103 = ptrtoint ptr %timestamp_flags.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 8192, ptr %timestamp_flags.i, align 4
  %io_modes.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 6, i32 1
  %104 = ptrtoint ptr %io_modes.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 21, ptr %io_modes.i, align 4
  %ops.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 6, i32 7
  %105 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @tw5864_video_qops, ptr %ops.i, align 4
  %mem_ops.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 6, i32 8
  %106 = ptrtoint ptr %mem_ops.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops.i, align 8
  %drv_priv.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 6, i32 10
  %107 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %arrayidx121, ptr %drv_priv.i, align 8
  %gfp_flags.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 6, i32 14
  %108 = ptrtoint ptr %gfp_flags.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %gfp_flags.i, align 8
  %buf_struct_size.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 6, i32 12
  %109 = ptrtoint ptr %buf_struct_size.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 752, ptr %buf_struct_size.i, align 8
  %lock14.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 6, i32 5
  %110 = ptrtoint ptr %lock14.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %lock.i, ptr %lock14.i, align 4
  %min_buffers_needed.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 6, i32 15
  %111 = ptrtoint ptr %min_buffers_needed.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 2, ptr %min_buffers_needed.i, align 4
  %112 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %root, align 4
  %pci.i = getelementptr inbounds %struct.tw5864_dev, ptr %113, i32 0, i32 10
  %114 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pci.i, align 8
  %dev17.i = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 44
  %dev19.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 6, i32 2
  %116 = ptrtoint ptr %dev19.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %dev17.i, ptr %dev19.i, align 8
  %call21.i = tail call i32 @vb2_queue_init(ptr noundef %vidq.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body120.tw5864_video_input_init.exit_crit_edge

for.body120.tw5864_video_input_init.exit_crit_edge: ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw5864_video_input_init.exit

if.end.i:                                         ; preds = %for.body120
  %vdev.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 4
  %117 = call ptr @memcpy(ptr %vdev.i, ptr @tw5864_video_template, i32 1352)
  %118 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %root, align 4
  %v4l2_dev.i = getelementptr inbounds %struct.tw5864_dev, ptr %119, i32 0, i32 1
  %v4l2_dev24.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 4, i32 7
  %120 = ptrtoint ptr %v4l2_dev24.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %v4l2_dev.i, ptr %v4l2_dev24.i, align 4
  %lock27.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 4, i32 26
  %121 = ptrtoint ptr %lock27.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %lock.i, ptr %lock27.i, align 8
  %queue.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 4, i32 10
  %122 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %vidq.i, ptr %queue.i, align 8
  %driver_data.i.i.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 4, i32 5, i32 8
  %123 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %arrayidx121, ptr %driver_data.i.i.i, align 4
  %call31.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl1.i, i32 noundef 6, ptr noundef nonnull @tw5864_video_input_init._key, ptr noundef nonnull @.str.10) #9
  %call32.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1.i, ptr noundef nonnull @tw5864_ctrl_ops, i32 noundef 9963776, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #9
  %call33.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1.i, ptr noundef nonnull @tw5864_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 100) #9
  %call34.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1.i, ptr noundef nonnull @tw5864_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #9
  %call35.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1.i, ptr noundef nonnull @tw5864_ctrl_ops, i32 noundef 9963779, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #9
  %call36.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1.i, ptr noundef nonnull @tw5864_ctrl_ops, i32 noundef 10029515, i64 noundef 1, i64 noundef 255, i64 noundef 1, i64 noundef 255) #9
  %call37.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1.i, ptr noundef nonnull @tw5864_ctrl_ops, i32 noundef 10029665, i64 noundef 28, i64 noundef 51, i64 noundef 1, i64 noundef 28) #9
  %call38.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl1.i, ptr noundef nonnull @tw5864_ctrl_ops, i32 noundef 10684673, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #9
  %call39.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1.i, ptr noundef nonnull @tw5864_ctrl_ops, i32 noundef 10684674, i64 noundef 0, i64 noundef 30, i64 noundef 1, i64 noundef 14) #9
  %call40.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl1.i, ptr noundef nonnull @tw5864_md_thresholds, ptr noundef null) #9
  %md_threshold_grid_ctrl.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 31
  %124 = ptrtoint ptr %md_threshold_grid_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call40.i, ptr %md_threshold_grid_ctrl.i, align 8
  %error.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 5, i32 9
  %125 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool41.not.i = icmp eq i32 %126, 0
  br i1 %tobool41.not.i, label %if.end44.i, label %if.end.i.free_v4l2_hdl.i_crit_edge

if.end.i.free_v4l2_hdl.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_v4l2_hdl.i

if.end44.i:                                       ; preds = %if.end.i
  %ctrl_handler.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 4, i32 9
  %127 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %hdl1.i, ptr %ctrl_handler.i, align 4
  %call46.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl1.i) #9
  %qp.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 33
  %128 = ptrtoint ptr %qp.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 28, ptr %qp.i, align 4
  %gop.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 34
  %129 = ptrtoint ptr %gop.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 255, ptr %gop.i, align 8
  %frame_interval.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 35
  %130 = ptrtoint ptr %frame_interval.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1, ptr %frame_interval.i, align 4
  %fops.i.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 4, i32 3
  %131 = ptrtoint ptr %fops.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %fops.i.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %call.i.i = tail call i32 @__video_register_device(ptr noundef %vdev.i, i32 noundef 0, i32 noundef %99, i32 noundef 1, ptr noundef %134) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool49.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool49.not.i, label %do.end54.i, label %if.end44.i.free_v4l2_hdl.i_crit_edge

if.end44.i.free_v4l2_hdl.i_crit_edge:             ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_v4l2_hdl.i

do.end54.i:                                       ; preds = %if.end44.i
  %135 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %root, align 4
  %pci56.i = getelementptr inbounds %struct.tw5864_dev, ptr %136, i32 0, i32 10
  %137 = ptrtoint ptr %pci56.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pci56.i, align 8
  %dev57.i = getelementptr inbounds %struct.pci_dev, ptr %138, i32 0, i32 44
  %init_name.i.i.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 4, i32 5, i32 3
  %139 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %140, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end54.i.if.end130_crit_edge

do.end54.i.if.end130_crit_edge:                   ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

if.end.i.i.i:                                     ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 4, i32 5
  %141 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev.i.i, align 4
  br label %if.end130

free_v4l2_hdl.i:                                  ; preds = %if.end44.i.free_v4l2_hdl.i_crit_edge, %if.end.i.free_v4l2_hdl.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %if.end44.i.free_v4l2_hdl.i_crit_edge ], [ %126, %if.end.i.free_v4l2_hdl.i_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl1.i) #9
  br label %tw5864_video_input_init.exit

tw5864_video_input_init.exit:                     ; preds = %free_v4l2_hdl.i, %for.body120.tw5864_video_input_init.exit_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %free_v4l2_hdl.i ], [ %call21.i, %for.body120.tw5864_video_input_init.exit_crit_edge ]
  tail call void @mutex_destroy(ptr noundef %lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %last_input_nr_registered.0283)
  %cmp135284 = icmp sgt i32 %last_input_nr_registered.0283, -1
  br i1 %cmp135284, label %for.body137, label %tw5864_video_input_init.exit.free_dma.thread_crit_edge

tw5864_video_input_init.exit.free_dma.thread_crit_edge: ; preds = %tw5864_video_input_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_dma.thread

if.end130:                                        ; preds = %if.end.i.i.i, %do.end54.i.if.end130_crit_edge
  %retval.0.i.i.i = phi ptr [ %142, %if.end.i.i.i ], [ %140, %do.end54.i.if.end130_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev57.i, ptr noundef nonnull @.str.11, ptr noundef %retval.0.i.i.i) #12
  %v4l2_std.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 16
  %143 = ptrtoint ptr %v4l2_std.i to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 4096, ptr %v4l2_std.i, align 8
  %std.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %i.1282, i32 15
  %144 = ptrtoint ptr %std.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %std.i, align 4
  %video_nr.tr.i = trunc i32 %99 to i16
  %145 = shl i16 %video_nr.tr.i, 4
  %conv.i259 = or i16 %145, 14
  tail call void @tw5864_indir_writeb(ptr noundef %dev, i16 noundef zeroext %conv.i259, i8 noundef zeroext 7) #9
  %conv62.i = or i16 %145, 15
  tail call void @tw5864_indir_writeb(ptr noundef %dev, i16 noundef zeroext %conv62.i, i8 noundef zeroext -1) #9
  %inc132 = add nuw nsw i32 %i.1282, 1
  %exitcond.not = icmp eq i32 %inc132, 4
  br i1 %exitcond.not, label %if.end130.cleanup170_crit_edge, label %if.end130.for.body120_crit_edge

if.end130.for.body120_crit_edge:                  ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body120

if.end130.cleanup170_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup170

for.body137:                                      ; preds = %tw5864_video_input_init.exit
  %vdev.i260 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %last_input_nr_registered.0283, i32 4
  tail call void @vb2_video_unregister_device(ptr noundef %vdev.i260) #9
  %hdl.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %last_input_nr_registered.0283, i32 5
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_input_nr_registered.0283)
  %cmp135.not = icmp eq i32 %last_input_nr_registered.0283, 0
  br i1 %cmp135.not, label %for.body137.free_dma.thread_crit_edge, label %for.body137.1

for.body137.free_dma.thread_crit_edge:            ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_dma.thread

for.body137.1:                                    ; preds = %for.body137
  %dec = add nsw i32 %last_input_nr_registered.0283, -1
  %vdev.i260.1 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %dec, i32 4
  tail call void @vb2_video_unregister_device(ptr noundef %vdev.i260.1) #9
  %hdl.i.1 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %dec, i32 5
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl.i.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp135.not.1 = icmp eq i32 %dec, 0
  br i1 %cmp135.not.1, label %for.body137.1.free_dma.thread_crit_edge, label %for.body137.2

for.body137.1.free_dma.thread_crit_edge:          ; preds = %for.body137.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_dma.thread

for.body137.2:                                    ; preds = %for.body137.1
  call void @__sanitizer_cov_trace_pc() #11
  %dec.1 = add nsw i32 %last_input_nr_registered.0283, -2
  %vdev.i260.2 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %dec.1, i32 4
  tail call void @vb2_video_unregister_device(ptr noundef %vdev.i260.2) #9
  %hdl.i.2 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 %dec.1, i32 5
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl.i.2) #9
  br label %free_dma.thread

free_dma.thread:                                  ; preds = %for.body137.2, %for.body137.1.free_dma.thread_crit_edge, %for.body137.free_dma.thread_crit_edge, %tw5864_video_input_init.exit.free_dma.thread_crit_edge
  tail call void @tasklet_kill(ptr noundef %tasklet) #9
  br label %for.body146.lr.ph

free_dma:                                         ; preds = %do.end19, %do.end
  %last_dma_allocated.0276 = phi i32 [ %last_dma_allocated.0281.lcssa305, %do.end19 ], [ %last_dma_allocated.0281.lcssa, %do.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %last_dma_allocated.0276)
  %cmp144286 = icmp sgt i32 %last_dma_allocated.0276, -1
  br i1 %cmp144286, label %free_dma.for.body146.lr.ph_crit_edge, label %free_dma.cleanup170_crit_edge

free_dma.cleanup170_crit_edge:                    ; preds = %free_dma
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup170

free_dma.for.body146.lr.ph_crit_edge:             ; preds = %free_dma
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body146.lr.ph

for.body146.lr.ph:                                ; preds = %free_dma.for.body146.lr.ph_crit_edge, %free_dma.thread
  %ret.2311 = phi i32 [ %ret.1.i, %free_dma.thread ], [ -12, %free_dma.for.body146.lr.ph_crit_edge ]
  %last_dma_allocated.0276310 = phi i32 [ 3, %free_dma.thread ], [ %last_dma_allocated.0276, %free_dma.for.body146.lr.ph_crit_edge ]
  br label %for.body146

for.body146:                                      ; preds = %for.body146.for.body146_crit_edge, %for.body146.lr.ph
  %i.3287 = phi i32 [ %last_dma_allocated.0276310, %for.body146.lr.ph ], [ %dec168, %for.body146.for.body146_crit_edge ]
  %146 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pci, align 8
  %dev148 = getelementptr inbounds %struct.pci_dev, ptr %147, i32 0, i32 44
  %arrayidx150 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 %i.3287
  %148 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx150, align 8
  %dma_addr156 = getelementptr inbounds %struct.tw5864_dma_buf, ptr %arrayidx150, i32 0, i32 1
  %150 = ptrtoint ptr %dma_addr156 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %dma_addr156, align 4
  tail call void @dma_free_attrs(ptr noundef %dev148, i32 noundef 524288, ptr noundef %149, i32 noundef %151, i32 noundef 0) #9
  %152 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pci, align 8
  %dev158 = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 44
  %mv161 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 %i.3287, i32 1
  %154 = ptrtoint ptr %mv161 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mv161, align 8
  %dma_addr166 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 %i.3287, i32 1, i32 1
  %156 = ptrtoint ptr %dma_addr166 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %dma_addr166, align 4
  tail call void @dma_free_attrs(ptr noundef %dev158, i32 noundef 8192, ptr noundef %155, i32 noundef %157, i32 noundef 0) #9
  %dec168 = add nsw i32 %i.3287, -1
  %cmp144.not = icmp eq i32 %i.3287, 0
  br i1 %cmp144.not, label %for.body146.cleanup170_crit_edge, label %for.body146.for.body146_crit_edge

for.body146.for.body146_crit_edge:                ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body146

for.body146.cleanup170_crit_edge:                 ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup170

cleanup170:                                       ; preds = %for.body146.cleanup170_crit_edge, %free_dma.cleanup170_crit_edge, %if.end130.cleanup170_crit_edge
  %retval.0 = phi i32 [ -12, %free_dma.cleanup170_crit_edge ], [ %ret.2311, %for.body146.cleanup170_crit_edge ], [ 0, %if.end130.cleanup170_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tw5864_indir_writeb(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tw5864_irqmask_apply(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw5864_handle_frame_task(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -11192
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  %h264_buf_r_index = getelementptr i8, ptr %t, i32 -8
  %h264_buf_w_index = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %h264_buf_r_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %h264_buf_r_index, align 8
  %2 = ptrtoint ptr %h264_buf_w_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h264_buf_w_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp6.not57 = icmp eq i32 %1, %3
  br i1 %cmp6.not57, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %h264_buf = getelementptr i8, ptr %t, i32 -200
  %pci = getelementptr i8, ptr %t, i32 96
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %1, %while.body.lr.ph ], [ %rem, %while.body.while.body_crit_edge ]
  %flags.059 = phi i32 [ %call3, %while.body.lr.ph ], [ %call31, %while.body.while.body_crit_edge ]
  %batch_size.058 = phi i32 [ 4, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %batch_size.058, -1
  %arrayidx = getelementptr [4 x %struct.tw5864_h264_frame], ptr %h264_buf, i32 0, i32 %4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %flags.059) #9
  %5 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %dma_addr = getelementptr inbounds %struct.tw5864_dma_buf, ptr %arrayidx, i32 0, i32 1
  %7 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_addr, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev10, i32 noundef %8, i32 noundef 524288, i32 noundef 2) #9
  %9 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %dma_addr13 = getelementptr inbounds %struct.tw5864_h264_frame, ptr %arrayidx, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %dma_addr13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr13, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev12, i32 noundef %12, i32 noundef 8192, i32 noundef 2) #9
  tail call fastcc void @tw5864_handle_frame(ptr noundef %arrayidx)
  %13 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_addr, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev15, i32 noundef %16, i32 noundef 524288, i32 noundef 2) #9
  %17 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci, align 8
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %19 = ptrtoint ptr %dma_addr13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_addr13, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev19, i32 noundef %20, i32 noundef 8192, i32 noundef 2) #9
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  %21 = ptrtoint ptr %h264_buf_r_index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %h264_buf_r_index, align 8
  %inc = add i32 %22, 1
  %rem = srem i32 %inc, 4
  store i32 %rem, ptr %h264_buf_r_index, align 8
  %23 = ptrtoint ptr %h264_buf_w_index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %h264_buf_w_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %24)
  %cmp6.not = icmp eq i32 %rem, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp6.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call3, %entry.while.end_crit_edge ], [ %call31, %while.body.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %flags.0.lcssa) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tw5864_video_fini(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tasklet = getelementptr inbounds %struct.tw5864_dev, ptr %dev, i32 0, i32 6
  tail call void @tasklet_kill(ptr noundef %tasklet) #9
  %vdev.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 0, i32 4
  tail call void @vb2_video_unregister_device(ptr noundef %vdev.i) #9
  %hdl.i = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 0, i32 5
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl.i) #9
  %vdev.i.1 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 1, i32 4
  tail call void @vb2_video_unregister_device(ptr noundef %vdev.i.1) #9
  %hdl.i.1 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 1, i32 5
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl.i.1) #9
  %vdev.i.2 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 2, i32 4
  tail call void @vb2_video_unregister_device(ptr noundef %vdev.i.2) #9
  %hdl.i.2 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 2, i32 5
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl.i.2) #9
  %vdev.i.3 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 3, i32 4
  tail call void @vb2_video_unregister_device(ptr noundef %vdev.i.3) #9
  %hdl.i.3 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 2, i32 3, i32 5
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl.i.3) #9
  %pci = getelementptr inbounds %struct.tw5864_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %arrayidx5 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 0
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx5, align 8
  %dma_addr = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev4, i32 noundef 524288, ptr noundef %3, i32 noundef %5, i32 noundef 0) #9
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %mv = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %mv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mv, align 8
  %dma_addr17 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %dma_addr17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_addr17, align 4
  tail call void @dma_free_attrs(ptr noundef %dev10, i32 noundef 8192, ptr noundef %9, i32 noundef %11, i32 noundef 0) #9
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 8
  %dev4.1 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %arrayidx5.1 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx5.1, align 8
  %dma_addr.1 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %dma_addr.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_addr.1, align 4
  tail call void @dma_free_attrs(ptr noundef %dev4.1, i32 noundef 524288, ptr noundef %15, i32 noundef %17, i32 noundef 0) #9
  %18 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci, align 8
  %dev10.1 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %mv.1 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 1, i32 1
  %20 = ptrtoint ptr %mv.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mv.1, align 8
  %dma_addr17.1 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 1, i32 1, i32 1
  %22 = ptrtoint ptr %dma_addr17.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_addr17.1, align 4
  tail call void @dma_free_attrs(ptr noundef %dev10.1, i32 noundef 8192, ptr noundef %21, i32 noundef %23, i32 noundef 0) #9
  %24 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci, align 8
  %dev4.2 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %arrayidx5.2 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx5.2, align 8
  %dma_addr.2 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 2, i32 0, i32 1
  %28 = ptrtoint ptr %dma_addr.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_addr.2, align 4
  tail call void @dma_free_attrs(ptr noundef %dev4.2, i32 noundef 524288, ptr noundef %27, i32 noundef %29, i32 noundef 0) #9
  %30 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci, align 8
  %dev10.2 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %mv.2 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 2, i32 1
  %32 = ptrtoint ptr %mv.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mv.2, align 8
  %dma_addr17.2 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 2, i32 1, i32 1
  %34 = ptrtoint ptr %dma_addr17.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_addr17.2, align 4
  tail call void @dma_free_attrs(ptr noundef %dev10.2, i32 noundef 8192, ptr noundef %33, i32 noundef %35, i32 noundef 0) #9
  %36 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci, align 8
  %dev4.3 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %arrayidx5.3 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 3
  %38 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx5.3, align 8
  %dma_addr.3 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 3, i32 0, i32 1
  %40 = ptrtoint ptr %dma_addr.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_addr.3, align 4
  tail call void @dma_free_attrs(ptr noundef %dev4.3, i32 noundef 524288, ptr noundef %39, i32 noundef %41, i32 noundef 0) #9
  %42 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci, align 8
  %dev10.3 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %mv.3 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 3, i32 1
  %44 = ptrtoint ptr %mv.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mv.3, align 8
  %dma_addr17.3 = getelementptr %struct.tw5864_dev, ptr %dev, i32 0, i32 3, i32 3, i32 1, i32 1
  %46 = ptrtoint ptr %dma_addr17.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_addr17.3, align 4
  tail call void @dma_free_attrs(ptr noundef %dev10.3, i32 noundef 8192, ptr noundef %45, i32 noundef %47, i32 noundef 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tw5864_h264_put_stream_header(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tw5864_h264_put_slice_header(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tw5864_queue_setup(ptr nocapture noundef readnone %q, ptr nocapture noundef readnone %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_ctxs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %3)
  %cmp = icmp ult i32 %3, 524288
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 524288, ptr %sizes, align 4
  %5 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %num_planes, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw5864_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  tail call fastcc void @tw5864_enable_input(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw5864_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %root.i = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw5864_disable_input.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw5864_stop_streaming, %if.then.i)) #9
          to label %tw5864_disable_input.exit [label %if.then.i], !srcloc !136

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pci.i = getelementptr inbounds %struct.tw5864_dev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci.i, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tw5864_disable_input.__UNIQUE_ID_ddebug302, ptr noundef %dev3.i, ptr noundef nonnull @.str.18, i32 noundef %7) #9
  br label %tw5864_disable_input.exit

tw5864_disable_input.exit:                        ; preds = %if.then.i, %entry
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %enabled.i = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %enabled.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call8.i) #9
  %slock = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #9
  %vb = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 30
  %9 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vb, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %tw5864_disable_input.exit.if.end_crit_edge, label %if.then

tw5864_disable_input.exit.if.end_crit_edge:       ; preds = %tw5864_disable_input.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %tw5864_disable_input.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vb2_buffer_done(ptr noundef nonnull %10, i32 noundef 6) #9
  %11 = ptrtoint ptr %vb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %vb, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %tw5864_disable_input.exit.if.end_crit_edge
  %active = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %active, align 4
  %cmp.i.not25 = icmp eq ptr %13, %active
  br i1 %cmp.i.not25, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %if.end.while.body_crit_edge
  %14 = phi ptr [ %24, %list_del.exit.while.body_crit_edge ], [ %13, %if.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %14, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #9
  %23 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %active, align 4
  %cmp.i.not = icmp eq ptr %24, %active
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw5864_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %slock = getelementptr inbounds %struct.tw5864_input, ptr %3, i32 0, i32 3
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #9
  %list = getelementptr inbounds %struct.tw5864_buf, ptr %vb, i32 0, i32 1
  %active = getelementptr inbounds %struct.tw5864_input, ptr %3, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.tw5864_input, ptr %3, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %active) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %active, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.tw5864_buf, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call7) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tw5864_enable_input(ptr noundef %input) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw5864_enable_input.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw5864_enable_input, %if.then)) #9
          to label %sw.epilog [label %if.then], !srcloc !136

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pci = getelementptr inbounds %struct.tw5864_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tw5864_enable_input.__UNIQUE_ID_ddebug301, ptr noundef %dev4, ptr noundef nonnull @.str.16, i32 noundef %3) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %entry
  %frame_seqno = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 11
  %6 = ptrtoint ptr %frame_seqno to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %frame_seqno, align 4
  %frame_gop_seqno = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 12
  %7 = ptrtoint ptr %frame_gop_seqno to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %frame_gop_seqno, align 8
  %h264_idr_pic_id = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 13
  %8 = ptrtoint ptr %h264_idr_pic_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %h264_idr_pic_id, align 4
  %qp = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 33
  %9 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qp, align 4
  %reg_dsp_qp = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 26
  %11 = ptrtoint ptr %reg_dsp_qp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %reg_dsp_qp, align 4
  %arrayidx = getelementptr [52 x i32], ptr @lambda_lookup_table, i32 0, i32 %10
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %reg_dsp_ref_mvp_lambda = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 27
  %14 = ptrtoint ptr %reg_dsp_ref_mvp_lambda to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %reg_dsp_ref_mvp_lambda, align 8
  %arrayidx7 = getelementptr [52 x i32], ptr @intra4x4_lambda3, i32 0, i32 %10
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7, align 4
  %reg_dsp_i4x4_weight = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 28
  %17 = ptrtoint ptr %reg_dsp_i4x4_weight to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %reg_dsp_i4x4_weight, align 4
  %reg_emu = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 25
  %or8 = or i32 %3, 2592
  %reg_dsp = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 24
  %18 = ptrtoint ptr %reg_dsp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or8, ptr %reg_dsp, align 4
  %resolution = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 8
  %19 = ptrtoint ptr %resolution to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %resolution, align 8
  %std = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 15
  %20 = ptrtoint ptr %std to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %std, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  %cond = select i1 %cmp, i32 480, i32 576
  %width = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 9
  %22 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 720, ptr %width, align 4
  %height = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 10
  %23 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond, ptr %height, align 8
  %reg_interlacing = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 21
  %sub = add nsw i32 %cond, -1
  %reg_dsp_codec = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 23
  %24 = ptrtoint ptr %reg_dsp_codec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg_dsp_codec, align 8
  %or11 = or i32 %25, 192
  store i32 %or11, ptr %reg_dsp_codec, align 8
  %26 = ptrtoint ptr %reg_emu to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 95, ptr %reg_emu, align 8
  %27 = ptrtoint ptr %reg_interlacing to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 6, ptr %reg_interlacing, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  tail call void @arm_heavy_mb() #9
  %mmio = getelementptr inbounds %struct.tw5864_dev, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 3408
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !99
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  %shl = shl nuw i32 1, %3
  %or21 = or i32 %31, %shl
  %32 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %33 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio, align 4
  %add.ptr23 = getelementptr i8, ptr %34, i32 3408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %32) #9, !srcloc !101
  %.tr = trunc i32 %3 to i16
  %35 = shl i16 %.tr, 2
  %conv = add i16 %35, 512
  tail call void @tw5864_indir_writeb(ptr noundef %1, i16 noundef zeroext %conv, i8 noundef zeroext -76) #9
  %conv102 = add i16 %35, 513
  %div1033 = lshr exact i32 %cond, 2
  %conv104 = trunc i32 %div1033 to i8
  tail call void @tw5864_indir_writeb(ptr noundef %1, i16 noundef zeroext %conv102, i8 noundef zeroext %conv104) #9
  %conv107 = add i16 %35, 514
  %36 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %width, align 4
  %div1094 = lshr i32 %37, 2
  %conv110 = trunc i32 %div1094 to i8
  tail call void @tw5864_indir_writeb(ptr noundef %1, i16 noundef zeroext %conv107, i8 noundef zeroext %conv110) #9
  %conv113 = add i16 %35, 515
  %38 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height, align 8
  %div1155 = lshr i32 %39, 2
  %conv116 = trunc i32 %div1155 to i8
  tail call void @tw5864_indir_writeb(ptr noundef %1, i16 noundef zeroext %conv113, i8 noundef zeroext %conv116) #9
  %40 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 704, ptr %width, align 4
  %call118 = tail call zeroext i8 @tw5864_indir_readb(ptr noundef %1, i16 noundef zeroext 608) #9
  %41 = or i8 %call118, 4
  tail call void @tw5864_indir_writeb(ptr noundef %1, i16 noundef zeroext 608, i8 noundef zeroext %41) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %42 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %width, align 4
  %44 = shl i32 %43, 4
  %shl127 = and i32 %44, -256
  %45 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height, align 8
  %div1297 = lshr i32 %46, 4
  %or130 = or i32 %shl127, %div1297
  %47 = tail call i32 @llvm.bswap.i32(i32 %or130)
  %48 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio, align 4
  %add.ptr132 = getelementptr i8, ptr %49, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 %47) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  %50 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio, align 4
  %mul137 = shl i32 %3, 4
  %add138 = add i32 %mul137, 3344
  %add.ptr139 = getelementptr i8, ptr %51, i32 %add138
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr139, i32 -821952512) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio, align 4
  %add145 = add i32 %mul137, 3348
  %add.ptr146 = getelementptr i8, ptr %53, i32 %add145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146, i32 -821952512) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  tail call void @arm_heavy_mb() #9
  %54 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %55 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio, align 4
  %add152 = add i32 %mul137, 3352
  %add.ptr153 = getelementptr i8, ptr %56, i32 %add152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 %54) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  tail call void @arm_heavy_mb() #9
  %div158131415 = lshr exact i32 %cond, 1
  %sub159 = add nsw i32 %div158131415, -1
  %57 = tail call i32 @llvm.bswap.i32(i32 %sub159)
  %58 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio, align 4
  %add162 = add i32 %mul137, 3356
  %add.ptr163 = getelementptr i8, ptr %59, i32 %add162
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr163, i32 %57) #9, !srcloc !101
  %60 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %root, align 4
  %62 = ptrtoint ptr %std to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %std, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i = icmp eq i32 %63, 0
  %cond.i = select i1 %cmp.i, i32 30, i32 25
  %frame_interval.i = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 35
  %64 = ptrtoint ptr %frame_interval.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %frame_interval.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.epilog
  %shift.023.i = phi i32 [ 0, %sw.epilog ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %unary_framerate.022.i = phi i32 [ 0, %sw.epilog ], [ %or.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %shift.023.i
  %or.i = or i32 %shl.i, %unary_framerate.022.i
  %add.i = add i32 %shift.023.i, %65
  %cmp1.i = icmp slt i32 %add.i, %cond.i
  br i1 %cmp1.i, label %for.body.i.for.body.i_crit_edge, label %do.body181

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.body181:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %66 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %67 = shl i32 %66, 16
  %mmio.i = getelementptr inbounds %struct.tw5864_dev, ptr %61, i32 0, i32 11
  %68 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio.i, align 4
  %70 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %input, align 8
  %mul.i = shl i32 %71, 5
  %add2.i = add i32 %mul.i, 37120
  %add.ptr.i = getelementptr i8, ptr %69, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %67) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @arm_heavy_mb() #9
  %and.i = and i32 %or.i, 65535
  %72 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  %73 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i, align 4
  %75 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %input, align 8
  %mul9.i = shl i32 %76, 5
  %add10.i = add i32 %mul9.i, 37124
  %add.ptr12.i = getelementptr i8, ptr %74, i32 %add10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %72) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %77 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmio, align 4
  %add.ptr187 = getelementptr i8, ptr %78, i32 36896
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr187) #9, !srcloc !99
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %mul191 = shl i32 %3, 1
  %shl192 = shl i32 3, %mul191
  %neg193 = xor i32 %shl192, -1
  %and194 = and i32 %80, %neg193
  %81 = tail call i32 @llvm.bswap.i32(i32 %and194)
  %82 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmio, align 4
  %add.ptr202 = getelementptr i8, ptr %83, i32 36896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202, i32 %81) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %84 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp209 = icmp slt i32 %3, 2
  %cond211 = select i1 %cmp209, i32 36884, i32 36888
  %add.ptr212 = getelementptr i8, ptr %85, i32 %cond211
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr212) #9, !srcloc !99
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  %rem = srem i32 %3, 2
  %mul216 = mul nsw i32 %rem, 5
  %shl217 = shl nuw nsw i32 31, %mul216
  %neg218 = xor i32 %shl217, -1
  %and219 = and i32 %87, %neg218
  %88 = ptrtoint ptr %std to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %std, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp221 = icmp eq i32 %89, 0
  %cond223 = select i1 %cmp221, i32 29, i32 24
  %and230 = shl nuw nsw i32 %cond223, %mul216
  %or231 = or i32 %and230, %and219
  %90 = tail call i32 @llvm.bswap.i32(i32 %or231)
  %91 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio, align 4
  %add.ptr236 = getelementptr i8, ptr %92, i32 %cond211
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr236, i32 %90) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %93 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmio, align 4
  %cond245 = select i1 %cmp209, i32 3328, i32 3332
  %add.ptr246 = getelementptr i8, ptr %94, i32 %cond245
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr246) #9, !srcloc !99
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  %mul251 = shl nsw i32 %rem, 3
  %shl252 = shl i32 255, %mul251
  %neg253 = xor i32 %shl252, -1
  %and254 = and i32 %96, %neg253
  %and261 = shl i32 28, %mul251
  %or262 = or i32 %and254, %and261
  %97 = tail call i32 @llvm.bswap.i32(i32 %or262)
  %98 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mmio, align 4
  %add.ptr267 = getelementptr i8, ptr %99, i32 %cond245
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr267, i32 %97) #9, !srcloc !101
  %call274 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %enabled = getelementptr inbounds %struct.tw5864_input, ptr %input, i32 0, i32 14
  %100 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %enabled, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call274) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tw5864_indir_readb(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

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
define internal i32 @tw5864_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.14, i32 noundef 16) #9
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %card, i32 noundef 32, ptr noundef nonnull @.str.19, i32 noundef %3)
  %root = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root, align 4
  %pci = getelementptr inbounds %struct.tw5864_dev, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bus_info, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i.i)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tw5864_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 875967048, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw5864_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 704, ptr %fmt, align 4
  %std = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %std to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %std, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %switch.lookup, label %land.end

land.end:                                         ; preds = %entry
  %.b49 = load i1, ptr @tw5864_fmt_vid_cap.__already_done, align 1
  br i1 %.b49, label %land.end.cleanup_crit_edge, label %if.then, !prof !116

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tw5864_fmt_vid_cap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 538, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.tw5864_fmt_vid_cap, i32 0, i32 %4
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %height36 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height36 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.load, ptr %height36, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %field, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 875967048, ptr %pixelformat, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %10 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 524288, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %colorspace, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.then, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %if.then ], [ -22, %land.end.cleanup_crit_edge ]
  ret i32 %retval.0
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
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw5864_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %std) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l2_std = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %v4l2_std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %v4l2_std, align 8
  %4 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %std, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw5864_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %std) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %root = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  %v4l2_std = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %v4l2_std to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %std, ptr %v4l2_std, align 8
  %and.i = and i64 %std, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.tw5864_from_v4l2_std.exit_crit_edge

entry.tw5864_from_v4l2_std.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw5864_from_v4l2_std.exit

if.end.i:                                         ; preds = %entry
  %and1.i = and i64 %std, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp eq i64 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.tw5864_from_v4l2_std.exit_crit_edge

if.end.i.tw5864_from_v4l2_std.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw5864_from_v4l2_std.exit

if.end4.i:                                        ; preds = %if.end.i
  %and5.i = and i64 %std, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5.i)
  %tobool6.not.i = icmp eq i64 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.tw5864_from_v4l2_std.exit_crit_edge

if.end4.i.tw5864_from_v4l2_std.exit_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw5864_from_v4l2_std.exit

if.end8.i:                                        ; preds = %if.end4.i
  %and9.i = and i64 %std, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9.i)
  %tobool10.not.i = icmp eq i64 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.tw5864_from_v4l2_std.exit_crit_edge

if.end8.i.tw5864_from_v4l2_std.exit_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw5864_from_v4l2_std.exit

if.end12.i:                                       ; preds = %if.end8.i
  %and13.i = and i64 %std, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13.i)
  %tobool14.not.i = icmp eq i64 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.tw5864_from_v4l2_std.exit_crit_edge

if.end12.i.tw5864_from_v4l2_std.exit_crit_edge:   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw5864_from_v4l2_std.exit

if.end16.i:                                       ; preds = %if.end12.i
  %and17.i = and i64 %std, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17.i)
  %tobool18.not.i = icmp eq i64 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i.tw5864_from_v4l2_std.exit_crit_edge

if.end16.i.tw5864_from_v4l2_std.exit_crit_edge:   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw5864_from_v4l2_std.exit

if.end20.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %and21.i = and i64 %std, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21.i)
  %tobool22.not.i = icmp eq i64 %and21.i, 0
  %..i = select i1 %tobool22.not.i, i32 7, i32 6
  br label %tw5864_from_v4l2_std.exit

tw5864_from_v4l2_std.exit:                        ; preds = %if.end20.i, %if.end16.i.tw5864_from_v4l2_std.exit_crit_edge, %if.end12.i.tw5864_from_v4l2_std.exit_crit_edge, %if.end8.i.tw5864_from_v4l2_std.exit_crit_edge, %if.end4.i.tw5864_from_v4l2_std.exit_crit_edge, %if.end.i.tw5864_from_v4l2_std.exit_crit_edge, %entry.tw5864_from_v4l2_std.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.tw5864_from_v4l2_std.exit_crit_edge ], [ 1, %if.end.i.tw5864_from_v4l2_std.exit_crit_edge ], [ 2, %if.end4.i.tw5864_from_v4l2_std.exit_crit_edge ], [ 3, %if.end8.i.tw5864_from_v4l2_std.exit_crit_edge ], [ 4, %if.end12.i.tw5864_from_v4l2_std.exit_crit_edge ], [ 5, %if.end16.i.tw5864_from_v4l2_std.exit_crit_edge ], [ %..i, %if.end20.i ]
  %std2 = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %std2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %retval.0.i, ptr %std2, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  %.tr = trunc i32 %7 to i16
  %8 = shl i16 %.tr, 4
  %conv = or i16 %8, 14
  %conv4 = trunc i32 %retval.0.i to i8
  tail call void @tw5864_indir_writeb(ptr noundef %3, i16 noundef zeroext %conv, i8 noundef zeroext %conv4) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw5864_querystd(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %std) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %root.i = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %.tr.i = trunc i32 %5 to i16
  %6 = shl i16 %.tr.i, 4
  %conv.i = or i16 %6, 14
  %call.i6 = tail call zeroext i8 @tw5864_indir_readb(ptr noundef %3, i16 noundef zeroext %conv.i) #9
  %conv1.i = zext i8 %call.i6 to i32
  %and3.i = and i32 %conv1.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %if.end, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw5864_input_std_get.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw5864_querystd, %if.then8.i)) #9
          to label %cleanup [label %if.then8.i], !srcloc !136

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pci.i = getelementptr inbounds %struct.tw5864_dev, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci.i, align 8
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tw5864_input_std_get.__UNIQUE_ID_ddebug300, ptr noundef %dev9.i, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i = lshr i32 %conv1.i, 4
  %9 = and i32 %and.i, 7
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end.unreachabledefault [
    i32 0, label %if.end.tw5864_get_v4l2_std.exit_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
    i32 4, label %sw.bb4.i
    i32 5, label %sw.bb5.i
    i32 6, label %sw.bb6.i
    i32 7, label %sw.bb7.i
  ]

if.end.tw5864_get_v4l2_std.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw5864_get_v4l2_std.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw5864_get_v4l2_std.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw5864_get_v4l2_std.exit

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw5864_get_v4l2_std.exit

sw.bb4.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw5864_get_v4l2_std.exit

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw5864_get_v4l2_std.exit

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw5864_get_v4l2_std.exit

sw.bb7.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw5864_get_v4l2_std.exit

if.end.unreachabledefault:                        ; preds = %if.end
  unreachable

tw5864_get_v4l2_std.exit:                         ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end.tw5864_get_v4l2_std.exit_crit_edge
  %retval.0.i7 = phi i64 [ 0, %sw.bb7.i ], [ 2048, %sw.bb6.i ], [ 1024, %sw.bb5.i ], [ 256, %sw.bb4.i ], [ 16384, %sw.bb3.i ], [ 65536, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 4096, %if.end.tw5864_get_v4l2_std.exit_crit_edge ]
  %11 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %retval.0.i7, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %tw5864_get_v4l2_std.exit, %if.then8.i, %do.body.i
  %retval.0 = phi i32 [ 0, %tw5864_get_v4l2_std.exit ], [ -11, %if.then8.i ], [ -11, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw5864_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %root = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %.tr = trunc i32 %5 to i16
  %conv = shl i16 %.tr, 4
  %call1 = tail call zeroext i8 @tw5864_indir_readb(ptr noundef %3, i16 noundef zeroext %conv) #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  %.tr61 = trunc i32 %7 to i16
  %8 = shl i16 %.tr61, 4
  %conv5 = or i16 %8, 13
  %call6 = tail call zeroext i8 @tw5864_indir_readb(ptr noundef %3, i16 noundef zeroext %conv5) #9
  %9 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %type, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 8
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.23, i32 noundef %13)
  %std = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 5
  %14 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 16777215, ptr %std, align 8
  %conv9 = zext i8 %call1 to i32
  %and = and i32 %conv9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %status = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 6
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 8
  %or = or i32 %16, 65536
  store i32 %or, ptr %status, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  %and14 = and i32 %conv9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %status17 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 6
  %17 = ptrtoint ptr %status17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status17, align 8
  %or18 = or i32 %18, 256
  store i32 %or18, ptr %status17, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end12.if.end19_crit_edge
  %and21 = and i32 %conv9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end26_crit_edge, label %if.then23

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %status24 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 6
  %19 = ptrtoint ptr %status24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status24, align 8
  %or25 = or i32 %20, 2
  store i32 %or25, ptr %status24, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end19.if.end26_crit_edge
  %and28 = and i32 %conv9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end33_crit_edge, label %if.then30

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %status31 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 6
  %21 = ptrtoint ptr %status31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status31, align 8
  %or32 = or i32 %22, 4
  store i32 %or32, ptr %status31, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end26.if.end33_crit_edge
  %23 = and i8 %call6, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool36.not = icmp eq i8 %23, 0
  br i1 %tobool36.not, label %if.end33.cleanup_crit_edge, label %if.then37

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %status38 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 6
  %24 = ptrtoint ptr %status38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status38, align 8
  %or39 = or i32 %25, 16777216
  store i32 %or39, ptr %status38, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end33.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then37 ], [ 0, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tw5864_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tw5864_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %tobool.not = icmp eq i32 %i, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw5864_g_parm(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %sp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1
  %2 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %parm, align 4
  %std.i = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %std.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %std.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %switch.lookup, label %tw5864_frameinterval_get.exit

tw5864_frameinterval_get.exit:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %root.i = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root.i, align 4
  %pci.i = getelementptr inbounds %struct.tw5864_dev, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci.i, align 8
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4.i, ptr noundef nonnull @.str.24, i32 noundef %4) #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.tw5864_g_parm, i32 0, i32 %4
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep17 = getelementptr inbounds [3 x i32], ptr @switch.table.tw5864_g_parm.32, i32 0, i32 %4
  %11 = ptrtoint ptr %switch.gep17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load18 = load i32, ptr %switch.gep17, align 4
  %12 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %switch.load, ptr %timeperframe, align 4
  %denominator3.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %denominator3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %switch.load18, ptr %denominator3.i, align 4
  %frame_interval = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 35
  %14 = ptrtoint ptr %frame_interval to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_interval, align 4
  %mul = mul i32 %switch.load, %15
  store i32 %mul, ptr %timeperframe, align 4
  %capturemode = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %capturemode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %capturemode, align 4
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 4
  %17 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %readbuffers, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %tw5864_frameinterval_get.exit
  %retval.0.i14 = phi i32 [ -22, %tw5864_frameinterval_get.exit ], [ 0, %switch.lookup ]
  ret i32 %retval.0.i14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw5864_s_parm(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %sp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2
  %std.i = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %std.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %std.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %switch.lookup, label %tw5864_frameinterval_get.exit

tw5864_frameinterval_get.exit:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %root.i = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %root.i, align 4
  %pci.i = getelementptr inbounds %struct.tw5864_dev, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci.i, align 8
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4.i, ptr noundef nonnull @.str.24, i32 noundef %3) #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.tw5864_s_parm, i32 0, i32 %3
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep67 = getelementptr inbounds [3 x i32], ptr @switch.table.tw5864_s_parm.33, i32 0, i32 %3
  %10 = ptrtoint ptr %switch.gep67 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load68 = load i32, ptr %switch.gep67, align 4
  %11 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %timeperframe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not = icmp eq i32 %12, 0
  br i1 %tobool2.not, label %switch.lookup.if.then4_crit_edge, label %lor.lhs.false

switch.lookup.if.then4_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

lor.lhs.false:                                    ; preds = %switch.lookup
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not = icmp eq i32 %14, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.then4_crit_edge, label %if.else

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %switch.lookup.if.then4_crit_edge
  %frame_interval = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 35
  %15 = ptrtoint ptr %frame_interval to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frame_interval, align 4
  %mul = mul i32 %16, %switch.load68
  %17 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul, ptr %timeperframe, align 4
  %denominator8 = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2, i32 1
  br label %if.end20.sink.split

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %switch.load)
  %cmp.not = icmp eq i32 %14, %switch.load
  br i1 %cmp.not, label %if.else.if.end20_crit_edge, label %if.then11

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %mul14 = mul i32 %12, %switch.load
  %div = udiv i32 %mul14, %14
  %18 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div, ptr %timeperframe, align 4
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.then11, %if.then4
  %denominator.sink = phi ptr [ %denominator, %if.then11 ], [ %denominator8, %if.then4 ]
  %19 = ptrtoint ptr %denominator.sink to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %switch.load, ptr %denominator.sink, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.else.if.end20_crit_edge
  %20 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timeperframe, align 4
  %div23 = udiv i32 %21, %switch.load68
  %frame_interval24 = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 35
  %22 = tail call i32 @llvm.smax.i32(i32 %div23, i32 1)
  %23 = ptrtoint ptr %frame_interval24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %frame_interval24, align 4
  %root.i53 = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %root.i53 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %root.i53, align 4
  %26 = ptrtoint ptr %std.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %std.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i = icmp eq i32 %27, 0
  %cond.i = select i1 %cmp.i, i32 30, i32 25
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end20
  %shift.023.i = phi i32 [ 0, %if.end20 ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %unary_framerate.022.i = phi i32 [ 0, %if.end20 ], [ %or.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %shift.023.i
  %or.i = or i32 %shl.i, %unary_framerate.022.i
  %add.i = add i32 %shift.023.i, %22
  %cmp1.i = icmp slt i32 %add.i, %cond.i
  br i1 %cmp1.i, label %for.body.i.for.body.i_crit_edge, label %tw5864_frame_interval_set.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

tw5864_frame_interval_set.exit:                   ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %29 = shl i32 %28, 16
  %mmio.i = getelementptr inbounds %struct.tw5864_dev, ptr %25, i32 0, i32 11
  %30 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 8
  %mul.i = shl i32 %33, 5
  %add2.i = add i32 %mul.i, 37120
  %add.ptr.i = getelementptr i8, ptr %31, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %29) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @arm_heavy_mb() #9
  %and.i = and i32 %or.i, 65535
  %34 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  %35 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %1, align 8
  %mul9.i = shl i32 %38, 5
  %add10.i = add i32 %mul9.i, 37124
  %add.ptr12.i = getelementptr i8, ptr %36, i32 %add10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %34) #9, !srcloc !101
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %39 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %parm.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1
  %41 = ptrtoint ptr %parm.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4096, ptr %parm.i, align 4
  %std.i.i = getelementptr inbounds %struct.tw5864_input, ptr %40, i32 0, i32 15
  %42 = ptrtoint ptr %std.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %std.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %44 = icmp ult i32 %43, 3
  br i1 %44, label %switch.lookup69, label %tw5864_frameinterval_get.exit.i

tw5864_frameinterval_get.exit.i:                  ; preds = %tw5864_frame_interval_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  %root.i.i = getelementptr inbounds %struct.tw5864_input, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %root.i.i, align 4
  %pci.i.i = getelementptr inbounds %struct.tw5864_dev, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pci.i.i, align 8
  %dev4.i.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4.i.i, ptr noundef nonnull @.str.24, i32 noundef %43) #12
  br label %cleanup

switch.lookup69:                                  ; preds = %tw5864_frame_interval_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep70 = getelementptr inbounds [3 x i32], ptr @switch.table.tw5864_s_parm.34, i32 0, i32 %43
  %49 = ptrtoint ptr %switch.gep70 to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load71 = load i32, ptr %switch.gep70, align 4
  %switch.gep72 = getelementptr inbounds [3 x i32], ptr @switch.table.tw5864_s_parm.35, i32 0, i32 %43
  %50 = ptrtoint ptr %switch.gep72 to i32
  call void @__asan_load4_noabort(i32 %50)
  %switch.load73 = load i32, ptr %switch.gep72, align 4
  %51 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %switch.load71, ptr %timeperframe, align 4
  %denominator3.i.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %denominator3.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %switch.load73, ptr %denominator3.i.i, align 4
  %frame_interval.i55 = getelementptr inbounds %struct.tw5864_input, ptr %40, i32 0, i32 35
  %53 = ptrtoint ptr %frame_interval.i55 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %frame_interval.i55, align 4
  %mul.i56 = mul i32 %54, %switch.load71
  store i32 %mul.i56, ptr %timeperframe, align 4
  %capturemode.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 1
  %55 = ptrtoint ptr %capturemode.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %capturemode.i, align 4
  %readbuffers.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 4
  %56 = ptrtoint ptr %readbuffers.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %readbuffers.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup69, %tw5864_frameinterval_get.exit.i, %tw5864_frameinterval_get.exit
  %retval.0 = phi i32 [ -22, %tw5864_frameinterval_get.exit ], [ -22, %tw5864_frameinterval_get.exit.i ], [ 0, %switch.lookup69 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw5864_g_reg(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %root = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %4 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 1048576, i64 %5)
  %cmp = icmp ult i64 %5, 1048576
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 557055, i64 %5)
  %cmp3 = icmp ugt i64 %5, 557055
  br i1 %cmp3, label %if.then.cleanup20_crit_edge, label %if.end

if.then.cleanup20_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup20

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 4, ptr %size, align 1
  %mmio = getelementptr inbounds %struct.tw5864_dev, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %idx.ext = trunc i64 %5 to i32
  %add.ptr = getelementptr i8, ptr %8, i32 %idx.ext
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !99
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %conv = zext i32 %10 to i64
  br label %cleanup20.sink.split

if.else:                                          ; preds = %entry
  %11 = add i64 %5, -1052415
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3839, i64 %11)
  %cmp9 = icmp ult i64 %11, -3839
  br i1 %cmp9, label %if.else.cleanup20_crit_edge, label %if.end12

if.else.cleanup20_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup20

if.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %size13 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %12 = ptrtoint ptr %size13 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 1, ptr %size13, align 1
  %conv15 = trunc i64 %5 to i16
  %call16 = tail call zeroext i8 @tw5864_indir_readb(ptr noundef %3, i16 noundef zeroext %conv15) #9
  %conv17 = zext i8 %call16 to i64
  br label %cleanup20.sink.split

cleanup20.sink.split:                             ; preds = %if.end12, %if.end
  %conv.sink = phi i64 [ %conv, %if.end ], [ %conv17, %if.end12 ]
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %13 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %conv.sink, ptr %val, align 1
  br label %cleanup20

cleanup20:                                        ; preds = %cleanup20.sink.split, %if.else.cleanup20_crit_edge, %if.then.cleanup20_crit_edge
  %retval.1 = phi i32 [ -22, %if.then.cleanup20_crit_edge ], [ -22, %if.else.cleanup20_crit_edge ], [ 0, %cleanup20.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw5864_s_reg(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %root = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %4 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 1048576, i64 %5)
  %cmp = icmp ult i64 %5, 1048576
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 557055, i64 %5)
  %cmp3 = icmp ugt i64 %5, 557055
  br i1 %cmp3, label %if.then.cleanup16_crit_edge, label %do.body

if.then.cleanup16_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %6 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %val, align 1
  %conv = trunc i64 %7 to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %mmio = getelementptr inbounds %struct.tw5864_dev, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 4
  %11 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %reg1, align 1
  %idx.ext = trunc i64 %12 to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %idx.ext
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #9, !srcloc !101
  br label %cleanup16

if.else:                                          ; preds = %entry
  %13 = add i64 %5, -1052415
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3839, i64 %13)
  %cmp7 = icmp ult i64 %13, -3839
  br i1 %cmp7, label %if.else.cleanup16_crit_edge, label %if.end10

if.else.cleanup16_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

if.end10:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv12 = trunc i64 %5 to i16
  %val13 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %14 = ptrtoint ptr %val13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %val13, align 1
  %conv14 = trunc i64 %15 to i8
  tail call void @tw5864_indir_writeb(ptr noundef %3, i16 noundef zeroext %conv12, i8 noundef zeroext %conv14) #9
  br label %cleanup16

cleanup16:                                        ; preds = %if.end10, %if.else.cleanup16_crit_edge, %do.body, %if.then.cleanup16_crit_edge
  %retval.1 = phi i32 [ -22, %if.then.cleanup16_crit_edge ], [ 0, %if.end10 ], [ 0, %do.body ], [ -22, %if.else.cleanup16_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw5864_enum_framesizes(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %4 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %5)
  %cmp1.not = icmp eq i32 %5, 875967048
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %type, align 4
  %7 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 704, ptr %7, align 4
  %std = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %std to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %std, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4 = icmp eq i32 %10, 0
  %cond = select i1 %cmp4, i32 480, i32 576
  %height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw5864_enum_frameintervals(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fintv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %std = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %std to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %std, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %cond = select i1 %cmp, i32 30, i32 25
  %4 = ptrtoint ptr %fintv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fintv, align 4
  %pixel_format2 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fintv, i32 0, i32 1
  %6 = ptrtoint ptr %pixel_format2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixel_format2, align 4
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %7)
  %cmp1.not.i = icmp eq i32 %7, 875967048
  %or.cond = select i1 %cmp.not.i, i1 %cmp1.not.i, i1 false
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %width = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fintv, i32 0, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 704, i32 %9)
  %cmp5.not = icmp eq i32 %9, 704
  br i1 %cmp5.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %std.i = getelementptr inbounds %struct.tw5864_input, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %std.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %std.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4.i = icmp eq i32 %13, 0
  %cond.i = select i1 %cmp4.i, i32 480, i32 576
  %height = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fintv, i32 0, i32 3
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %cond.i)
  %cmp7.not = icmp eq i32 %15, %cond.i
  br i1 %cmp7.not, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fintv, i32 0, i32 4
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %type, align 4
  %17 = ptrtoint ptr %std to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %std, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %19 = icmp ult i32 %18, 3
  br i1 %19, label %switch.lookup, label %tw5864_frameinterval_get.exit

tw5864_frameinterval_get.exit:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %root.i = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %root.i, align 4
  %pci.i = getelementptr inbounds %struct.tw5864_dev, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci.i, align 8
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4.i, ptr noundef nonnull @.str.24, i32 noundef %18) #12
  br label %cleanup

switch.lookup:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.tw5864_enum_frameintervals, i32 0, i32 %18
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep50 = getelementptr inbounds [3 x i32], ptr @switch.table.tw5864_enum_frameintervals.36, i32 0, i32 %18
  %25 = ptrtoint ptr %switch.gep50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load51 = load i32, ptr %switch.gep50, align 4
  %26 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fintv, i32 0, i32 5
  %step = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fintv, i32 0, i32 5, i32 0, i32 2
  %frameinterval.sroa.6.0.insert.ext = zext i32 %switch.load to i64
  %frameinterval.sroa.0.0.insert.ext = zext i32 %switch.load51 to i64
  %frameinterval.sroa.0.0.insert.shift = shl nuw nsw i64 %frameinterval.sroa.0.0.insert.ext, 32
  %frameinterval.sroa.0.0.insert.insert = or i64 %frameinterval.sroa.0.0.insert.shift, %frameinterval.sroa.6.0.insert.ext
  %27 = ptrtoint ptr %step to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %frameinterval.sroa.0.0.insert.insert, ptr %step, align 4
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %frameinterval.sroa.0.0.insert.insert, ptr %26, align 4
  %max = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fintv, i32 0, i32 5, i32 0, i32 1
  %29 = ptrtoint ptr %max to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %frameinterval.sroa.0.0.insert.insert, ptr %max, align 4
  %mul = mul nuw nsw i32 %switch.load51, %cond
  store i32 %mul, ptr %max, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %tw5864_frameinterval_get.exit, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %tw5864_frameinterval_get.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw5864_subscribe_event(ptr noundef %fh, ptr noundef %sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cond = icmp eq i32 %1, 6
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 30, ptr noundef null) #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %fh, ptr noundef %sub) #9
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %retval.0 = phi i32 [ %call, %sw.bb ], [ %call1, %sw.default ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw5864_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1496
  %root = getelementptr i8, ptr %1, i32 -1492
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963779, label %sw.bb2
    i32 9963777, label %sw.bb9
    i32 9963778, label %sw.bb16
    i32 10029515, label %sw.bb29
    i32 10029665, label %do.body32
    i32 10684674, label %sw.bb44
    i32 10684675, label %sw.bb47
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 8
  %.tr86 = trunc i32 %8 to i16
  %9 = shl i16 %.tr86, 4
  %conv = or i16 %9, 10
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %conv1 = trunc i32 %11 to i8
  tail call void @tw5864_indir_writeb(ptr noundef %3, i16 noundef zeroext %conv, i8 noundef zeroext %conv1) #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 8
  %.tr85 = trunc i32 %13 to i16
  %14 = shl i16 %.tr85, 4
  %conv6 = or i16 %14, 7
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val7, align 4
  %conv8 = trunc i32 %16 to i8
  tail call void @tw5864_indir_writeb(ptr noundef %3, i16 noundef zeroext %conv6, i8 noundef zeroext %conv8) #9
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr, align 8
  %.tr84 = trunc i32 %18 to i16
  %19 = shl i16 %.tr84, 4
  %conv13 = or i16 %19, 9
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val14, align 4
  %conv15 = trunc i32 %21 to i8
  tail call void @tw5864_indir_writeb(ptr noundef %3, i16 noundef zeroext %conv13, i8 noundef zeroext %conv15) #9
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr, align 8
  %.tr = trunc i32 %23 to i16
  %24 = shl i16 %.tr, 4
  %conv20 = or i16 %24, 11
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %25 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val21, align 4
  %conv22 = trunc i32 %26 to i8
  tail call void @tw5864_indir_writeb(ptr noundef %3, i16 noundef zeroext %conv20, i8 noundef zeroext %conv22) #9
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr, align 8
  %.tr83 = trunc i32 %28 to i16
  %29 = shl i16 %.tr83, 4
  %conv26 = or i16 %29, 12
  %30 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val21, align 4
  %conv28 = trunc i32 %31 to i8
  tail call void @tw5864_indir_writeb(ptr noundef %3, i16 noundef zeroext %conv26, i8 noundef zeroext %conv28) #9
  br label %cleanup

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %32 = ptrtoint ptr %val30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val30, align 4
  %gop = getelementptr i8, ptr %1, i32 1192
  %34 = ptrtoint ptr %gop to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %gop, align 8
  br label %cleanup

do.body32:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %slock = getelementptr i8, ptr %1, i32 -1396
  %call35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #9
  %val38 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %35 = ptrtoint ptr %val38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val38, align 4
  %qp = getelementptr i8, ptr %1, i32 1188
  %37 = ptrtoint ptr %qp to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %qp, align 4
  %reg_dsp_qp = getelementptr i8, ptr %1, i32 780
  %38 = ptrtoint ptr %reg_dsp_qp to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %reg_dsp_qp, align 4
  %arrayidx = getelementptr [52 x i32], ptr @lambda_lookup_table, i32 0, i32 %36
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  %reg_dsp_ref_mvp_lambda = getelementptr i8, ptr %1, i32 784
  %41 = ptrtoint ptr %reg_dsp_ref_mvp_lambda to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %reg_dsp_ref_mvp_lambda, align 8
  %arrayidx42 = getelementptr [52 x i32], ptr @intra4x4_lambda3, i32 0, i32 %36
  %42 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx42, align 4
  %reg_dsp_i4x4_weight = getelementptr i8, ptr %1, i32 788
  %44 = ptrtoint ptr %reg_dsp_i4x4_weight to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %reg_dsp_i4x4_weight, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call35) #9
  br label %cleanup

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %md_threshold_grid_values = getelementptr i8, ptr %1, i32 804
  %val45 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %45 = ptrtoint ptr %val45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val45, align 4
  %47 = trunc i32 %46 to i8
  %48 = zext i8 %47 to i32
  %49 = call ptr @memset(ptr %md_threshold_grid_values, i32 %48, i32 384)
  br label %cleanup

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %md_threshold_grid_values48 = getelementptr i8, ptr %1, i32 804
  %md_threshold_grid_ctrl = getelementptr i8, ptr %1, i32 800
  %50 = ptrtoint ptr %md_threshold_grid_ctrl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %md_threshold_grid_ctrl, align 8
  %p_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %51, i32 0, i32 25
  %52 = ptrtoint ptr %p_new to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %p_new, align 8
  %54 = call ptr @memcpy(ptr %md_threshold_grid_values48, ptr %53, i32 384)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb47, %sw.bb44, %do.body32, %sw.bb29, %sw.bb16, %sw.bb9, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tw5864_handle_frame(ptr nocapture noundef readonly %frame) unnamed_addr #0 align 64 {
entry:
  %ev = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %input1 = getelementptr inbounds %struct.tw5864_h264_frame, ptr %frame, i32 0, i32 4
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1, align 8
  %root = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  %vlc_len = getelementptr inbounds %struct.tw5864_h264_frame, ptr %frame, i32 0, i32 2
  %4 = ptrtoint ptr %vlc_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vlc_len, align 8
  %sub = add i32 %5, -3
  %buf_cur_ptr = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %buf_cur_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf_cur_ptr, align 8
  %8 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %frame, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 3
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr, align 1
  %slock = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #9
  %vb6 = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 30
  %12 = ptrtoint ptr %vb6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vb6, align 4
  store ptr null, ptr %vb6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #9
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %do.body9, label %if.end19

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw5864_handle_frame.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw5864_handle_frame, %if.then15)) #9
          to label %cleanup [label %if.then15], !srcloc !136

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %pci = getelementptr inbounds %struct.tw5864_dev, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tw5864_handle_frame.__UNIQUE_ID_ddebug303, ptr noundef %dev16, ptr noundef nonnull @.str.28) #9
  br label %cleanup

if.end19:                                         ; preds = %entry
  %buf_cur_space_left = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %buf_cur_space_left to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_cur_space_left, align 4
  %mul = mul i32 %sub, 5
  %div = sdiv i32 %mul, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %div)
  %cmp23 = icmp slt i32 %17, %div
  br i1 %cmp23, label %do.body26, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end19
  %tail_nb_bits = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %tail_nb_bits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tail_nb_bits, align 8
  %sub39 = sub i32 8, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub39)
  %cmp40168 = icmp sgt i32 %sub39, 0
  br i1 %cmp40168, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.body26:                                        ; preds = %if.end19
  %.b164 = load i1, ptr @tw5864_handle_frame.__print_once, align 1
  br i1 %.b164, label %do.body26.cleanup_crit_edge, label %if.then28

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then28:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tw5864_handle_frame.__print_once, align 1
  %pci32 = getelementptr inbounds %struct.tw5864_dev, ptr %3, i32 0, i32 10
  %20 = ptrtoint ptr %pci32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci32, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.29, i32 noundef %17, i32 noundef %sub) #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0170 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %vlc_mask.0169 = phi i32 [ %phi.cast, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0170
  %inc = add nuw nsw i32 %i.0170, 1
  %shl.masked = and i32 %shl, 255
  %phi.cast = or i32 %shl.masked, %vlc_mask.0169
  %exitcond.not = icmp eq i32 %inc, %sub39
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %vlc_mask.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %phi.cast, %for.body.for.end_crit_edge ]
  %tail = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 18
  %22 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tail, align 4
  %conv46 = zext i8 %23 to i32
  %conv47 = xor i32 %vlc_mask.0.lcssa, -1
  %and48 = and i32 %conv46, %conv47
  %conv49 = zext i8 %11 to i32
  %and51 = and i32 %vlc_mask.0.lcssa, %conv49
  %or52 = or i32 %and48, %and51
  %conv53 = trunc i32 %or52 to i8
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv53, ptr %7, align 1
  %25 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %frame, align 8
  %add.ptr58 = getelementptr i8, ptr %26, i32 4
  %add.ptr59 = getelementptr i8, ptr %26, i32 %5
  %dst.0171 = getelementptr i8, ptr %7, i32 1
  %cmp61172 = icmp ult ptr %add.ptr58, %add.ptr59
  br i1 %cmp61172, label %for.end.for.body63_crit_edge, label %for.end.for.end88_crit_edge

for.end.for.end88_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end88

for.end.for.body63_crit_edge:                     ; preds = %for.end
  br label %for.body63

for.body63:                                       ; preds = %if.end84.for.body63_crit_edge, %for.end.for.body63_crit_edge
  %dst.0177 = phi ptr [ %dst.0, %if.end84.for.body63_crit_edge ], [ %dst.0171, %for.end.for.body63_crit_edge ]
  %src.0175 = phi ptr [ %incdec.ptr87, %if.end84.for.body63_crit_edge ], [ %add.ptr58, %for.end.for.body63_crit_edge ]
  %zero_run.0174 = phi i32 [ %zero_run.1, %if.end84.for.body63_crit_edge ], [ 0, %for.end.for.body63_crit_edge ]
  %.pn173 = phi ptr [ %dst.2, %if.end84.for.body63_crit_edge ], [ %7, %for.end.for.body63_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %zero_run.0174)
  %cmp64 = icmp slt i32 %zero_run.0174, 2
  %27 = ptrtoint ptr %src.0175 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %src.0175, align 1
  br i1 %cmp64, label %if.then66, label %if.else73

if.then66:                                        ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp68 = icmp eq i8 %28, 0
  %inc71 = add nsw i32 %zero_run.0174, 1
  %spec.select = select i1 %cmp68, i32 %inc71, i32 0
  br label %if.end84

if.else73:                                        ; preds = %for.body63
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %28)
  %cmp76 = icmp ult i8 %28, 4
  br i1 %cmp76, label %if.then78, label %if.else73.if.end80_crit_edge

if.else73.if.end80_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then78:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr79 = getelementptr i8, ptr %.pn173, i32 2
  %29 = ptrtoint ptr %dst.0177 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %dst.0177, align 1
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.else73.if.end80_crit_edge
  %dst.1 = phi ptr [ %incdec.ptr79, %if.then78 ], [ %dst.0177, %if.else73.if.end80_crit_edge ]
  %30 = ptrtoint ptr %src.0175 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %src.0175, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp82 = icmp eq i8 %31, 0
  %conv83 = zext i1 %cmp82 to i32
  br label %if.end84

if.end84:                                         ; preds = %if.end80, %if.then66
  %dst.2 = phi ptr [ %dst.1, %if.end80 ], [ %dst.0177, %if.then66 ]
  %zero_run.1 = phi i32 [ %conv83, %if.end80 ], [ %spec.select, %if.then66 ]
  %32 = ptrtoint ptr %src.0175 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %src.0175, align 1
  %34 = ptrtoint ptr %dst.2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %dst.2, align 1
  %incdec.ptr87 = getelementptr i8, ptr %src.0175, i32 1
  %dst.0 = getelementptr i8, ptr %dst.2, i32 1
  %exitcond180.not = icmp eq ptr %incdec.ptr87, %add.ptr59
  br i1 %exitcond180.not, label %if.end84.for.end88_crit_edge, label %if.end84.for.body63_crit_edge

if.end84.for.body63_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body63

if.end84.for.end88_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end88

for.end88:                                        ; preds = %if.end84.for.end88_crit_edge, %for.end.for.end88_crit_edge
  %dst.0.lcssa = phi ptr [ %dst.0171, %for.end.for.end88_crit_edge ], [ %dst.0, %if.end84.for.end88_crit_edge ]
  %call93 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %13, i32 noundef 0) #9
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %13, i32 0, i32 4
  %35 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.not.i = icmp eq i32 %36, 0
  br i1 %cmp.not.i, label %for.end88.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

for.end88.vb2_set_plane_payload.exit_crit_edge:   ; preds = %for.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %for.end88
  %sub.ptr.lhs.cast = ptrtoint ptr %dst.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call93 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %13, i32 0, i32 10, i32 0, i32 4
  %37 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %sub.ptr.sub)
  %cmp1.i = icmp ult i32 %38, %sub.ptr.sub
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !116

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %39 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %40, %if.then38.i ], [ %sub.ptr.sub, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %13, i32 0, i32 10, i32 0, i32 3
  %41 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %for.end88.vb2_set_plane_payload.exit_crit_edge
  %timestamp = getelementptr inbounds %struct.tw5864_h264_frame, ptr %frame, i32 0, i32 5
  %42 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %timestamp, align 8
  %timestamp96 = getelementptr inbounds %struct.vb2_buffer, ptr %13, i32 0, i32 5
  %44 = ptrtoint ptr %timestamp96 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %timestamp96, align 8
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %13, i32 0, i32 2
  %45 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %field, align 4
  %seqno = getelementptr inbounds %struct.tw5864_h264_frame, ptr %frame, i32 0, i32 6
  %46 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %seqno, align 8
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %13, i32 0, i32 4
  %48 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %sequence, align 8
  %gop_seqno = getelementptr inbounds %struct.tw5864_h264_frame, ptr %frame, i32 0, i32 7
  %49 = ptrtoint ptr %gop_seqno to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %gop_seqno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool97.not = icmp eq i32 %50, 0
  br i1 %tobool97.not, label %vb2_set_plane_payload.exit.if.end105_crit_edge, label %land.lhs.true

vb2_set_plane_payload.exit.if.end105_crit_edge:   ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

land.lhs.true:                                    ; preds = %vb2_set_plane_payload.exit
  %51 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %input1, align 8
  %mv2.i = getelementptr inbounds %struct.tw5864_h264_frame, ptr %frame, i32 0, i32 1
  %53 = ptrtoint ptr %mv2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mv2.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 192
  br i1 %exitcond.not.i, label %for.cond.i.if.end105_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.if.end105_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %land.lhs.true
  %i.018.i = phi i32 [ 0, %land.lhs.true ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tw5864_input, ptr %52, i32 0, i32 32, i32 %i.018.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx.i, align 2
  %arrayidx3.i = getelementptr i32, ptr %54, i32 %i.018.i
  %57 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx3.i, align 4
  %shr.i.i = lshr i32 %58, 10
  %and2.i.i = and i32 %58, 15
  %and3.i.i = and i32 %shr.i.i, 15
  %add.i.i = add nuw nsw i32 %and3.i.i, %and2.i.i
  %conv.i = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i)
  %cmp4.not.i = icmp ugt i32 %add.i.i, %conv.i
  br i1 %cmp4.not.i, label %if.then100, label %for.cond.i

if.then100:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %ev) #9
  %59 = call ptr @memset(ptr %ev, i32 0, i32 136)
  %60 = ptrtoint ptr %ev to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 6, ptr %ev, align 8
  %u = getelementptr inbounds %struct.v4l2_event, ptr %ev, i32 0, i32 1
  %61 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %u, align 8
  %frame_sequence = getelementptr inbounds %struct.v4l2_event, ptr %ev, i32 0, i32 1, i32 0, i32 1
  %62 = ptrtoint ptr %frame_sequence to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %47, ptr %frame_sequence, align 4
  %vdev = getelementptr inbounds %struct.tw5864_input, ptr %1, i32 0, i32 4
  call void @v4l2_event_queue(ptr noundef %vdev, ptr noundef nonnull %ev) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %ev) #9
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %for.cond.i.if.end105_crit_edge, %vb2_set_plane_payload.exit.if.end105_crit_edge
  call void @vb2_buffer_done(ptr noundef nonnull %13, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %if.then28, %do.body26.cleanup_crit_edge, %if.then15, %do.body9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !30, !32, !33, !34, !35, !37, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !61, !63, !64, !65, !66, !67, !69, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 964, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tw5864_video_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @tw5864_video_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @tw5864_video_init._entry.5, !9, !"_entry", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 973, i32 4}
!10 = !{ptr @tw5864_video_init._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 1247, i32 6}
!13 = !{ptr @tw5864_video_input_init.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 1104, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @tw5864_video_input_init.__key.8, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 1105, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @tw5864_video_input_init._key, !20, !"_key", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 1131, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 1168, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @tw5864_video_input_init._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @tw5864_video_input_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @tw5864_video_qops, !29, !"tw5864_video_qops", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 468, i32 29}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 238, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tw5864_enable_input.__UNIQUE_ID_ddebug301, !31, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!35 = !{ptr @lambda_lookup_table, !36, !"lambda_lookup_table", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 155, i32 27}
!37 = !{ptr @intra4x4_lambda3, !38, !"intra4x4_lambda3", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 165, i32 27}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 419, i32 2}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @tw5864_disable_input.__UNIQUE_ID_ddebug302, !40, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!43 = !{ptr @tw5864_video_template, !44, !"tw5864_video_template", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 923, i32 34}
!45 = !{ptr @video_fops, !46, !"video_fops", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 833, i32 42}
!47 = !{ptr @video_ioctl_ops, !48, !"video_ioctl_ops", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 890, i32 36}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 605, i32 41}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 607, i32 25}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 538, i32 3}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 217, i32 3}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @tw5864_input_std_get.__UNIQUE_ID_ddebug300, !56, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 570, i32 37}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 724, i32 3}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @tw5864_frameinterval_get._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @tw5864_frameinterval_get._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @tw5864_ctrl_ops, !68, !"tw5864_ctrl_ops", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 829, i32 35}
!69 = !{ptr @tw5864_md_thresholds, !70, !"tw5864_md_thresholds", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 934, i32 38}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 1393, i32 3}
!73 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @tw5864_handle_frame.__UNIQUE_ID_ddebug303, !72, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!75 = distinct !{null, !76, !"__print_once", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 1404, i32 3}
!77 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @tw5864_handle_frame._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @tw5864_handle_frame._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!82 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @encoder_vlc_lookup_table, !84, !"encoder_vlc_lookup_table", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 49, i32 18}
!85 = !{ptr @forward_quantization_table, !86, !"forward_quantization_table", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 19, i32 18}
!87 = !{ptr @inverse_quantization_table, !88, !"inverse_quantization_table", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/tw5864/tw5864-video.c", i32 34, i32 18}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i64 2156915617}
!99 = !{i64 7188704}
!100 = !{i64 2156916658}
!101 = !{i64 7188286}
!102 = !{i64 2156917028}
!103 = !{i64 2156917557}
!104 = !{i64 2156918094}
!105 = !{i64 2156918613}
!106 = !{i64 2156919165}
!107 = !{i64 2156919747}
!108 = !{i64 2156921758}
!109 = !{i64 2156922867}
!110 = !{i64 2156925290}
!111 = !{i64 2156926456}
!112 = !{i64 2156926763}
!113 = !{i64 2156927364}
!114 = !{i64 2156928094}
!115 = !{i64 2156928623}
!116 = !{!"branch_weights", i32 2000, i32 1}
!117 = !{i64 2156976507}
!118 = !{i64 2156977040}
!119 = !{i64 2156977581}
!120 = !{i64 2156978116}
!121 = !{i64 2156978740}
!122 = !{i64 2156951525}
!123 = !{i64 2156953001}
!124 = !{i64 2156953691}
!125 = !{i64 2156954291}
!126 = !{i64 2156954764}
!127 = !{i64 2156955245}
!128 = !{i64 2156955738}
!129 = !{i64 2156956231}
!130 = !{i64 2156956724}
!131 = !{i64 2156957209}
!132 = !{i64 2156957675}
!133 = !{i64 2156958258}
!134 = !{i64 2156958921}
!135 = !{i64 2156959746}
!136 = !{i64 2148999191, i64 2148999196, i64 2148999209, i64 2148999253, i64 2148999287, i64 2148999308}
!137 = !{i64 2156888728}
!138 = !{i64 2156889669}
!139 = !{i64 2156897961}
!140 = !{i64 2156898647}
!141 = !{i64 2156899266}
!142 = !{i64 2156899887}
!143 = !{i64 2156900539}
!144 = !{i64 2156940829}
!145 = !{i64 2156941523}
!146 = !{i64 2156904989}
!147 = !{i64 2156906128}
!148 = !{i64 2156908561}
!149 = !{i64 2156909898}
!150 = !{i64 2156912174}
!151 = !{i64 2156913433}
!152 = !{i64 2156944433}
!153 = !{i64 2156944773}
