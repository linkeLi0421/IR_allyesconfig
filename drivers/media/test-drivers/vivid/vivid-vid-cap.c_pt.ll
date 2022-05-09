; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-vid-cap.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-vid-cap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_frmsize_discrete = type { i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vivid_fmt = type { i32, i32, i8, [3 x i8], i32, i8, i8, [3 x i32], [3 x i32] }
%struct.v4l2_audio = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.98 }
%union.anon.98 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.v4l2_dv_timings = type { i32, %union.anon.96 }
%union.anon.96 = type { [32 x i32] }
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
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.101, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.102, %struct.anon.103, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.101 = type { ptr, ptr }
%struct.anon.102 = type { ptr, ptr }
%struct.anon.103 = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.104, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.104 = type { ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.105 }
%struct.anon.105 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.106, i32, i32 }
%union.anon.106 = type { i32 }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vivid_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.v4l2_bt_timings = type <{ i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_fract, i8, i8, [46 x i8] }>
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.93, %union.anon.94, i32, ptr, i32, %struct.anon.95, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.93 = type { i64 }
%union.anon.94 = type { ptr }
%struct.anon.95 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_format = type { i32, %union.anon.110 }
%union.anon.110 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.111, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.111 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_edid = type { i32, i32, i32, [5 x i32], ptr }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.112, [2 x i32] }
%union.anon.112 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.113, [2 x i32] }
%union.anon.113 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }
%struct.v4l2_streamparm = type { i32, %union.anon.114 }
%union.anon.114 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }

@vivid_vid_cap_qops = dso_local constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @vid_cap_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @vid_cap_buf_prepare, ptr @vid_cap_buf_finish, ptr null, ptr @vid_cap_start_streaming, ptr @vid_cap_stop_streaming, ptr @vid_cap_buf_queue, ptr @vid_cap_buf_request_complete }, [48 x i8] zeroinitializer }, align 32
@webcam_sizes = internal constant { [6 x %struct.v4l2_frmsize_discrete], [48 x i8] } { [6 x %struct.v4l2_frmsize_discrete] [%struct.v4l2_frmsize_discrete { i32 320, i32 180 }, %struct.v4l2_frmsize_discrete { i32 640, i32 360 }, %struct.v4l2_frmsize_discrete { i32 640, i32 480 }, %struct.v4l2_frmsize_discrete { i32 1280, i32 720 }, %struct.v4l2_frmsize_discrete { i32 1920, i32 1080 }, %struct.v4l2_frmsize_discrete { i32 3840, i32 2160 }], [48 x i8] zeroinitializer }, align 32
@webcam_intervals = internal constant { [12 x %struct.v4l2_fract], [32 x i8] } { [12 x %struct.v4l2_fract] [%struct.v4l2_fract { i32 1, i32 1 }, %struct.v4l2_fract { i32 1, i32 2 }, %struct.v4l2_fract { i32 1, i32 4 }, %struct.v4l2_fract { i32 1, i32 5 }, %struct.v4l2_fract { i32 1, i32 10 }, %struct.v4l2_fract { i32 2, i32 25 }, %struct.v4l2_fract { i32 1, i32 15 }, %struct.v4l2_fract { i32 1, i32 25 }, %struct.v4l2_fract { i32 1, i32 30 }, %struct.v4l2_fract { i32 1, i32 40 }, %struct.v4l2_fract { i32 1, i32 50 }, %struct.v4l2_fract { i32 1, i32 60 }], [32 x i8] zeroinitializer }, align 32
@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@vivid_try_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Fourcc format (0x%08x) unknown.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vivid_try_fmt_vid_cap\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/media/test-drivers/vivid/vivid-vid-cap.c\00", [47 x i8] zeroinitializer }, align 32
@vivid_try_fmt_vid_cap._entry_ptr = internal global ptr @vivid_try_fmt_vid_cap._entry, section ".printk_index", align 4
@vivid_min_rect = external dso_local local_unnamed_addr constant %struct.v4l2_rect, align 4
@vivid_max_rect = external dso_local local_unnamed_addr constant %struct.v4l2_rect, align 4
@vivid_s_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: %s device busy\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vivid_s_fmt_vid_cap\00", [44 x i8] zeroinitializer }, align 32
@vivid_s_fmt_vid_cap._entry_ptr = internal global ptr @vivid_s_fmt_vid_cap._entry, section ".printk_index", align 4
@vivid_s_fmt_vid_cap._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: overlay is active, can't change pixelformat\0A\00", [45 x i8] zeroinitializer }, align 32
@vivid_s_fmt_vid_cap._entry_ptr.7 = internal global ptr @vivid_s_fmt_vid_cap._entry.5, section ".printk_index", align 4
@formats_ovl = internal constant { [3 x %struct.vivid_fmt], [60 x i8] } { [3 x %struct.vivid_fmt] [%struct.vivid_fmt { i32 1346520914, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892424792, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892424769, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }], [60 x i8] zeroinitializer }, align 32
@vivid_vid_cap_overlay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017%s: mismatch between overlay and video capture pixelformats\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vivid_vid_cap_overlay\00", [42 x i8] zeroinitializer }, align 32
@vivid_vid_cap_overlay._entry_ptr = internal global ptr @vivid_vid_cap_overlay._entry, section ".printk_index", align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Webcam %u\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TV %u\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"S-Video %u\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HDMI %u\00", [24 x i8] zeroinitializer }, align 32
@vivid_audio_inputs = internal constant { [2 x %struct.v4l2_audio], [56 x i8] } { [2 x %struct.v4l2_audio] [%struct.v4l2_audio { i32 0, [32 x i8] c"TV\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, [2 x i32] zeroinitializer }, %struct.v4l2_audio { i32 1, [32 x i8] c"Line-In\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, [2 x i32] zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TV Tuner\00", [23 x i8] zeroinitializer }, align 32
@vivid_standard = dso_local constant { [16 x i64], [32 x i8] } { [16 x i64] [i64 4096, i64 8192, i64 32768, i64 16384, i64 15, i64 16, i64 224, i64 256, i64 512, i64 1024, i64 2048, i64 851968, i64 3276800, i64 4194304, i64 8388608, i64 0], [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NTSC-M\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NTSC-M-JP\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NTSC-M-KR\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NTSC-443\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PAL-BGH\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL-I\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-DK\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL-M\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL-N\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-Nc\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-60\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SECAM-BGH\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SECAM-DK\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SECAM-L\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SECAM-Lc\00", [23 x i8] zeroinitializer }, align 32
@vivid_ctrl_standard_strings = dso_local constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr null], [32 x i8] zeroinitializer }, align 32
@vivid_dv_timings_cap = external dso_local constant %struct.v4l2_dv_timings_cap, align 4
@v4l2_dv_timings_presets = external dso_local local_unnamed_addr constant [0 x %struct.v4l2_dv_timings], align 1
@vid_cap_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s: count=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vid_cap_queue_setup\00", [44 x i8] zeroinitializer }, align 32
@vid_cap_queue_setup._entry_ptr = internal global ptr @vid_cap_queue_setup._entry, section ".printk_index", align 4
@vid_cap_queue_setup._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: %s: size[%u]=%u\0A\00", [41 x i8] zeroinitializer }, align 32
@vid_cap_queue_setup._entry_ptr.34 = internal global ptr @vid_cap_queue_setup._entry.32, section ".printk_index", align 4
@vid_cap_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vid_cap_buf_prepare\00", [44 x i8] zeroinitializer }, align 32
@vid_cap_buf_prepare._entry_ptr = internal global ptr @vid_cap_buf_prepare._entry, section ".printk_index", align 4
@vid_cap_buf_prepare._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: %s data will not fit into plane %u (%lu < %lu)\0A\00", [42 x i8] zeroinitializer }, align 32
@vid_cap_buf_prepare._entry_ptr.39 = internal global ptr @vid_cap_buf_prepare._entry.37, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@vid_cap_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.41, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vid_cap_start_streaming\00", [40 x i8] zeroinitializer }, align 32
@vid_cap_start_streaming._entry_ptr = internal global ptr @vid_cap_start_streaming._entry, section ".printk_index", align 4
@vid_cap_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.42, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vid_cap_stop_streaming\00", [41 x i8] zeroinitializer }, align 32
@vid_cap_stop_streaming._entry_ptr = internal global ptr @vid_cap_stop_streaming._entry, section ".printk_index", align 4
@vid_cap_buf_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.43, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vid_cap_buf_queue\00", [46 x i8] zeroinitializer }, align 32
@vid_cap_buf_queue._entry_ptr = internal global ptr @vid_cap_buf_queue._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@switch.table.vivid_try_fmt_vid_cap = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2, i32 2, i32 1, i32 1, i32 1, i32 2], [40 x i8] zeroinitializer }, align 32
@switch.table.vivid_s_fmt_vid_cap = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2, i32 2, i32 1, i32 1, i32 1, i32 2], [40 x i8] zeroinitializer }, align 32
@switch.table.vivid_vid_cap_s_selection = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 1], [40 x i8] zeroinitializer }, align 32
@switch.table.vivid_vid_cap_s_selection.47 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2, i32 2, i32 1, i32 1, i32 1, i32 2], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [7 x i64] [i64 5, i64 32, i64 320, i64 640, i64 1280, i64 1920, i64 3840]
@__sancov_gen_cov_switch_values.51 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.62 = internal global [7 x i64] [i64 5, i64 32, i64 320, i64 640, i64 1280, i64 1920, i64 3840]
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"vivid_vid_cap_qops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 265, i32 22 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"webcam_sizes\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 54, i32 43 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"webcam_intervals\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 67, i32 32 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 567, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 682, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 687, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [12 x i8] c"formats_ovl\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 24, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1219, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1303, i32 42 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1308, i32 42 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1317, i32 42 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1325, i32 42 }
@___asan_gen_.123 = private unnamed_addr constant [19 x i8] c"vivid_audio_inputs\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1287, i32 32 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1566, i32 20 }
@___asan_gen_.129 = private unnamed_addr constant [15 x i8] c"vivid_standard\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1571, i32 19 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1592, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1593, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1594, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1595, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1596, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1597, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1598, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1599, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1600, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1601, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1602, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1603, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1604, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1605, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1606, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [28 x i8] c"vivid_ctrl_standard_strings\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1591, i32 20 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 132, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 134, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 146, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 166, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1163, i32 7 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 227, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 253, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.229 = private constant [52 x i8] c"../drivers/media/test-drivers/vivid/vivid-vid-cap.c\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 210, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 230, i32 6 }
@___asan_gen_.235 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 214, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 174, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [35 x i8] c"switch.table.vivid_try_fmt_vid_cap\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [33 x i8] c"switch.table.vivid_s_fmt_vid_cap\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [39 x i8] c"switch.table.vivid_vid_cap_s_selection\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [42 x i8] c"switch.table.vivid_vid_cap_s_selection.47\00", align 1
@llvm.compiler.used = appending global [74 x ptr] [ptr @vid_cap_buf_prepare._entry, ptr @vid_cap_buf_prepare._entry.37, ptr @vid_cap_buf_prepare._entry_ptr, ptr @vid_cap_buf_prepare._entry_ptr.39, ptr @vid_cap_buf_queue._entry, ptr @vid_cap_buf_queue._entry_ptr, ptr @vid_cap_queue_setup._entry, ptr @vid_cap_queue_setup._entry.32, ptr @vid_cap_queue_setup._entry_ptr, ptr @vid_cap_queue_setup._entry_ptr.34, ptr @vid_cap_start_streaming._entry, ptr @vid_cap_start_streaming._entry_ptr, ptr @vid_cap_stop_streaming._entry, ptr @vid_cap_stop_streaming._entry_ptr, ptr @vivid_s_fmt_vid_cap._entry, ptr @vivid_s_fmt_vid_cap._entry.5, ptr @vivid_s_fmt_vid_cap._entry_ptr, ptr @vivid_s_fmt_vid_cap._entry_ptr.7, ptr @vivid_try_fmt_vid_cap._entry, ptr @vivid_try_fmt_vid_cap._entry_ptr, ptr @vivid_vid_cap_overlay._entry, ptr @vivid_vid_cap_overlay._entry_ptr, ptr @vivid_vid_cap_qops, ptr @webcam_sizes, ptr @webcam_intervals, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @formats_ovl, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @vivid_audio_inputs, ptr @.str.14, ptr @vivid_standard, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @vivid_ctrl_standard_strings, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @switch.table.vivid_try_fmt_vid_cap, ptr @switch.table.vivid_s_fmt_vid_cap, ptr @switch.table.vivid_vid_cap_s_selection, ptr @switch.table.vivid_vid_cap_s_selection.47], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_vid_cap_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @webcam_sizes to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @webcam_intervals to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_try_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_s_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_s_fmt_vid_cap._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats_ovl to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_vid_cap_overlay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_audio_inputs to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_standard to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_standard_strings to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_cap_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_cap_queue_setup._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_cap_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_cap_buf_prepare._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_cap_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_cap_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_cap_buf_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vivid_try_fmt_vid_cap to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vivid_s_fmt_vid_cap to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vivid_vid_cap_s_selection to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vivid_vid_cap_s_selection.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vid_cap_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 33
  %2 = ptrtoint ptr %buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffers.i, align 4
  %height = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 238, i32 3
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %field_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 236
  %6 = ptrtoint ptr %field_cap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %field_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp = icmp eq i32 %7, 7
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then:                                          ; preds = %entry
  %fileio.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 29
  %8 = ptrtoint ptr %fileio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fileio.i, align 4
  %tobool.i.not = icmp eq ptr %9, null
  br i1 %tobool.i.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %queue_setup_error = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 153
  %10 = ptrtoint ptr %queue_setup_error to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %queue_setup_error, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %queue_setup_error to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %queue_setup_error, align 1
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %13 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %for.cond20.preheader, label %if.then9

for.cond20.preheader:                             ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp21146.not = icmp eq i32 %3, 0
  br i1 %cmp21146.not, label %for.cond20.preheader.if.end36_crit_edge, label %for.body22.lr.ph

for.cond20.preheader.if.end36_crit_edge:          ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

for.body22.lr.ph:                                 ; preds = %for.cond20.preheader
  %interleaved.i.i119 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 35
  %planes.i.i121 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 34
  %fmt_cap26 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 234
  br label %for.body22

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %3)
  %cmp10.not = icmp eq i32 %14, %3
  br i1 %cmp10.not, label %for.cond.preheader, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13143.not = icmp eq i32 %3, 0
  br i1 %cmp13143.not, label %for.cond.preheader.if.end36_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end36_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 1
  %interleaved.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 35
  %planes.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 34
  %fmt_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 234
  %15 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fmt_cap, align 4
  br label %for.body

for.cond:                                         ; preds = %tpg_g_line_width.exit
  %inc = add nuw i32 %p.0144, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.cond.if.end36_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.if.end36_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %p.0144 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %sizes, i32 %p.0144
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  br i1 %cmp.i.not, label %for.cond.preheader.i, label %if.then.i

for.cond.preheader.i:                             ; preds = %for.body
  %19 = ptrtoint ptr %interleaved.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %interleaved.i.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 43, i32 %p.0144
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  br label %tpg_g_line_width.exit

for.cond.i:                                       ; preds = %for.body.i, %for.cond.preheader.i
  %w.0.i = phi i32 [ %add.i, %for.body.i ], [ 0, %for.cond.preheader.i ]
  %p.0.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.cond.preheader.i ]
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %for.cond.i.tpg_g_planes.exit.i_crit_edge

for.cond.i.tpg_g_planes.exit.i_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tpg_g_planes.exit.i

cond.false.i.i:                                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %planes.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %planes.i.i, align 4
  br label %tpg_g_planes.exit.i

tpg_g_planes.exit.i:                              ; preds = %cond.false.i.i, %for.cond.i.tpg_g_planes.exit.i_crit_edge
  %cond.i.i = phi i32 [ %24, %cond.false.i.i ], [ 1, %for.cond.i.tpg_g_planes.exit.i_crit_edge ]
  %cmp2.i = icmp ult i32 %p.0.i, %cond.i.i
  br i1 %cmp2.i, label %for.body.i, label %tpg_g_planes.exit.i.tpg_g_line_width.exit_crit_edge

tpg_g_planes.exit.i.tpg_g_line_width.exit_crit_edge: ; preds = %tpg_g_planes.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tpg_g_line_width.exit

for.body.i:                                       ; preds = %tpg_g_planes.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i13.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 43, i32 %p.0.i
  %25 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i13.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 36, i32 %p.0.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %28 to i32
  %div.i = udiv i32 %26, %conv.i
  %add.i = add i32 %div.i, %w.0.i
  %inc.i = add nuw i32 %p.0.i, 1
  br label %for.cond.i

tpg_g_line_width.exit:                            ; preds = %tpg_g_planes.exit.i.tpg_g_line_width.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %22, %if.then.i ], [ %w.0.i, %tpg_g_planes.exit.i.tpg_g_line_width.exit_crit_edge ]
  %mul = mul i32 %retval.0.i, %5
  %arrayidx16 = getelementptr %struct.vivid_fmt, ptr %16, i32 0, i32 7, i32 %p.0144
  %29 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx16, align 4
  %add = add i32 %30, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add)
  %cmp17 = icmp ult i32 %18, %add
  br i1 %cmp17, label %tpg_g_line_width.exit.cleanup_crit_edge, label %for.cond

tpg_g_line_width.exit.cleanup_crit_edge:          ; preds = %tpg_g_line_width.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body22:                                       ; preds = %tpg_g_line_width.exit140.for.body22_crit_edge, %for.body22.lr.ph
  %p.1147 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc34, %tpg_g_line_width.exit140.for.body22_crit_edge ]
  %31 = ptrtoint ptr %buffers.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i118 = icmp ugt i32 %32, 1
  br i1 %cmp.i118, label %if.then.i124, label %for.cond.preheader.i122

for.cond.preheader.i122:                          ; preds = %for.body22
  %33 = ptrtoint ptr %interleaved.i.i119 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %interleaved.i.i119, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i120 = icmp eq i8 %34, 0
  br label %for.cond.i127

if.then.i124:                                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i123 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 43, i32 %p.1147
  %35 = ptrtoint ptr %arrayidx.i.i123 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i123, align 4
  br label %tpg_g_line_width.exit140

for.cond.i127:                                    ; preds = %for.body.i138, %for.cond.preheader.i122
  %w.0.i125 = phi i32 [ %add.i136, %for.body.i138 ], [ 0, %for.cond.preheader.i122 ]
  %p.0.i126 = phi i32 [ %inc.i137, %for.body.i138 ], [ 0, %for.cond.preheader.i122 ]
  br i1 %tobool.not.i.i120, label %cond.false.i.i128, label %for.cond.i127.tpg_g_planes.exit.i131_crit_edge

for.cond.i127.tpg_g_planes.exit.i131_crit_edge:   ; preds = %for.cond.i127
  call void @__sanitizer_cov_trace_pc() #16
  br label %tpg_g_planes.exit.i131

cond.false.i.i128:                                ; preds = %for.cond.i127
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %planes.i.i121 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %planes.i.i121, align 4
  br label %tpg_g_planes.exit.i131

tpg_g_planes.exit.i131:                           ; preds = %cond.false.i.i128, %for.cond.i127.tpg_g_planes.exit.i131_crit_edge
  %cond.i.i129 = phi i32 [ %38, %cond.false.i.i128 ], [ 1, %for.cond.i127.tpg_g_planes.exit.i131_crit_edge ]
  %cmp2.i130 = icmp ult i32 %p.0.i126, %cond.i.i129
  br i1 %cmp2.i130, label %for.body.i138, label %tpg_g_planes.exit.i131.tpg_g_line_width.exit140_crit_edge

tpg_g_planes.exit.i131.tpg_g_line_width.exit140_crit_edge: ; preds = %tpg_g_planes.exit.i131
  call void @__sanitizer_cov_trace_pc() #16
  br label %tpg_g_line_width.exit140

for.body.i138:                                    ; preds = %tpg_g_planes.exit.i131
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i13.i132 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 43, i32 %p.0.i126
  %39 = ptrtoint ptr %arrayidx.i13.i132 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i13.i132, align 4
  %arrayidx.i133 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 36, i32 %p.0.i126
  %41 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i133, align 1
  %conv.i134 = zext i8 %42 to i32
  %div.i135 = udiv i32 %40, %conv.i134
  %add.i136 = add i32 %div.i135, %w.0.i125
  %inc.i137 = add nuw i32 %p.0.i126, 1
  br label %for.cond.i127

tpg_g_line_width.exit140:                         ; preds = %tpg_g_planes.exit.i131.tpg_g_line_width.exit140_crit_edge, %if.then.i124
  %retval.0.i139 = phi i32 [ %36, %if.then.i124 ], [ %w.0.i125, %tpg_g_planes.exit.i131.tpg_g_line_width.exit140_crit_edge ]
  %mul25 = mul i32 %retval.0.i139, %5
  %43 = ptrtoint ptr %fmt_cap26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fmt_cap26, align 4
  %arrayidx27 = getelementptr %struct.vivid_fmt, ptr %44, i32 0, i32 3, i32 %p.1147
  %45 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx27, align 1
  %conv = zext i8 %46 to i32
  %div = udiv i32 %mul25, %conv
  %arrayidx30 = getelementptr %struct.vivid_fmt, ptr %44, i32 0, i32 7, i32 %p.1147
  %47 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx30, align 4
  %add31 = add i32 %48, %div
  %arrayidx32 = getelementptr i32, ptr %sizes, i32 %p.1147
  %49 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add31, ptr %arrayidx32, align 4
  %inc34 = add nuw i32 %p.1147, 1
  %exitcond154.not = icmp eq i32 %inc34, %3
  br i1 %exitcond154.not, label %tpg_g_line_width.exit140.if.end36_crit_edge, label %tpg_g_line_width.exit140.for.body22_crit_edge

tpg_g_line_width.exit140.for.body22_crit_edge:    ; preds = %tpg_g_line_width.exit140
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body22

tpg_g_line_width.exit140.if.end36_crit_edge:      ; preds = %tpg_g_line_width.exit140
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.end36:                                         ; preds = %tpg_g_line_width.exit140.if.end36_crit_edge, %for.cond.if.end36_crit_edge, %for.cond.preheader.if.end36_crit_edge, %for.cond20.preheader.if.end36_crit_edge
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %50 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_buffers, align 4
  %52 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nbuffers, align 4
  %add37 = add i32 %53, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add37)
  %cmp38 = icmp ult i32 %add37, 2
  br i1 %cmp38, label %if.then40, label %if.end36.if.end42_crit_edge

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i32 2, %51
  %54 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end36.if.end42_crit_edge
  %55 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %3, ptr %nplanes, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %56 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp43.not = icmp eq i32 %56, 0
  br i1 %cmp43.not, label %if.end42.do.end50_crit_edge, label %do.end

if.end42.do.end50_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end50

do.end:                                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %57 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nbuffers, align 4
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name, ptr noundef nonnull @.str.31, i32 noundef %58) #17
  br label %do.end50

do.end50:                                         ; preds = %do.end, %if.end42.do.end50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp52149.not = icmp eq i32 %3, 0
  br i1 %cmp52149.not, label %do.end50.cleanup_crit_edge, label %do.body55.lr.ph

do.end50.cleanup_crit_edge:                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body55.lr.ph:                                  ; preds = %do.end50
  %name64 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  br label %do.body55

do.body55:                                        ; preds = %for.inc71.do.body55_crit_edge, %do.body55.lr.ph
  %p.2150 = phi i32 [ 0, %do.body55.lr.ph ], [ %inc72, %for.inc71.do.body55_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %59 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp56.not = icmp eq i32 %59, 0
  br i1 %cmp56.not, label %do.body55.for.inc71_crit_edge, label %do.end61

do.body55.for.inc71_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc71

do.end61:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx66 = getelementptr i32, ptr %sizes, i32 %p.2150
  %60 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx66, align 4
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name64, ptr noundef nonnull @.str.31, i32 noundef %p.2150, i32 noundef %61) #17
  br label %for.inc71

for.inc71:                                        ; preds = %do.end61, %do.body55.for.inc71_crit_edge
  %inc72 = add nuw i32 %p.2150, 1
  %exitcond155.not = icmp eq i32 %inc72, %3
  br i1 %exitcond155.not, label %for.inc71.cleanup_crit_edge, label %for.inc71.do.body55_crit_edge

for.inc71.do.body55_crit_edge:                    ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body55

for.inc71.cleanup_crit_edge:                      ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc71.cleanup_crit_edge, %do.end50.cleanup_crit_edge, %tpg_g_line_width.exit.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.then5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then5 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.then9.cleanup_crit_edge ], [ 0, %do.end50.cleanup_crit_edge ], [ 0, %for.inc71.cleanup_crit_edge ], [ -22, %tpg_g_line_width.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vid_cap_buf_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 231, i32 33
  %4 = ptrtoint ptr %buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffers.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %6 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name, ptr noundef nonnull @.str.36) #17
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %fmt_cap = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 234
  %7 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fmt_cap, align 4
  %cmp6 = icmp eq ptr %8, null
  br i1 %cmp6, label %do.end17, label %if.end33, !prof !125

do.end17:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 148, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end33:                                         ; preds = %do.end5
  %buf_prepare_error = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 154
  %9 = ptrtoint ptr %buf_prepare_error to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf_prepare_error, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool34.not = icmp eq i8 %10, 0
  br i1 %tobool34.not, label %for.cond.preheader, label %if.then35

for.cond.preheader:                               ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp38124.not = icmp eq i32 %5, 0
  br i1 %cmp38124.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %interleaved.i.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 231, i32 35
  %planes.i.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 231, i32 34
  %height = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 238, i32 3
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  br label %for.body

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %buf_prepare_error to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buf_prepare_error, align 2
  br label %cleanup

for.body:                                         ; preds = %vb2_set_plane_payload.exit.for.body_crit_edge, %for.body.lr.ph
  %p.0125 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vb2_set_plane_payload.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %buffers.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp ugt i32 %13, 1
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.body
  %14 = ptrtoint ptr %interleaved.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %interleaved.i.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %3, i32 0, i32 231, i32 43, i32 %p.0125
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  br label %tpg_g_line_width.exit

for.cond.i:                                       ; preds = %for.body.i, %for.cond.preheader.i
  %w.0.i = phi i32 [ %add.i, %for.body.i ], [ 0, %for.cond.preheader.i ]
  %p.0.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.cond.preheader.i ]
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %for.cond.i.tpg_g_planes.exit.i_crit_edge

for.cond.i.tpg_g_planes.exit.i_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tpg_g_planes.exit.i

cond.false.i.i:                                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %planes.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %planes.i.i, align 4
  br label %tpg_g_planes.exit.i

tpg_g_planes.exit.i:                              ; preds = %cond.false.i.i, %for.cond.i.tpg_g_planes.exit.i_crit_edge
  %cond.i.i = phi i32 [ %19, %cond.false.i.i ], [ 1, %for.cond.i.tpg_g_planes.exit.i_crit_edge ]
  %cmp2.i = icmp ult i32 %p.0.i, %cond.i.i
  br i1 %cmp2.i, label %for.body.i, label %tpg_g_planes.exit.i.tpg_g_line_width.exit_crit_edge

tpg_g_planes.exit.i.tpg_g_line_width.exit_crit_edge: ; preds = %tpg_g_planes.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tpg_g_line_width.exit

for.body.i:                                       ; preds = %tpg_g_planes.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i13.i = getelementptr %struct.vivid_dev, ptr %3, i32 0, i32 231, i32 43, i32 %p.0.i
  %20 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i13.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %3, i32 0, i32 231, i32 36, i32 %p.0.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %23 to i32
  %div.i = udiv i32 %21, %conv.i
  %add.i = add i32 %div.i, %w.0.i
  %inc.i = add nuw i32 %p.0.i, 1
  br label %for.cond.i

tpg_g_line_width.exit:                            ; preds = %tpg_g_planes.exit.i.tpg_g_line_width.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %17, %if.then.i ], [ %w.0.i, %tpg_g_planes.exit.i.tpg_g_line_width.exit_crit_edge ]
  %24 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height, align 4
  %mul = mul i32 %25, %retval.0.i
  %26 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fmt_cap, align 4
  %arrayidx = getelementptr %struct.vivid_fmt, ptr %27, i32 0, i32 3, i32 %p.0125
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %29 to i32
  %div = udiv i32 %mul, %conv
  %arrayidx43 = getelementptr %struct.vivid_fmt, ptr %27, i32 0, i32 7, i32 %p.0125
  %30 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx43, align 4
  %add = add i32 %31, %div
  %32 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %p.0125)
  %cmp.i101 = icmp ugt i32 %33, %p.0125
  br i1 %cmp.i101, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %tpg_g_line_width.exit
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %p.0125, i32 4
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %add)
  %cmp45 = icmp ult i32 %35, %add
  br i1 %cmp45, label %do.body48, label %if.then.i113

vb2_plane_size.exit.thread:                       ; preds = %tpg_g_line_width.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp45115.not = icmp eq i32 %add, 0
  br i1 %cmp45115.not, label %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge, label %do.body48.thread

vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %vb2_set_plane_payload.exit

do.body48:                                        ; preds = %vb2_plane_size.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %36 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp49.not = icmp eq i32 %36, 0
  br i1 %cmp49.not, label %do.body48.cleanup_crit_edge, label %if.then.i107

do.body48.cleanup_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body48.thread:                                 ; preds = %vb2_plane_size.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %37 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp49.not116 = icmp eq i32 %37, 0
  br i1 %cmp49.not116, label %do.body48.thread.cleanup_crit_edge, label %do.body48.thread.vb2_plane_size.exit109_crit_edge

do.body48.thread.vb2_plane_size.exit109_crit_edge: ; preds = %do.body48.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %vb2_plane_size.exit109

do.body48.thread.cleanup_crit_edge:               ; preds = %do.body48.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i107:                                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit109

vb2_plane_size.exit109:                           ; preds = %if.then.i107, %do.body48.thread.vb2_plane_size.exit109_crit_edge
  %retval.0.i108 = phi i32 [ %39, %if.then.i107 ], [ 0, %do.body48.thread.vb2_plane_size.exit109_crit_edge ]
  %name57118 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name57118, ptr noundef nonnull @.str.36, i32 noundef %p.0125, i32 noundef %retval.0.i108, i32 noundef %add) #17
  br label %cleanup

if.then.i113:                                     ; preds = %vb2_plane_size.exit
  %40 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %add)
  %cmp1.i = icmp ult i32 %41, %add
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i113.if.end42.i_crit_edge

if.then.i113.if.end42.i_crit_edge:                ; preds = %if.then.i113
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i113
  %.b55.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !126

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1163, i32 noundef 9, ptr noundef null) #14
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %42 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i113.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %43, %if.then38.i ], [ %add, %if.then.i113.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %p.0125, i32 3
  %44 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge
  %45 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fmt_cap, align 4
  %arrayidx67 = getelementptr %struct.vivid_fmt, ptr %46, i32 0, i32 7, i32 %p.0125
  %47 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx67, align 4
  %data_offset69 = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %p.0125, i32 7
  %49 = ptrtoint ptr %data_offset69 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %data_offset69, align 4
  %inc = add nuw i32 %p.0125, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %vb2_set_plane_payload.exit.cleanup_crit_edge, label %vb2_set_plane_payload.exit.for.body_crit_edge

vb2_set_plane_payload.exit.for.body_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

vb2_set_plane_payload.exit.cleanup_crit_edge:     ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit.cleanup_crit_edge, %vb2_plane_size.exit109, %do.body48.thread.cleanup_crit_edge, %do.body48.cleanup_crit_edge, %if.then35, %for.cond.preheader.cleanup_crit_edge, %do.end17
  %retval.0 = phi i32 [ -22, %do.end17 ], [ -22, %if.then35 ], [ -22, %vb2_plane_size.exit109 ], [ -22, %do.body48.cleanup_crit_edge ], [ -22, %do.body48.thread.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %vb2_set_plane_payload.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vid_cap_buf_finish(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %input.i.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 173
  %4 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %3, i32 0, i32 53, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  %8 = add i8 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %9 = icmp ult i8 %8, 2
  br i1 %9, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 4
  %10 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sequence, align 8
  %timecode = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 3
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %or = or i32 %13, 256
  store i32 %or, ptr %flags, align 8
  %14 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %input.i.i, align 4
  %arrayidx = getelementptr %struct.vivid_dev, ptr %3, i32 0, i32 174, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx, align 8
  %and = and i64 %17, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool.not, i32 2, i32 3
  %spec.select35 = select i1 %tobool.not, i32 25, i32 30
  %18 = ptrtoint ptr %timecode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select, ptr %timecode, align 4
  %flags4 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %flags4, align 4
  %.frozen = freeze i32 %11
  %spec.select35.frozen = freeze i32 %spec.select35
  %div = udiv i32 %.frozen, %spec.select35.frozen
  %20 = mul i32 %div, %spec.select35.frozen
  %rem.decomposed = sub i32 %.frozen, %20
  %conv = trunc i32 %rem.decomposed to i8
  %frames = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %frames to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %frames, align 4
  %rem5 = urem i32 %div, 60
  %conv6 = trunc i32 %rem5 to i8
  %seconds = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %seconds to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv6, ptr %seconds, align 1
  %mul = mul nuw nsw i32 %spec.select35, 60
  %div7 = udiv i32 %11, %mul
  %rem8 = urem i32 %div7, 60
  %conv9 = trunc i32 %rem8 to i8
  %minutes = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 3, i32 4
  %23 = ptrtoint ptr %minutes to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv9, ptr %minutes, align 2
  %mul10 = mul nuw nsw i32 %spec.select35, 3600
  %div11 = udiv i32 %11, %mul10
  %rem12.lhs.trunc = trunc i32 %div11 to i16
  %rem1236 = urem i16 %rem12.lhs.trunc, 24
  %conv13 = trunc i16 %rem1236 to i8
  %hours = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 3, i32 5
  %24 = ptrtoint ptr %hours to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv13, ptr %hours, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vid_cap_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %streaming.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 286, i32 28
  %2 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call zeroext i1 @vivid_vid_can_loop(ptr noundef %1) #14
  %can_loop_video = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 77
  %frombool = zext i1 %call2 to i8
  %3 = ptrtoint ptr %can_loop_video to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %can_loop_video, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vid_cap_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 259
  %4 = ptrtoint ptr %vid_cap_seq_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %vid_cap_seq_count, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %5 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end.do.end8_crit_edge, label %do.end

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name, ptr noundef nonnull @.str.41) #17
  br label %do.end8

do.end8:                                          ; preds = %do.end, %if.end.do.end8_crit_edge
  %perc_fill.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 47
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end8
  %i.063 = phi i32 [ 0, %do.end8 ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %perc_fill.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %perc_fill.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %7)
  %cmp11 = icmp ult i32 %7, 100
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 233, i32 %i.063
  %frombool12 = zext i1 %cmp11 to i8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool12, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  %start_streaming_error = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 155
  %9 = ptrtoint ptr %start_streaming_error to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %start_streaming_error, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end16, label %if.end16.thread

if.end16.thread:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %start_streaming_error to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %start_streaming_error, align 1
  br label %if.then18

if.end16:                                         ; preds = %for.end
  %vid_cap_streaming = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 260
  %call15 = tail call i32 @vivid_start_generating_vid_cap(ptr noundef %1, ptr noundef %vid_cap_streaming) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool17.not = icmp eq i32 %call15, 0
  br i1 %tobool17.not, label %if.end16.if.end38_crit_edge, label %if.end16.if.then18_crit_edge

if.end16.if.then18_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

if.end16.if.end38_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then18:                                        ; preds = %if.end16.if.then18_crit_edge, %if.end16.thread
  %err.061 = phi i32 [ -22, %if.end16.thread ], [ %call15, %if.end16.if.then18_crit_edge ]
  %vid_cap_active = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 243
  %12 = ptrtoint ptr %vid_cap_active to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vid_cap_active, align 4
  %cmp28.not64 = icmp eq ptr %13, %vid_cap_active
  br i1 %cmp28.not64, label %if.then18.if.end38_crit_edge, label %if.then18.for.body29_crit_edge

if.then18.for.body29_crit_edge:                   ; preds = %if.then18
  br label %for.body29

if.then18.if.end38_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

for.body29:                                       ; preds = %list_del.exit.for.body29_crit_edge, %if.then18.for.body29_crit_edge
  %.pn.in65 = phi ptr [ %.pn, %list_del.exit.for.body29_crit_edge ], [ %13, %if.then18.for.body29_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in65, i32 -736
  %14 = ptrtoint ptr %.pn.in65 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn.in65, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in65) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body29.list_del.exit_crit_edge

for.body29.list_del.exit_crit_edge:               ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in65, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %.pn.in65 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn.in65, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body29.list_del.exit_crit_edge
  %21 = ptrtoint ptr %.pn.in65 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in65, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in65, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 3) #14
  %cmp28.not = icmp eq ptr %.pn, %vid_cap_active
  br i1 %cmp28.not, label %list_del.exit.if.end38_crit_edge, label %list_del.exit.for.body29_crit_edge

list_del.exit.for.body29_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body29

list_del.exit.if.end38_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.end38:                                         ; preds = %list_del.exit.if.end38_crit_edge, %if.then18.if.end38_crit_edge, %if.end16.if.end38_crit_edge
  %err.062 = phi i32 [ 0, %if.end16.if.end38_crit_edge ], [ %err.061, %if.then18.if.end38_crit_edge ], [ %err.061, %list_del.exit.if.end38_crit_edge ]
  ret i32 %err.062
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vid_cap_stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %2 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name, ptr noundef nonnull @.str.42) #17
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %vid_cap_streaming = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 260
  tail call void @vivid_stop_generating_vid_cap(ptr noundef %1, ptr noundef %vid_cap_streaming) #14
  %can_loop_video = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 77
  %3 = ptrtoint ptr %can_loop_video to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %can_loop_video, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vid_cap_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %4 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name, ptr noundef nonnull @.str.43) #17
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %slock = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %slock) #14
  %list = getelementptr inbounds %struct.vivid_buffer, ptr %vb, i32 0, i32 1
  %vid_cap_active = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 243
  %prev.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 243, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %6, ptr noundef %vid_cap_active) #14
  br i1 %call.i.i, label %if.end.i.i, label %do.end8.list_add_tail.exit_crit_edge

do.end8.list_add_tail.exit_crit_edge:             ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vid_cap_active, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.vivid_buffer, ptr %vb, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end8.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %slock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vid_cap_buf_request_complete(ptr nocapture noundef readonly %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %req = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %ctrl_hdl_vid_cap = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 19
  tail call void @v4l2_ctrl_request_complete(ptr noundef %5, ptr noundef %ctrl_hdl_vid_cap) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @vivid_update_quality(ptr noundef %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %loop_video = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 139
  %0 = ptrtoint ptr %loop_video to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %loop_video, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %input.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 173
  %2 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 53, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %6 = and i8 %5, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %switch149 = icmp eq i8 %6, 2
  br i1 %switch149, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %qual1.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 10
  %7 = ptrtoint ptr %qual1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qual1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i86 = icmp eq i32 %8, 2
  br i1 %cmp.i86, label %land.lhs.true.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %qual_offset2.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 11
  %9 = ptrtoint ptr %qual_offset2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qual_offset2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp3.i = icmp eq i32 %10, 0
  br i1 %cmp3.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %11 = ptrtoint ptr %qual1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %qual1.i, align 4
  br label %cleanup.sink.split

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %input.i87 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 173
  %12 = ptrtoint ptr %input.i87 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %input.i87, align 4
  %arrayidx.i88 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 53, i32 %13
  %14 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i88, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp.i89 = icmp eq i8 %15, 3
  br i1 %cmp.i89, label %land.lhs.true3, label %if.end16

land.lhs.true3:                                   ; preds = %if.end
  %arrayidx = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 166, i32 %13
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %.off = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then14, label %land.lhs.true3.if.then36_crit_edge

land.lhs.true3.if.then36_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then36

if.then14:                                        ; preds = %land.lhs.true3
  %qual1.i90 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 10
  %18 = ptrtoint ptr %qual1.i90 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qual1.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.i91 = icmp eq i32 %19, 2
  br i1 %cmp.i91, label %land.lhs.true.i94, label %if.then14.if.end.i97_crit_edge

if.then14.if.end.i97_crit_edge:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i97

land.lhs.true.i94:                                ; preds = %if.then14
  %qual_offset2.i92 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 11
  %20 = ptrtoint ptr %qual_offset2.i92 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qual_offset2.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp3.i93 = icmp eq i32 %21, 0
  br i1 %cmp3.i93, label %land.lhs.true.i94.cleanup_crit_edge, label %land.lhs.true.i94.if.end.i97_crit_edge

land.lhs.true.i94.if.end.i97_crit_edge:           ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i97

land.lhs.true.i94.cleanup_crit_edge:              ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i97:                                       ; preds = %land.lhs.true.i94.if.end.i97_crit_edge, %if.then14.if.end.i97_crit_edge
  %22 = ptrtoint ptr %qual1.i90 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %qual1.i90, align 4
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end
  %23 = add i8 %15, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %24 = icmp ult i8 %23, 2
  br i1 %24, label %land.lhs.true18, label %if.end16.if.then36_crit_edge

if.end16.if.then36_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then36

land.lhs.true18:                                  ; preds = %if.end16
  %arrayidx20 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 162, i32 %13
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx20, align 4
  %.off81 = add i32 %26, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off81)
  %switch82 = icmp ult i32 %.off81, 3
  br i1 %switch82, label %if.then32, label %if.end34

if.then32:                                        ; preds = %land.lhs.true18
  %qual1.i99 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 10
  %27 = ptrtoint ptr %qual1.i99 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qual1.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i100 = icmp eq i32 %28, 2
  br i1 %cmp.i100, label %land.lhs.true.i103, label %if.then32.if.end.i106_crit_edge

if.then32.if.end.i106_crit_edge:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i106

land.lhs.true.i103:                               ; preds = %if.then32
  %qual_offset2.i101 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 11
  %29 = ptrtoint ptr %qual_offset2.i101 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qual_offset2.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp3.i102 = icmp eq i32 %30, 0
  br i1 %cmp3.i102, label %land.lhs.true.i103.cleanup_crit_edge, label %land.lhs.true.i103.if.end.i106_crit_edge

land.lhs.true.i103.if.end.i106_crit_edge:         ; preds = %land.lhs.true.i103
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i106

land.lhs.true.i103.cleanup_crit_edge:             ; preds = %land.lhs.true.i103
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i106:                                      ; preds = %land.lhs.true.i103.if.end.i106_crit_edge, %if.then32.if.end.i106_crit_edge
  %31 = ptrtoint ptr %qual1.i99 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %qual1.i99, align 4
  br label %cleanup.sink.split

if.end34:                                         ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp.i110 = icmp eq i8 %15, 1
  br i1 %cmp.i110, label %if.end38, label %if.end34.if.then36_crit_edge

if.end34.if.then36_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then36

if.then36:                                        ; preds = %if.end34.if.then36_crit_edge, %if.end16.if.then36_crit_edge, %land.lhs.true3.if.then36_crit_edge
  %qual1.i111 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 10
  %32 = ptrtoint ptr %qual1.i111 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qual1.i111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i112 = icmp eq i32 %33, 0
  br i1 %cmp.i112, label %land.lhs.true.i115, label %if.then36.if.end.i118_crit_edge

if.then36.if.end.i118_crit_edge:                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i118

land.lhs.true.i115:                               ; preds = %if.then36
  %qual_offset2.i113 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 11
  %34 = ptrtoint ptr %qual_offset2.i113 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qual_offset2.i113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp3.i114 = icmp eq i32 %35, 0
  br i1 %cmp3.i114, label %land.lhs.true.i115.cleanup_crit_edge, label %land.lhs.true.i115.if.end.i118_crit_edge

land.lhs.true.i115.if.end.i118_crit_edge:         ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i118

land.lhs.true.i115.cleanup_crit_edge:             ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i118:                                      ; preds = %land.lhs.true.i115.if.end.i118_crit_edge, %if.then36.if.end.i118_crit_edge
  %36 = ptrtoint ptr %qual1.i111 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %qual1.i111, align 4
  br label %cleanup.sink.split

if.end38:                                         ; preds = %if.end34
  %tv_freq = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 184
  %37 = ptrtoint ptr %tv_freq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tv_freq, align 8
  %sub = add i32 %38, -676
  %rem = urem i32 %sub, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %rem)
  %cmp39 = icmp ugt i32 %rem, 32
  br i1 %cmp39, label %if.then40, label %if.end44

if.then40:                                        ; preds = %if.end38
  %xor = xor i32 %38, 21
  %mul.i = mul i32 %xor, 13
  %add.i = add i32 %mul.i, 31
  %and = and i32 %add.i, 63
  %qual1.i120 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 10
  %39 = ptrtoint ptr %qual1.i120 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qual1.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp.i121 = icmp eq i32 %40, 2
  br i1 %cmp.i121, label %land.lhs.true.i124, label %if.then40.if.end.i127_crit_edge

if.then40.if.end.i127_crit_edge:                  ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i127

land.lhs.true.i124:                               ; preds = %if.then40
  %qual_offset2.i122 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 11
  %41 = ptrtoint ptr %qual_offset2.i122 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qual_offset2.i122, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %and)
  %cmp3.i123 = icmp eq i32 %42, %and
  br i1 %cmp3.i123, label %land.lhs.true.i124.cleanup_crit_edge, label %land.lhs.true.i124.if.end.i127_crit_edge

land.lhs.true.i124.if.end.i127_crit_edge:         ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i127

land.lhs.true.i124.cleanup_crit_edge:             ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i127:                                      ; preds = %land.lhs.true.i124.if.end.i127_crit_edge, %if.then40.if.end.i127_crit_edge
  %43 = ptrtoint ptr %qual1.i120 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %qual1.i120, align 4
  br label %cleanup.sink.split

if.end44:                                         ; preds = %if.end38
  %44 = add nsw i32 %rem, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %44)
  %45 = icmp ult i32 %44, -9
  %qual1.i129 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 10
  %46 = ptrtoint ptr %qual1.i129 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qual1.i129, align 4
  br i1 %45, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp.i130 = icmp eq i32 %47, 1
  br i1 %cmp.i130, label %land.lhs.true.i133, label %if.then48.if.end.i136_crit_edge

if.then48.if.end.i136_crit_edge:                  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i136

land.lhs.true.i133:                               ; preds = %if.then48
  %qual_offset2.i131 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 11
  %48 = ptrtoint ptr %qual_offset2.i131 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qual_offset2.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp3.i132 = icmp eq i32 %49, 0
  br i1 %cmp3.i132, label %land.lhs.true.i133.cleanup_crit_edge, label %land.lhs.true.i133.if.end.i136_crit_edge

land.lhs.true.i133.if.end.i136_crit_edge:         ; preds = %land.lhs.true.i133
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i136

land.lhs.true.i133.cleanup_crit_edge:             ; preds = %land.lhs.true.i133
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i136:                                      ; preds = %land.lhs.true.i133.if.end.i136_crit_edge, %if.then48.if.end.i136_crit_edge
  %50 = ptrtoint ptr %qual1.i129 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %qual1.i129, align 4
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i139 = icmp eq i32 %47, 0
  br i1 %cmp.i139, label %land.lhs.true.i142, label %if.else.if.end.i145_crit_edge

if.else.if.end.i145_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i145

land.lhs.true.i142:                               ; preds = %if.else
  %qual_offset2.i140 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 11
  %51 = ptrtoint ptr %qual_offset2.i140 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %qual_offset2.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp3.i141 = icmp eq i32 %52, 0
  br i1 %cmp3.i141, label %land.lhs.true.i142.cleanup_crit_edge, label %land.lhs.true.i142.if.end.i145_crit_edge

land.lhs.true.i142.if.end.i145_crit_edge:         ; preds = %land.lhs.true.i142
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i145

land.lhs.true.i142.cleanup_crit_edge:             ; preds = %land.lhs.true.i142
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i145:                                      ; preds = %land.lhs.true.i142.if.end.i145_crit_edge, %if.else.if.end.i145_crit_edge
  %53 = ptrtoint ptr %qual1.i129 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %qual1.i129, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i145, %if.end.i136, %if.end.i127, %if.end.i118, %if.end.i106, %if.end.i97, %if.end.i
  %.sink = phi i32 [ 0, %if.end.i145 ], [ 0, %if.end.i136 ], [ %and, %if.end.i127 ], [ 0, %if.end.i118 ], [ 0, %if.end.i106 ], [ 0, %if.end.i97 ], [ 0, %if.end.i ]
  %qual_offset5.i143 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 11
  %54 = ptrtoint ptr %qual_offset5.i143 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink, ptr %qual_offset5.i143, align 4
  %recalc_colors.i144 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 59
  %55 = ptrtoint ptr %recalc_colors.i144 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %recalc_colors.i144, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.i142.cleanup_crit_edge, %land.lhs.true.i133.cleanup_crit_edge, %land.lhs.true.i124.cleanup_crit_edge, %land.lhs.true.i115.cleanup_crit_edge, %land.lhs.true.i103.cleanup_crit_edge, %land.lhs.true.i94.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vivid_get_video_aspect(ptr nocapture noundef readonly %dev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %input.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 173
  %0 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 53, i32 %1
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i, align 1
  %4 = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %5 = icmp ult i8 %4, 2
  br i1 %5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 165, i32 %1
  br label %return.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp.i = icmp eq i8 %3, 3
  br i1 %cmp.i, label %if.then2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx4 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 172, i32 %1
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then2, %if.then
  %arrayidx4.sink = phi ptr [ %arrayidx4, %if.then2 ], [ %arrayidx, %if.then ]
  %6 = ptrtoint ptr %arrayidx4.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.sink, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.return_crit_edge ], [ %7, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_update_format_cap(ptr noundef %dev, i1 noundef zeroext %keep_controls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 173
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input, align 4
  %2 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 175, i32 %1, i32 1
  %arrayidx2 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 53, i32 %1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %sw.default [
    i8 3, label %sw.bb27
    i8 1, label %entry.sw.bb10_crit_edge
    i8 2, label %entry.sw.bb10_crit_edge270
  ]

entry.sw.bb10_crit_edge270:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb10

sw.default:                                       ; preds = %entry
  %webcam_size_idx = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 182
  %6 = ptrtoint ptr %webcam_size_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %webcam_size_idx, align 8
  %arrayidx3 = getelementptr [6 x %struct.v4l2_frmsize_discrete], ptr @webcam_sizes, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  %width4 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 237, i32 2
  %10 = ptrtoint ptr %width4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %width4, align 4
  %height = getelementptr [6 x %struct.v4l2_frmsize_discrete], ptr @webcam_sizes, i32 0, i32 %7, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %height8 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 237, i32 3
  %13 = ptrtoint ptr %height8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height8, align 4
  %timeperframe_vid_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 235
  %webcam_ival_idx = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 183
  %14 = ptrtoint ptr %webcam_ival_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %webcam_ival_idx, align 4
  %arrayidx9 = getelementptr [12 x %struct.v4l2_fract], ptr @webcam_intervals, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %arrayidx9, align 4
  %18 = ptrtoint ptr %timeperframe_vid_cap to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %timeperframe_vid_cap, align 8
  %field_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 236
  %19 = ptrtoint ptr %field_cap to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %field_cap, align 8
  %rgb_range1.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 31
  %20 = ptrtoint ptr %rgb_range1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rgb_range1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %sw.default.sw.epilog_crit_edge, label %if.end.i

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %rgb_range1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %rgb_range1.i, align 4
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge270
  %tv_field_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 186
  %23 = ptrtoint ptr %tv_field_cap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tv_field_cap, align 8
  %field_cap11 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 236
  %25 = ptrtoint ptr %field_cap11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %field_cap11, align 8
  %width13 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 237, i32 2
  %26 = ptrtoint ptr %width13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 720, ptr %width13, align 4
  %arrayidx15 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 174, i32 %1
  %27 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx15, align 8
  %and = and i64 %28, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %sw.bb10.if.end_crit_edge

sw.bb10.if.end_crit_edge:                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.else:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.bb10.if.end_crit_edge
  %.sink261 = phi i32 [ 576, %if.else ], [ 480, %sw.bb10.if.end_crit_edge ]
  %.sink260 = phi i32 [ 1000, %if.else ], [ 1001, %sw.bb10.if.end_crit_edge ]
  %.sink259 = phi i32 [ 25000, %if.else ], [ 30000, %sw.bb10.if.end_crit_edge ]
  %.sink = phi i32 [ 16385, %if.else ], [ 4096, %sw.bb10.if.end_crit_edge ]
  %29 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 237, i32 3
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink261, ptr %29, align 4
  %31 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 235
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink260, ptr %31, align 8
  %33 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 235, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink259, ptr %33, align 4
  %35 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 177
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink, ptr %35, align 8
  %rgb_range1.i216 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 31
  %37 = ptrtoint ptr %rgb_range1.i216 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rgb_range1.i216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i217 = icmp eq i32 %38, 0
  br i1 %cmp.i217, label %if.end.sw.epilog_crit_edge, label %if.end.i219

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i219:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %rgb_range1.i216 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %rgb_range1.i216, align 4
  br label %sw.epilog.sink.split

sw.bb27:                                          ; preds = %entry
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %2, align 1
  %width30 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 237, i32 2
  %42 = ptrtoint ptr %width30 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %width30, align 4
  %height31 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %2, i32 0, i32 1
  %43 = ptrtoint ptr %height31 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %height31, align 1
  %height33 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 237, i32 3
  %45 = ptrtoint ptr %height33 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %height33, align 4
  %46 = load i32, ptr %2, align 1
  %hfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, ptr %2, i32 0, i32 5
  %47 = ptrtoint ptr %hfrontporch to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %hfrontporch, align 1
  %hsync = getelementptr inbounds %struct.v4l2_bt_timings, ptr %2, i32 0, i32 6
  %49 = ptrtoint ptr %hsync to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %hsync, align 1
  %hbackporch = getelementptr inbounds %struct.v4l2_bt_timings, ptr %2, i32 0, i32 7
  %51 = ptrtoint ptr %hbackporch to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %hbackporch, align 1
  %add = add i32 %48, %46
  %add35 = add i32 %add, %50
  %add36 = add i32 %add35, %52
  %53 = load i32, ptr %height31, align 1
  %vfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, ptr %2, i32 0, i32 8
  %54 = ptrtoint ptr %vfrontporch to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %vfrontporch, align 1
  %vsync = getelementptr inbounds %struct.v4l2_bt_timings, ptr %2, i32 0, i32 9
  %56 = ptrtoint ptr %vsync to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %vsync, align 1
  %vbackporch = getelementptr inbounds %struct.v4l2_bt_timings, ptr %2, i32 0, i32 10
  %58 = ptrtoint ptr %vbackporch to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %vbackporch, align 1
  %il_vfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, ptr %2, i32 0, i32 11
  %60 = ptrtoint ptr %il_vfrontporch to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %il_vfrontporch, align 1
  %il_vsync = getelementptr inbounds %struct.v4l2_bt_timings, ptr %2, i32 0, i32 12
  %62 = ptrtoint ptr %il_vsync to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %il_vsync, align 1
  %il_vbackporch = getelementptr inbounds %struct.v4l2_bt_timings, ptr %2, i32 0, i32 13
  %64 = ptrtoint ptr %il_vbackporch to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %il_vbackporch, align 1
  %add38 = add i32 %55, %53
  %add39 = add i32 %add38, %57
  %add40 = add i32 %add39, %59
  %add41 = add i32 %add40, %61
  %add42 = add i32 %add41, %63
  %add43 = add i32 %add42, %65
  %mul = mul i32 %add43, %add36
  %reduced_fps = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 140
  %66 = ptrtoint ptr %reduced_fps to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %reduced_fps, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool44.not = icmp eq i8 %67, 0
  br i1 %tobool44.not, label %sw.bb27.if.else51_crit_edge, label %land.lhs.true

sw.bb27.if.else51_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else51

land.lhs.true:                                    ; preds = %sw.bb27
  %standards.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %2, i32 0, i32 14
  %68 = ptrtoint ptr %standards.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %standards.i, align 1
  %and.i = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %57)
  %cmp.i221 = icmp eq i32 %57, 8
  %or.cond = select i1 %tobool.not.i, i1 %cmp.i221, i1 false
  br i1 %or.cond, label %land.lhs.true.if.then47_crit_edge, label %if.end.i222

land.lhs.true.if.then47_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

if.end.i222:                                      ; preds = %land.lhs.true
  %and2.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i222.if.else51_crit_edge, label %land.lhs.true4.i

if.end.i222.if.else51_crit_edge:                  ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else51

land.lhs.true4.i:                                 ; preds = %if.end.i222
  %flags.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %2, i32 0, i32 15
  %70 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %flags.i, align 1
  %and5.i = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.if.else51_crit_edge, label %land.lhs.true4.i.if.then47_crit_edge

land.lhs.true4.i.if.then47_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

land.lhs.true4.i.if.else51_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else51

if.then47:                                        ; preds = %land.lhs.true4.i.if.then47_crit_edge, %land.lhs.true.if.then47_crit_edge
  %pixelclock48 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %2, i32 0, i32 4
  %72 = ptrtoint ptr %pixelclock48 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 8)
  %73 = load i64, ptr %pixelclock48, align 1
  %mul49 = mul i64 %73, 1000
  %74 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9011446405638332408, i64 %mul49, i32 0) #18, !srcloc !127
  %asmresult.i.i.i = extractvalue { i64, i32 } %74, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %74, 1
  %75 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9011446405638332408, i64 %mul49, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #18, !srcloc !128
  %asmresult10.i.i.i = extractvalue { i64, i32 } %75, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 9
  %flags = getelementptr inbounds %struct.v4l2_bt_timings, ptr %2, i32 0, i32 15
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %flags, align 1
  %or = or i32 %77, 4
  store i32 %or, ptr %flags, align 1
  %extract.t269 = trunc i64 %div1581.i.i to i32
  br label %if.end55

if.else51:                                        ; preds = %land.lhs.true4.i.if.else51_crit_edge, %if.end.i222.if.else51_crit_edge, %sw.bb27.if.else51_crit_edge
  %pixelclock52 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %2, i32 0, i32 4
  %78 = ptrtoint ptr %pixelclock52 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 8)
  %79 = load i64, ptr %pixelclock52, align 1
  %flags53 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %2, i32 0, i32 15
  %80 = ptrtoint ptr %flags53 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %flags53, align 1
  %and54 = and i32 %81, -5
  store i32 %and54, ptr %flags53, align 1
  %extract.t268 = trunc i64 %79 to i32
  br label %if.end55

if.end55:                                         ; preds = %if.else51, %if.then47
  %.sink267.off0 = phi i32 [ %extract.t268, %if.else51 ], [ %extract.t269, %if.then47 ]
  %timeperframe_vid_cap56 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 235
  %div = udiv i32 %mul, 100
  %div61 = udiv i32 %.sink267.off0, 100
  %82 = ptrtoint ptr %timeperframe_vid_cap56 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %div, ptr %timeperframe_vid_cap56, align 8
  %.compoundliteral57.sroa.2.0.timeperframe_vid_cap56.sroa_idx = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 235, i32 1
  %83 = ptrtoint ptr %.compoundliteral57.sroa.2.0.timeperframe_vid_cap56.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %div61, ptr %.compoundliteral57.sroa.2.0.timeperframe_vid_cap56.sroa_idx, align 4
  %interlaced = getelementptr inbounds %struct.v4l2_bt_timings, ptr %2, i32 0, i32 2
  %84 = ptrtoint ptr %interlaced to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %interlaced, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool62.not = icmp eq i32 %85, 0
  %.sink262 = select i1 %tobool62.not, i32 1, i32 7
  %86 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 236
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %.sink262, ptr %86, align 8
  br i1 %keep_controls, label %if.end55.sw.epilog_crit_edge, label %lor.lhs.false

if.end55.sw.epilog_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %if.end55
  %colorspace = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 96
  %88 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %colorspace, align 4
  %tobool70.not = icmp eq ptr %89, null
  br i1 %tobool70.not, label %lor.lhs.false.sw.epilog_crit_edge, label %if.end72

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end72:                                         ; preds = %lor.lhs.false
  %flags73 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %2, i32 0, i32 15
  %90 = ptrtoint ptr %flags73 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %flags73, align 1
  %and74 = and i32 %91, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.else91, label %if.then76

if.then76:                                        ; preds = %if.end72
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %93)
  %cmp = icmp eq i32 %93, 720
  br i1 %cmp, label %land.lhs.true79, label %if.then76.if.else86_crit_edge

if.then76.if.else86_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else86

land.lhs.true79:                                  ; preds = %if.then76
  %94 = ptrtoint ptr %height31 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %height31, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 577, i32 %95)
  %cmp81 = icmp ult i32 %95, 577
  br i1 %cmp81, label %if.then83, label %land.lhs.true79.if.else86_crit_edge

land.lhs.true79.if.else86_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else86

if.then83:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @v4l2_ctrl_s_ctrl(ptr noundef nonnull %89, i32 noundef 0)
  br label %if.end89

if.else86:                                        ; preds = %land.lhs.true79.if.else86_crit_edge, %if.then76.if.else86_crit_edge
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %89, i32 0, i32 2
  %96 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %99, i32 noundef 0) #14
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %89, i32 noundef 1) #14
  %100 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %103) #14
  br label %if.end89

if.end89:                                         ; preds = %if.else86, %if.then83
  %real_rgb_range_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 98
  %104 = ptrtoint ptr %real_rgb_range_cap to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %real_rgb_range_cap, align 4
  %handler.i.i223 = getelementptr inbounds %struct.v4l2_ctrl, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %handler.i.i223 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %handler.i.i223, align 8
  %lock.i.i224 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %lock.i.i224 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %lock.i.i224, align 4
  tail call void @mutex_lock_nested(ptr noundef %109, i32 noundef 0) #14
  %call.i225 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %105, i32 noundef 1) #14
  br label %if.end96

if.else91:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  %handler.i.i227 = getelementptr inbounds %struct.v4l2_ctrl, ptr %89, i32 0, i32 2
  %110 = ptrtoint ptr %handler.i.i227 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %handler.i.i227, align 8
  %lock.i.i228 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %lock.i.i228 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %lock.i.i228, align 4
  tail call void @mutex_lock_nested(ptr noundef %113, i32 noundef 0) #14
  %call.i229 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %89, i32 noundef 2) #14
  %114 = ptrtoint ptr %handler.i.i227 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %handler.i.i227, align 8
  %lock.i2.i230 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %lock.i2.i230 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %lock.i2.i230, align 4
  tail call void @mutex_unlock(ptr noundef %117) #14
  %real_rgb_range_cap94 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 98
  %118 = ptrtoint ptr %real_rgb_range_cap94 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %real_rgb_range_cap94, align 4
  %handler.i.i231 = getelementptr inbounds %struct.v4l2_ctrl, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %handler.i.i231 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %handler.i.i231, align 8
  %lock.i.i232 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %lock.i.i232 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %lock.i.i232, align 4
  tail call void @mutex_lock_nested(ptr noundef %123, i32 noundef 0) #14
  %call.i233 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %119, i32 noundef 0) #14
  br label %if.end96

if.end96:                                         ; preds = %if.else91, %if.end89
  %handler.i.i231.sink = phi ptr [ %handler.i.i231, %if.else91 ], [ %handler.i.i223, %if.end89 ]
  %124 = ptrtoint ptr %handler.i.i231.sink to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %handler.i.i231.sink, align 8
  %lock.i2.i234 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %lock.i2.i234 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %lock.i2.i234, align 4
  tail call void @mutex_unlock(ptr noundef %127) #14
  %rgb_range_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 97
  %128 = ptrtoint ptr %rgb_range_cap to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rgb_range_cap, align 8
  %call98 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %129) #14
  %rgb_range1.i235 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 31
  %130 = ptrtoint ptr %rgb_range1.i235 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rgb_range1.i235, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %call98)
  %cmp.i236 = icmp eq i32 %131, %call98
  br i1 %cmp.i236, label %if.end96.sw.epilog_crit_edge, label %if.end.i238

if.end96.sw.epilog_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i238:                                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  %132 = ptrtoint ptr %rgb_range1.i235 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %call98, ptr %rgb_range1.i235, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end.i238, %if.end.i219, %if.end.i
  %recalc_colors.i237 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 59
  %133 = ptrtoint ptr %recalc_colors.i237 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %recalc_colors.i237, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end96.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %if.end55.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge
  %bitmap_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 195
  %134 = ptrtoint ptr %bitmap_cap to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bitmap_cap, align 4
  tail call void @vfree(ptr noundef %135) #14
  %136 = ptrtoint ptr %bitmap_cap to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %bitmap_cap, align 4
  tail call void @vivid_update_quality(ptr noundef %dev)
  %tpg100 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231
  %src_rect101 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 237
  %width102 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 237, i32 2
  %137 = ptrtoint ptr %width102 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %width102, align 4
  %height104 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 237, i32 3
  %139 = ptrtoint ptr %height104 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %height104, align 4
  %field_cap105 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 236
  %141 = ptrtoint ptr %field_cap105 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %field_cap105, align 8
  tail call void @tpg_reset_source(ptr noundef %tpg100, i32 noundef %138, i32 noundef %140, i32 noundef %142) #14
  %crop_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 239
  %143 = call ptr @memcpy(ptr %crop_cap, ptr %src_rect101, i32 16)
  %crop_bounds_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 241
  %144 = call ptr @memcpy(ptr %crop_bounds_cap, ptr %src_rect101, i32 16)
  %compose_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 240
  %145 = call ptr @memcpy(ptr %compose_cap, ptr %src_rect101, i32 16)
  %146 = ptrtoint ptr %field_cap105 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %field_cap105, align 8
  %148 = zext i32 %147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %147, label %sw.epilog.if.end124_crit_edge [
    i32 3, label %sw.epilog.if.then120_crit_edge
    i32 2, label %sw.epilog.if.then120_crit_edge271
    i32 7, label %sw.epilog.if.then120_crit_edge272
  ]

sw.epilog.if.then120_crit_edge272:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then120

sw.epilog.if.then120_crit_edge271:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then120

sw.epilog.if.then120_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then120

sw.epilog.if.end124_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

if.then120:                                       ; preds = %sw.epilog.if.then120_crit_edge, %sw.epilog.if.then120_crit_edge271, %sw.epilog.if.then120_crit_edge272
  %height122 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 240, i32 3
  %149 = ptrtoint ptr %height122 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %height122, align 4
  %div123214 = lshr i32 %150, 1
  store i32 %div123214, ptr %height122, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then120, %sw.epilog.if.end124_crit_edge
  %fmt_cap_rect = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 238
  %151 = call ptr @memcpy(ptr %fmt_cap_rect, ptr %compose_cap, i32 16)
  %152 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %input, align 4
  %arrayidx.i.i.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 53, i32 %153
  %154 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx.i.i.i, align 1
  %156 = add i8 %155, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %156)
  %157 = icmp ult i8 %156, 2
  br i1 %157, label %if.then.i, label %if.end.i240

if.then.i:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 165, i32 %153
  br label %return.sink.split.i

if.end.i240:                                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %155)
  %cmp.i.i = icmp eq i8 %155, 3
  br i1 %cmp.i.i, label %if.then2.i, label %if.end.i240.vivid_get_video_aspect.exit_crit_edge

if.end.i240.vivid_get_video_aspect.exit_crit_edge: ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #16
  br label %vivid_get_video_aspect.exit

if.then2.i:                                       ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx4.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 172, i32 %153
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.then2.i, %if.then.i
  %arrayidx4.sink.i = phi ptr [ %arrayidx4.i, %if.then2.i ], [ %arrayidx.i, %if.then.i ]
  %158 = ptrtoint ptr %arrayidx4.sink.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx4.sink.i, align 4
  br label %vivid_get_video_aspect.exit

vivid_get_video_aspect.exit:                      ; preds = %return.sink.split.i, %if.end.i240.vivid_get_video_aspect.exit_crit_edge
  %retval.0.i241 = phi i32 [ 0, %if.end.i240.vivid_get_video_aspect.exit_crit_edge ], [ %159, %return.sink.split.i ]
  %vid_aspect1.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 29
  %160 = ptrtoint ptr %vid_aspect1.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %vid_aspect1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %retval.0.i241)
  %cmp.i242 = icmp eq i32 %161, %retval.0.i241
  br i1 %cmp.i242, label %vivid_get_video_aspect.exit.tpg_s_video_aspect.exit_crit_edge, label %if.end.i243

vivid_get_video_aspect.exit.tpg_s_video_aspect.exit_crit_edge: ; preds = %vivid_get_video_aspect.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %tpg_s_video_aspect.exit

if.end.i243:                                      ; preds = %vivid_get_video_aspect.exit
  call void @__sanitizer_cov_trace_pc() #16
  %162 = ptrtoint ptr %vid_aspect1.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %retval.0.i241, ptr %vid_aspect1.i, align 4
  %recalc_square_border.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 61
  %163 = ptrtoint ptr %recalc_square_border.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %recalc_square_border.i, align 2
  br label %tpg_s_video_aspect.exit

tpg_s_video_aspect.exit:                          ; preds = %if.end.i243, %vivid_get_video_aspect.exit.tpg_s_video_aspect.exit_crit_edge
  %164 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx.i.i.i, align 1
  %166 = add i8 %165, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %166)
  %167 = icmp ult i8 %166, 2
  br i1 %167, label %if.then.i249, label %if.end.i251

if.then.i249:                                     ; preds = %tpg_s_video_aspect.exit
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i246 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 174, i32 %153
  %168 = ptrtoint ptr %arrayidx.i246 to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %arrayidx.i246, align 8
  %and.i247 = and i64 %169, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i247)
  %tobool.not.i248 = icmp eq i64 %and.i247, 0
  %cond.i = select i1 %tobool.not.i248, i32 2, i32 1
  br label %vivid_get_pixel_aspect.exit

if.end.i251:                                      ; preds = %tpg_s_video_aspect.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %165)
  %cmp.i.i250 = icmp eq i8 %165, 3
  br i1 %cmp.i.i250, label %land.lhs.true.i253, label %if.end.i251.vivid_get_pixel_aspect.exit_crit_edge

if.end.i251.vivid_get_pixel_aspect.exit_crit_edge: ; preds = %if.end.i251
  call void @__sanitizer_cov_trace_pc() #16
  br label %vivid_get_pixel_aspect.exit

land.lhs.true.i253:                               ; preds = %if.end.i251
  %170 = ptrtoint ptr %width102 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %width102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %171)
  %cmp.i252 = icmp eq i32 %171, 720
  br i1 %cmp.i252, label %land.lhs.true2.i, label %land.lhs.true.i253.vivid_get_pixel_aspect.exit_crit_edge

land.lhs.true.i253.vivid_get_pixel_aspect.exit_crit_edge: ; preds = %land.lhs.true.i253
  call void @__sanitizer_cov_trace_pc() #16
  br label %vivid_get_pixel_aspect.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i253
  %172 = ptrtoint ptr %height104 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %height104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 577, i32 %173)
  %cmp4.i = icmp ult i32 %173, 577
  br i1 %cmp4.i, label %if.then5.i, label %land.lhs.true2.i.vivid_get_pixel_aspect.exit_crit_edge

land.lhs.true2.i.vivid_get_pixel_aspect.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vivid_get_pixel_aspect.exit

if.then5.i:                                       ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %173)
  %cmp8.i = icmp eq i32 %173, 480
  %cond9.i = select i1 %cmp8.i, i32 1, i32 2
  br label %vivid_get_pixel_aspect.exit

vivid_get_pixel_aspect.exit:                      ; preds = %if.then5.i, %land.lhs.true2.i.vivid_get_pixel_aspect.exit_crit_edge, %land.lhs.true.i253.vivid_get_pixel_aspect.exit_crit_edge, %if.end.i251.vivid_get_pixel_aspect.exit_crit_edge, %if.then.i249
  %retval.0.i254 = phi i32 [ %cond.i, %if.then.i249 ], [ %cond9.i, %if.then5.i ], [ 0, %land.lhs.true2.i.vivid_get_pixel_aspect.exit_crit_edge ], [ 0, %land.lhs.true.i253.vivid_get_pixel_aspect.exit_crit_edge ], [ 0, %if.end.i251.vivid_get_pixel_aspect.exit_crit_edge ]
  %pix_aspect1.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 30
  %174 = ptrtoint ptr %pix_aspect1.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %pix_aspect1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %retval.0.i254)
  %cmp.i255 = icmp eq i32 %175, %retval.0.i254
  br i1 %cmp.i255, label %vivid_get_pixel_aspect.exit.tpg_s_pixel_aspect.exit_crit_edge, label %if.end.i257

vivid_get_pixel_aspect.exit.tpg_s_pixel_aspect.exit_crit_edge: ; preds = %vivid_get_pixel_aspect.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %tpg_s_pixel_aspect.exit

if.end.i257:                                      ; preds = %vivid_get_pixel_aspect.exit
  call void @__sanitizer_cov_trace_pc() #16
  %176 = ptrtoint ptr %pix_aspect1.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %retval.0.i254, ptr %pix_aspect1.i, align 4
  %recalc_square_border.i256 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 61
  %177 = ptrtoint ptr %recalc_square_border.i256 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 1, ptr %recalc_square_border.i256, align 2
  br label %tpg_s_pixel_aspect.exit

tpg_s_pixel_aspect.exit:                          ; preds = %if.end.i257, %vivid_get_pixel_aspect.exit.tpg_s_pixel_aspect.exit_crit_edge
  tail call void @tpg_update_mv_step(ptr noundef %tpg100) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @v4l2_ctrl_s_ctrl(ptr noundef %ctrl, i32 noundef %val) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %lock.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #14
  %call = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %ctrl, i32 noundef %val) #14
  %4 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handler.i, align 8
  %lock.i2 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %lock.i2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock.i2, align 4
  tail call void @mutex_unlock(ptr noundef %7) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_reset_source(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_update_mv_step(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_g_fmt_vid_cap(ptr noundef %file, ptr nocapture readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %width = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 238, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %3, ptr %fmt, align 1
  %height = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 238, i32 3
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %height3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height3 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %height3, align 1
  %field_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 236
  %8 = ptrtoint ptr %field_cap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %field_cap, align 8
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %field, align 1
  %fmt_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 234
  %11 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fmt_cap, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %pixelformat, align 1
  %loop_video.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 139
  %16 = ptrtoint ptr %loop_video.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %loop_video.i, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %input.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %18 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %input.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %19
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %switch.i = icmp ult i8 %21, 2
  br i1 %switch.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %colorspace.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 20
  br label %vivid_colorspace_cap.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  %colorspace_out.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 202
  br label %vivid_colorspace_cap.exit

vivid_colorspace_cap.exit:                        ; preds = %if.end.i, %if.then.i
  %retval.0.in.i = phi ptr [ %colorspace.i.i, %if.then.i ], [ %colorspace_out.i, %if.end.i ]
  %22 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %23 = ptrtoint ptr %colorspace to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %retval.0.i, ptr %colorspace, align 1
  %24 = ptrtoint ptr %loop_video.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %loop_video.i, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i65 = icmp eq i8 %25, 0
  br i1 %tobool.not.i65, label %vivid_colorspace_cap.exit.if.then.i70_crit_edge, label %lor.lhs.false.i69

vivid_colorspace_cap.exit.if.then.i70_crit_edge:  ; preds = %vivid_colorspace_cap.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i70

lor.lhs.false.i69:                                ; preds = %vivid_colorspace_cap.exit
  %input.i.i66 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %26 = ptrtoint ptr %input.i.i66 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %input.i.i66, align 4
  %arrayidx.i.i67 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i67 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i67, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %switch.i68 = icmp ult i8 %29, 2
  br i1 %switch.i68, label %lor.lhs.false.i69.if.then.i70_crit_edge, label %if.end.i71

lor.lhs.false.i69.if.then.i70_crit_edge:          ; preds = %lor.lhs.false.i69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i70

if.then.i70:                                      ; preds = %lor.lhs.false.i69.if.then.i70_crit_edge, %vivid_colorspace_cap.exit.if.then.i70_crit_edge
  %xfer_func.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 21
  br label %vivid_xfer_func_cap.exit

if.end.i71:                                       ; preds = %lor.lhs.false.i69
  call void @__sanitizer_cov_trace_pc() #16
  %xfer_func_out.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 206
  br label %vivid_xfer_func_cap.exit

vivid_xfer_func_cap.exit:                         ; preds = %if.end.i71, %if.then.i70
  %retval.0.in.i72 = phi ptr [ %xfer_func.i.i, %if.then.i70 ], [ %xfer_func_out.i, %if.end.i71 ]
  %30 = ptrtoint ptr %retval.0.in.i72 to i32
  call void @__asan_load4_noabort(i32 %30)
  %retval.0.i73 = load i32, ptr %retval.0.in.i72, align 4
  %conv = trunc i32 %retval.0.i73 to i8
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %31 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv, ptr %xfer_func, align 1
  %32 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fmt_cap, align 4
  %color_enc = getelementptr inbounds %struct.vivid_fmt, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %color_enc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %color_enc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp = icmp eq i32 %35, 2
  %36 = ptrtoint ptr %loop_video.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %loop_video.i, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i75 = icmp eq i8 %37, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %vivid_xfer_func_cap.exit
  br i1 %tobool.not.i75, label %if.then.if.then.i80_crit_edge, label %lor.lhs.false.i79

if.then.if.then.i80_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i80

lor.lhs.false.i79:                                ; preds = %if.then
  %input.i.i76 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %38 = ptrtoint ptr %input.i.i76 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %input.i.i76, align 4
  %arrayidx.i.i77 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %39
  %40 = ptrtoint ptr %arrayidx.i.i77 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i77, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %switch.i78 = icmp ult i8 %41, 2
  br i1 %switch.i78, label %lor.lhs.false.i79.if.then.i80_crit_edge, label %if.end.i81

lor.lhs.false.i79.if.then.i80_crit_edge:          ; preds = %lor.lhs.false.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i80

if.then.i80:                                      ; preds = %lor.lhs.false.i79.if.then.i80_crit_edge, %if.then.if.then.i80_crit_edge
  %hsv_enc.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 23
  br label %if.end

if.end.i81:                                       ; preds = %lor.lhs.false.i79
  call void @__sanitizer_cov_trace_pc() #16
  %hsv_enc_out.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 204
  br label %if.end

if.else:                                          ; preds = %vivid_xfer_func_cap.exit
  br i1 %tobool.not.i75, label %if.else.if.then.i90_crit_edge, label %lor.lhs.false.i89

if.else.if.then.i90_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i90

lor.lhs.false.i89:                                ; preds = %if.else
  %input.i.i86 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %42 = ptrtoint ptr %input.i.i86 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %input.i.i86, align 4
  %arrayidx.i.i87 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %43
  %44 = ptrtoint ptr %arrayidx.i.i87 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i.i87, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %switch.i88 = icmp ult i8 %45, 2
  br i1 %switch.i88, label %lor.lhs.false.i89.if.then.i90_crit_edge, label %if.end.i91

lor.lhs.false.i89.if.then.i90_crit_edge:          ; preds = %lor.lhs.false.i89
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i90

if.then.i90:                                      ; preds = %lor.lhs.false.i89.if.then.i90_crit_edge, %if.else.if.then.i90_crit_edge
  %ycbcr_enc.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 22
  br label %if.end

if.end.i91:                                       ; preds = %lor.lhs.false.i89
  call void @__sanitizer_cov_trace_pc() #16
  %ycbcr_enc_out.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 203
  br label %if.end

if.end:                                           ; preds = %if.end.i91, %if.then.i90, %if.end.i81, %if.then.i80
  %retval.0.in.i92.sink = phi ptr [ %hsv_enc.i.i, %if.then.i80 ], [ %hsv_enc_out.i, %if.end.i81 ], [ %ycbcr_enc.i.i, %if.then.i90 ], [ %ycbcr_enc_out.i, %if.end.i91 ]
  %46 = ptrtoint ptr %retval.0.in.i92.sink to i32
  call void @__asan_load4_noabort(i32 %46)
  %retval.0.i93 = load i32, ptr %retval.0.in.i92.sink, align 4
  %conv11 = trunc i32 %retval.0.i93 to i8
  %47 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv11, ptr %47, align 1
  %49 = ptrtoint ptr %loop_video.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %loop_video.i, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i95 = icmp eq i8 %50, 0
  br i1 %tobool.not.i95, label %if.end.if.then.i100_crit_edge, label %lor.lhs.false.i99

if.end.if.then.i100_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i100

lor.lhs.false.i99:                                ; preds = %if.end
  %input.i.i96 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %51 = ptrtoint ptr %input.i.i96 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %input.i.i96, align 4
  %arrayidx.i.i97 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %52
  %53 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.i97, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %54)
  %switch.i98 = icmp ult i8 %54, 2
  br i1 %switch.i98, label %lor.lhs.false.i99.if.then.i100_crit_edge, label %if.end.i101

lor.lhs.false.i99.if.then.i100_crit_edge:         ; preds = %lor.lhs.false.i99
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i100

if.then.i100:                                     ; preds = %lor.lhs.false.i99.if.then.i100_crit_edge, %if.end.if.then.i100_crit_edge
  %quantization.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 27
  br label %vivid_quantization_cap.exit

if.end.i101:                                      ; preds = %lor.lhs.false.i99
  call void @__sanitizer_cov_trace_pc() #16
  %quantization_out.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 205
  br label %vivid_quantization_cap.exit

vivid_quantization_cap.exit:                      ; preds = %if.end.i101, %if.then.i100
  %retval.0.in.i102 = phi ptr [ %quantization.i.i, %if.then.i100 ], [ %quantization_out.i, %if.end.i101 ]
  %55 = ptrtoint ptr %retval.0.in.i102 to i32
  call void @__asan_load4_noabort(i32 %55)
  %retval.0.i103 = load i32, ptr %retval.0.in.i102, align 4
  %conv13 = trunc i32 %retval.0.i103 to i8
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %56 = ptrtoint ptr %quantization to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv13, ptr %quantization, align 1
  %57 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fmt_cap, align 4
  %buffers = getelementptr inbounds %struct.vivid_fmt, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %buffers to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %buffers, align 1
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %61 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp17109.not = icmp eq i8 %60, 0
  br i1 %cmp17109.not, label %vivid_quantization_cap.exit.for.end_crit_edge, label %for.body.lr.ph

vivid_quantization_cap.exit.for.end_crit_edge:    ; preds = %vivid_quantization_cap.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %vivid_quantization_cap.exit
  %buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 33
  %interleaved.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 35
  %planes.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 34
  br label %for.body

for.body:                                         ; preds = %tpg_g_line_width.exit.for.body_crit_edge, %for.body.lr.ph
  %p.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %tpg_g_line_width.exit.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 43, i32 %p.0110
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i, align 4
  %arrayidx = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %p.0110
  %bytesperline = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %p.0110, i32 1
  %64 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %63, ptr %bytesperline, align 1
  %65 = ptrtoint ptr %buffers.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp.i = icmp ugt i32 %66, 1
  br i1 %cmp.i, label %if.then.i105, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.body
  %67 = ptrtoint ptr %interleaved.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %interleaved.i.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i.i = icmp eq i8 %68, 0
  br label %for.cond.i

if.then.i105:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i, align 4
  br label %tpg_g_line_width.exit

for.cond.i:                                       ; preds = %for.body.i, %for.cond.preheader.i
  %w.0.i = phi i32 [ %add.i, %for.body.i ], [ 0, %for.cond.preheader.i ]
  %p.0.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.cond.preheader.i ]
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %for.cond.i.tpg_g_planes.exit.i_crit_edge

for.cond.i.tpg_g_planes.exit.i_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tpg_g_planes.exit.i

cond.false.i.i:                                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %planes.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %planes.i.i, align 4
  br label %tpg_g_planes.exit.i

tpg_g_planes.exit.i:                              ; preds = %cond.false.i.i, %for.cond.i.tpg_g_planes.exit.i_crit_edge
  %cond.i.i = phi i32 [ %72, %cond.false.i.i ], [ 1, %for.cond.i.tpg_g_planes.exit.i_crit_edge ]
  %cmp2.i = icmp ult i32 %p.0.i, %cond.i.i
  br i1 %cmp2.i, label %for.body.i, label %tpg_g_planes.exit.i.tpg_g_line_width.exit_crit_edge

tpg_g_planes.exit.i.tpg_g_line_width.exit_crit_edge: ; preds = %tpg_g_planes.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tpg_g_line_width.exit

for.body.i:                                       ; preds = %tpg_g_planes.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i13.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 43, i32 %p.0.i
  %73 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i13.i, align 4
  %arrayidx.i106 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 36, i32 %p.0.i
  %75 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i106, align 1
  %conv.i = zext i8 %76 to i32
  %div.i = udiv i32 %74, %conv.i
  %add.i = add i32 %div.i, %w.0.i
  %inc.i = add nuw i32 %p.0.i, 1
  br label %for.cond.i

tpg_g_line_width.exit:                            ; preds = %tpg_g_planes.exit.i.tpg_g_line_width.exit_crit_edge, %if.then.i105
  %retval.0.i107 = phi i32 [ %70, %if.then.i105 ], [ %w.0.i, %tpg_g_planes.exit.i.tpg_g_line_width.exit_crit_edge ]
  %77 = ptrtoint ptr %height3 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %height3, align 1
  %mul = mul i32 %78, %retval.0.i107
  %79 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fmt_cap, align 4
  %arrayidx24 = getelementptr %struct.vivid_fmt, ptr %80, i32 0, i32 3, i32 %p.0110
  %81 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %82 to i32
  %div = udiv i32 %mul, %conv25
  %arrayidx27 = getelementptr %struct.vivid_fmt, ptr %80, i32 0, i32 7, i32 %p.0110
  %83 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx27, align 4
  %add = add i32 %84, %div
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %add, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %p.0110, 1
  %86 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %num_planes, align 1
  %conv16 = zext i8 %87 to i32
  %cmp17 = icmp ult i32 %inc, %conv16
  br i1 %cmp17, label %tpg_g_line_width.exit.for.body_crit_edge, label %tpg_g_line_width.exit.for.end_crit_edge

tpg_g_line_width.exit.for.end_crit_edge:          ; preds = %tpg_g_line_width.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

tpg_g_line_width.exit.for.body_crit_edge:         ; preds = %tpg_g_line_width.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %tpg_g_line_width.exit.for.end_crit_edge, %vivid_quantization_cap.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_try_fmt_vid_cap(ptr noundef %file, ptr nocapture readnone %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %flags = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 1
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %pixelformat, align 1
  %call3 = tail call ptr @vivid_get_format(ptr noundef %1, i32 noundef %6) #14
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.body, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %7 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %do.body.do.end12_crit_edge, label %do.end

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %pixelformat, align 1
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %9) #17
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body.do.end12_crit_edge
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 1448695129, ptr %pixelformat, align 1
  %call15 = tail call ptr @vivid_get_format(ptr noundef %1, i32 noundef 1448695129) #14
  br label %if.end16

if.end16:                                         ; preds = %do.end12, %entry.if.end16_crit_edge
  %fmt1.0 = phi ptr [ %call3, %entry.if.end16_crit_edge ], [ %call15, %do.end12 ]
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %input.i.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %11 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %input.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i.i, align 1
  %15 = add i8 %14, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %16 = icmp ult i8 %15, 2
  br i1 %16, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %field, align 1
  %switch.tableidx = add i32 %18, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %19 = icmp ult i32 %switch.tableidx, 8
  %spec.select = select i1 %19, i32 %18, i32 4
  br label %vivid_field_cap.exit

if.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp.i.i = icmp eq i8 %14, 3
  br i1 %cmp.i.i, label %if.then3.i, label %if.end.i.vivid_field_cap.exit_crit_edge

if.end.i.vivid_field_cap.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vivid_field_cap.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %interlaced.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 175, i32 %12, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %interlaced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 7
  br label %vivid_field_cap.exit

vivid_field_cap.exit:                             ; preds = %if.then3.i, %if.end.i.vivid_field_cap.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %cond.i, %if.then3.i ], [ 1, %if.end.i.vivid_field_cap.exit_crit_edge ], [ %spec.select, %if.then.i ]
  %22 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %retval.0.i, ptr %field, align 1
  %23 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %input.i.i.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp.i = icmp eq i8 %26, 0
  br i1 %cmp.i, label %if.then20, label %if.else

if.then20:                                        ; preds = %vivid_field_cap.exit
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %fmt, align 1
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %height, align 1
  %call25 = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @webcam_sizes, i32 noundef 6, i32 noundef 8, i32 noundef 0, i32 noundef 4, i32 noundef %28, i32 noundef %30) #14
  %31 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call25, align 4
  %height27 = getelementptr inbounds %struct.v4l2_frmsize_discrete, ptr %call25, i32 0, i32 1
  %33 = ptrtoint ptr %height27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height27, align 4
  br label %if.end37

if.else:                                          ; preds = %vivid_field_cap.exit
  %35 = add i8 %26, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %36 = icmp ult i8 %35, 2
  br i1 %36, label %if.then29, label %if.else32

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 174, i32 %24
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx, align 8
  %and30 = and i64 %38, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and30)
  %tobool31.not = icmp eq i64 %and30, 0
  %cond = select i1 %tobool31.not, i32 576, i32 480
  br label %if.end37

if.else32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %width33 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 237, i32 2
  %39 = ptrtoint ptr %width33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %width33, align 4
  %height35 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 237, i32 3
  %41 = ptrtoint ptr %height35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height35, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else32, %if.then29, %if.then20
  %w.0 = phi i32 [ %32, %if.then20 ], [ 720, %if.then29 ], [ %40, %if.else32 ]
  %h.0 = phi i32 [ %34, %if.then20 ], [ %cond, %if.then29 ], [ %42, %if.else32 ]
  %43 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %field, align 1
  %switch.tableidx515 = add i32 %44, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx515)
  %45 = icmp ult i32 %switch.tableidx515, 6
  br i1 %45, label %switch.lookup514, label %if.end37.if.end49_crit_edge

if.end37.if.end49_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

switch.lookup514:                                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.vivid_try_fmt_vid_cap, i32 0, i32 %switch.tableidx515
  %46 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end49

if.end49:                                         ; preds = %switch.lookup514, %if.end37.if.end49_crit_edge
  %factor.0 = phi i32 [ 1, %if.end37.if.end49_crit_edge ], [ %switch.load, %switch.lookup514 ]
  %47 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %input.i.i.i, align 4
  %arrayidx.i363 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %48
  %49 = ptrtoint ptr %arrayidx.i363 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i363, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp.i364 = icmp eq i8 %50, 0
  br i1 %cmp.i364, label %if.end49.if.then57_crit_edge, label %lor.lhs.false52

if.end49.if.then57_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then57

lor.lhs.false52:                                  ; preds = %if.end49
  %has_scaler_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 325
  %51 = ptrtoint ptr %has_scaler_cap to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %has_scaler_cap, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool53.not = icmp eq i8 %52, 0
  br i1 %tobool53.not, label %land.lhs.true, label %lor.lhs.false52.if.else60_crit_edge

lor.lhs.false52.if.else60_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else60

land.lhs.true:                                    ; preds = %lor.lhs.false52
  %has_crop_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 323
  %53 = ptrtoint ptr %has_crop_cap to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %has_crop_cap, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool54.not = icmp eq i8 %54, 0
  br i1 %tobool54.not, label %land.lhs.true55, label %land.lhs.true.if.else60_crit_edge

land.lhs.true.if.else60_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else60

land.lhs.true55:                                  ; preds = %land.lhs.true
  %has_compose_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 324
  %55 = ptrtoint ptr %has_compose_cap to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %has_compose_cap, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool56.not = icmp eq i8 %56, 0
  br i1 %tobool56.not, label %land.lhs.true55.if.then57_crit_edge, label %land.lhs.true55.if.else60_crit_edge

land.lhs.true55.if.else60_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else60

land.lhs.true55.if.then57_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then57

if.then57:                                        ; preds = %land.lhs.true55.if.then57_crit_edge, %if.end49.if.then57_crit_edge
  %57 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %w.0, ptr %fmt, align 1
  %div = udiv i32 %h.0, %factor.0
  %height59 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %height59 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %div, ptr %height59, align 1
  br label %if.end106

if.else60:                                        ; preds = %land.lhs.true55.if.else60_crit_edge, %land.lhs.true.if.else60_crit_edge, %lor.lhs.false52.if.else60_crit_edge
  %59 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %fmt, align 1
  %height64 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %61 = ptrtoint ptr %height64 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %height64, align 1
  %mul = mul i32 %62, %factor.0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 2) to i32))
  %63 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 2), align 4
  %64 = tail call i32 @llvm.umax.i32(i32 %60, i32 %63)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 3) to i32))
  %65 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 3), align 4
  %66 = tail call i32 @llvm.umax.i32(i32 %mul, i32 %65)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_max_rect, i32 0, i32 2) to i32))
  %67 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_max_rect, i32 0, i32 2), align 4
  %68 = tail call i32 @llvm.umin.i32(i32 %64, i32 %67)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_max_rect, i32 0, i32 3) to i32))
  %69 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_max_rect, i32 0, i32 3), align 4
  %70 = tail call i32 @llvm.umin.i32(i32 %66, i32 %69)
  br i1 %tobool53.not, label %land.lhs.true81, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %if.else60
  %has_compose_cap69 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 324
  %71 = ptrtoint ptr %has_compose_cap69 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %has_compose_cap69, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool70.not = icmp eq i8 %72, 0
  br i1 %tobool70.not, label %if.then71, label %land.lhs.true68.if.end100_crit_edge

land.lhs.true68.if.end100_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100

if.then71:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #16
  %mul75 = shl i32 %w.0, 2
  %mul77 = shl i32 %h.0, 2
  %73 = tail call i32 @llvm.umin.i32(i32 %68, i32 %mul75)
  %74 = tail call i32 @llvm.umin.i32(i32 %70, i32 %mul77)
  br label %if.end100

land.lhs.true81:                                  ; preds = %if.else60
  %has_crop_cap82 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 323
  %75 = ptrtoint ptr %has_crop_cap82 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %has_crop_cap82, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool83.not = icmp eq i8 %76, 0
  br i1 %tobool83.not, label %land.lhs.true81.if.then96_crit_edge, label %land.lhs.true85

land.lhs.true81.if.then96_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then96

land.lhs.true85:                                  ; preds = %land.lhs.true81
  %has_compose_cap86 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 324
  %77 = ptrtoint ptr %has_compose_cap86 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %has_compose_cap86, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool87.not = icmp eq i8 %78, 0
  br i1 %tobool87.not, label %if.then88, label %land.lhs.true93

if.then88:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #16
  %width1.i384 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 237, i32 2
  %79 = ptrtoint ptr %width1.i384 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %width1.i384, align 4
  %81 = tail call i32 @llvm.umin.i32(i32 %68, i32 %80)
  %height4.i388 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 237, i32 3
  %82 = ptrtoint ptr %height4.i388 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %height4.i388, align 4
  %84 = tail call i32 @llvm.umin.i32(i32 %70, i32 %83)
  br label %if.end100

land.lhs.true93:                                  ; preds = %land.lhs.true85
  %85 = ptrtoint ptr %has_crop_cap82 to i32
  call void @__asan_load1_noabort(i32 %85)
  %.pr = load i8, ptr %has_crop_cap82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool95.not = icmp eq i8 %.pr, 0
  br i1 %tobool95.not, label %land.lhs.true93.if.then96_crit_edge, label %land.lhs.true93.if.end100_crit_edge

land.lhs.true93.if.end100_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100

land.lhs.true93.if.then96_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then96

if.then96:                                        ; preds = %land.lhs.true93.if.then96_crit_edge, %land.lhs.true81.if.then96_crit_edge
  %width1.i394 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 237, i32 2
  %86 = ptrtoint ptr %width1.i394 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %width1.i394, align 4
  %88 = tail call i32 @llvm.umax.i32(i32 %68, i32 %87)
  %height4.i398 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 237, i32 3
  %89 = ptrtoint ptr %height4.i398 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %height4.i398, align 4
  %91 = tail call i32 @llvm.umax.i32(i32 %70, i32 %90)
  br label %if.end100

if.end100:                                        ; preds = %if.then96, %land.lhs.true93.if.end100_crit_edge, %if.then88, %if.then71, %land.lhs.true68.if.end100_crit_edge
  %r.sroa.6.5 = phi i32 [ %68, %land.lhs.true93.if.end100_crit_edge ], [ %68, %land.lhs.true68.if.end100_crit_edge ], [ %73, %if.then71 ], [ %81, %if.then88 ], [ %88, %if.then96 ]
  %r.sroa.19.5 = phi i32 [ %70, %land.lhs.true93.if.end100_crit_edge ], [ %70, %land.lhs.true68.if.end100_crit_edge ], [ %74, %if.then71 ], [ %84, %if.then88 ], [ %91, %if.then96 ]
  %92 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %r.sroa.6.5, ptr %fmt, align 1
  %div104 = udiv i32 %r.sroa.19.5, %factor.0
  %93 = ptrtoint ptr %height64 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %div104, ptr %height64, align 1
  br label %if.end106

if.end106:                                        ; preds = %if.end100, %if.then57
  %buffers = getelementptr inbounds %struct.vivid_fmt, ptr %fmt1.0, i32 0, i32 6
  %94 = ptrtoint ptr %buffers to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %buffers, align 1
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %96 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %num_planes, align 1
  %97 = load i8, ptr %buffers, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp109505.not = icmp eq i8 %97, 0
  br i1 %cmp109505.not, label %if.end106.for.cond147.preheader_crit_edge, label %for.body.lr.ph

if.end106.for.cond147.preheader_crit_edge:        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond147.preheader

for.body.lr.ph:                                   ; preds = %if.end106
  %height136 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  br label %for.body

for.cond147.preheader:                            ; preds = %if.end133.for.cond147.preheader_crit_edge, %if.end106.for.cond147.preheader_crit_edge
  %.lcssa = phi i8 [ 0, %if.end106.for.cond147.preheader_crit_edge ], [ %126, %if.end133.for.cond147.preheader_crit_edge ]
  %planes = getelementptr inbounds %struct.vivid_fmt, ptr %fmt1.0, i32 0, i32 5
  %98 = ptrtoint ptr %planes to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %planes, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %.lcssa, i8 %99)
  %cmp149508 = icmp ult i8 %.lcssa, %99
  br i1 %cmp149508, label %for.body151.lr.ph, label %for.cond147.preheader.for.end175_crit_edge

for.cond147.preheader.for.end175_crit_edge:       ; preds = %for.cond147.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end175

for.body151.lr.ph:                                ; preds = %for.cond147.preheader
  %conv108.le = zext i8 %.lcssa to i32
  %bytesperline153 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %100 = ptrtoint ptr %bytesperline153 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %bytesperline153, align 1
  %height154 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %102 = ptrtoint ptr %height154 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %height154, align 1
  %mul155 = mul i32 %103, %101
  %bit_depth156 = getelementptr inbounds %struct.vivid_fmt, ptr %fmt1.0, i32 0, i32 8
  %vdownsampling158 = getelementptr inbounds %struct.vivid_fmt, ptr %fmt1.0, i32 0, i32 3
  br label %for.body151

for.body:                                         ; preds = %if.end133.for.body_crit_edge, %for.body.lr.ph
  %p.0506 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end133.for.body_crit_edge ]
  %104 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %fmt, align 1
  %arrayidx112 = getelementptr %struct.vivid_fmt, ptr %fmt1.0, i32 0, i32 8, i32 %p.0506
  %106 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx112, align 4
  %mul113 = mul i32 %107, %105
  %shr = lshr i32 %mul113, 3
  %108 = shl i32 %107, 11
  %shr117 = and i32 %108, 536868864
  %arrayidx118 = getelementptr %struct.v4l2_plane_pix_format, ptr %plane_fmt, i32 %p.0506
  %bytesperline119 = getelementptr %struct.v4l2_plane_pix_format, ptr %plane_fmt, i32 %p.0506, i32 1
  %109 = ptrtoint ptr %bytesperline119 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %bytesperline119, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %shr117)
  %cmp120 = icmp ugt i32 %110, %shr117
  br i1 %cmp120, label %if.then122, label %for.body.if.end125_crit_edge

for.body.if.end125_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end125

if.then122:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %111 = ptrtoint ptr %bytesperline119 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 4)
  store i32 %shr117, ptr %bytesperline119, align 1
  br label %if.end125

if.end125:                                        ; preds = %if.then122, %for.body.if.end125_crit_edge
  %112 = ptrtoint ptr %bytesperline119 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %bytesperline119, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %shr)
  %cmp128 = icmp ult i32 %113, %shr
  br i1 %cmp128, label %if.then130, label %if.end125.if.end133_crit_edge

if.end125.if.end133_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end133

if.then130:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #16
  %114 = ptrtoint ptr %bytesperline119 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 4)
  store i32 %shr, ptr %bytesperline119, align 1
  br label %if.end133

if.end133:                                        ; preds = %if.then130, %if.end125.if.end133_crit_edge
  %115 = ptrtoint ptr %bytesperline119 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %bytesperline119, align 1
  %117 = ptrtoint ptr %height136 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %height136, align 1
  %mul137 = mul i32 %118, %116
  %arrayidx138 = getelementptr %struct.vivid_fmt, ptr %fmt1.0, i32 0, i32 3, i32 %p.0506
  %119 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx138, align 1
  %conv139 = zext i8 %120 to i32
  %div140 = udiv i32 %mul137, %conv139
  %arrayidx141 = getelementptr %struct.vivid_fmt, ptr %fmt1.0, i32 0, i32 7, i32 %p.0506
  %121 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx141, align 4
  %add = add i32 %122, %div140
  %123 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_storeN_noabort(i32 %123, i32 4)
  store i32 %add, ptr %arrayidx118, align 1
  %reserved = getelementptr %struct.v4l2_plane_pix_format, ptr %plane_fmt, i32 %p.0506, i32 2
  %124 = call ptr @memset(ptr %reserved, i32 0, i32 12)
  %inc = add nuw nsw i32 %p.0506, 1
  %125 = ptrtoint ptr %buffers to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %buffers, align 1
  %conv108 = zext i8 %126 to i32
  %cmp109 = icmp ult i32 %inc, %conv108
  br i1 %cmp109, label %if.end133.for.body_crit_edge, label %if.end133.for.cond147.preheader_crit_edge

if.end133.for.cond147.preheader_crit_edge:        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond147.preheader

if.end133.for.body_crit_edge:                     ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body151:                                      ; preds = %for.body151.for.body151_crit_edge, %for.body151.lr.ph
  %p.1509 = phi i32 [ %conv108.le, %for.body151.lr.ph ], [ %inc174, %for.body151.for.body151_crit_edge ]
  %arrayidx157 = getelementptr %struct.vivid_fmt, ptr %fmt1.0, i32 0, i32 8, i32 %p.1509
  %127 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx157, align 4
  %arrayidx159 = getelementptr %struct.vivid_fmt, ptr %fmt1.0, i32 0, i32 3, i32 %p.1509
  %129 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx159, align 1
  %conv160 = zext i8 %130 to i32
  %div161 = udiv i32 %128, %conv160
  %mul162 = mul i32 %mul155, %div161
  %131 = ptrtoint ptr %bit_depth156 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %bit_depth156, align 4
  %133 = ptrtoint ptr %vdownsampling158 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %vdownsampling158, align 1
  %conv167 = zext i8 %134 to i32
  %div168 = udiv i32 %132, %conv167
  %div169 = udiv i32 %mul162, %div168
  %135 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %plane_fmt, align 1
  %add172 = add i32 %136, %div169
  store i32 %add172, ptr %plane_fmt, align 1
  %inc174 = add nuw nsw i32 %p.1509, 1
  %137 = ptrtoint ptr %planes to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %planes, align 4
  %conv148 = zext i8 %138 to i32
  %cmp149 = icmp ult i32 %inc174, %conv148
  br i1 %cmp149, label %for.body151.for.body151_crit_edge, label %for.body151.for.end175_crit_edge

for.body151.for.end175_crit_edge:                 ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end175

for.body151.for.body151_crit_edge:                ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body151

for.end175:                                       ; preds = %for.body151.for.end175_crit_edge, %for.cond147.preheader.for.end175_crit_edge
  br i1 %tobool.not, label %if.then187.critedge, label %lor.lhs.false177

lor.lhs.false177:                                 ; preds = %for.end175
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %139 = ptrtoint ptr %colorspace to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %colorspace, align 1
  %141 = add i32 %140, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %141)
  %142 = icmp ult i32 %141, 12
  br i1 %142, label %lor.lhs.false177.lor.lhs.false184_crit_edge, label %lor.lhs.false184.critedge359

lor.lhs.false177.lor.lhs.false184_crit_edge:      ; preds = %lor.lhs.false177
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false184

lor.lhs.false184.critedge359:                     ; preds = %lor.lhs.false177
  %loop_video.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 139
  %143 = ptrtoint ptr %loop_video.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %loop_video.i, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i403 = icmp eq i8 %144, 0
  br i1 %tobool.not.i403, label %lor.lhs.false184.critedge359.if.then.i406_crit_edge, label %lor.lhs.false.i

lor.lhs.false184.critedge359.if.then.i406_crit_edge: ; preds = %lor.lhs.false184.critedge359
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i406

lor.lhs.false.i:                                  ; preds = %lor.lhs.false184.critedge359
  %145 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %input.i.i.i, align 4
  %arrayidx.i.i405 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %146
  %147 = ptrtoint ptr %arrayidx.i.i405 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx.i.i405, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %148)
  %switch.i = icmp ult i8 %148, 2
  br i1 %switch.i, label %lor.lhs.false.i.if.then.i406_crit_edge, label %if.end.i407

lor.lhs.false.i.if.then.i406_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i406

if.then.i406:                                     ; preds = %lor.lhs.false.i.if.then.i406_crit_edge, %lor.lhs.false184.critedge359.if.then.i406_crit_edge
  %colorspace.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 20
  br label %vivid_colorspace_cap.exit

if.end.i407:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  %colorspace_out.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 202
  br label %vivid_colorspace_cap.exit

vivid_colorspace_cap.exit:                        ; preds = %if.end.i407, %if.then.i406
  %retval.0.in.i = phi ptr [ %colorspace.i.i, %if.then.i406 ], [ %colorspace_out.i, %if.end.i407 ]
  %149 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %retval.0.i408 = load i32, ptr %retval.0.in.i, align 4
  %150 = ptrtoint ptr %colorspace to i32
  call void @__asan_storeN_noabort(i32 %150, i32 4)
  store i32 %retval.0.i408, ptr %colorspace, align 1
  br label %lor.lhs.false184

lor.lhs.false184:                                 ; preds = %vivid_colorspace_cap.exit, %lor.lhs.false177.lor.lhs.false184_crit_edge
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %151 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %xfer_func, align 1
  %conv185 = zext i8 %152 to i32
  %153 = add nsw i32 %conv185, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %153)
  %154 = icmp ult i32 %153, 7
  br i1 %154, label %lor.lhs.false184.if.end191_crit_edge, label %lor.lhs.false184.if.then187_crit_edge

lor.lhs.false184.if.then187_crit_edge:            ; preds = %lor.lhs.false184
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then187

lor.lhs.false184.if.end191_crit_edge:             ; preds = %lor.lhs.false184
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end191

if.then187.critedge:                              ; preds = %for.end175
  %loop_video.i409 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 139
  %155 = ptrtoint ptr %loop_video.i409 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %loop_video.i409, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool.not.i410 = icmp eq i8 %156, 0
  br i1 %tobool.not.i410, label %if.then187.critedge.if.then.i416_crit_edge, label %lor.lhs.false.i414

if.then187.critedge.if.then.i416_crit_edge:       ; preds = %if.then187.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i416

lor.lhs.false.i414:                               ; preds = %if.then187.critedge
  %157 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %input.i.i.i, align 4
  %arrayidx.i.i412 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %158
  %159 = ptrtoint ptr %arrayidx.i.i412 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx.i.i412, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %160)
  %switch.i413 = icmp ult i8 %160, 2
  br i1 %switch.i413, label %lor.lhs.false.i414.if.then.i416_crit_edge, label %if.end.i418

lor.lhs.false.i414.if.then.i416_crit_edge:        ; preds = %lor.lhs.false.i414
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i416

if.then.i416:                                     ; preds = %lor.lhs.false.i414.if.then.i416_crit_edge, %if.then187.critedge.if.then.i416_crit_edge
  %colorspace.i.i415 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 20
  br label %vivid_colorspace_cap.exit421

if.end.i418:                                      ; preds = %lor.lhs.false.i414
  call void @__sanitizer_cov_trace_pc() #16
  %colorspace_out.i417 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 202
  br label %vivid_colorspace_cap.exit421

vivid_colorspace_cap.exit421:                     ; preds = %if.end.i418, %if.then.i416
  %retval.0.in.i419 = phi ptr [ %colorspace.i.i415, %if.then.i416 ], [ %colorspace_out.i417, %if.end.i418 ]
  %161 = ptrtoint ptr %retval.0.in.i419 to i32
  call void @__asan_load4_noabort(i32 %161)
  %retval.0.i420 = load i32, ptr %retval.0.in.i419, align 4
  %colorspace181.c361 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %162 = ptrtoint ptr %colorspace181.c361 to i32
  call void @__asan_storeN_noabort(i32 %162, i32 4)
  store i32 %retval.0.i420, ptr %colorspace181.c361, align 1
  br label %if.then187

if.then187:                                       ; preds = %vivid_colorspace_cap.exit421, %lor.lhs.false184.if.then187_crit_edge
  %loop_video.i422 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 139
  %163 = ptrtoint ptr %loop_video.i422 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %loop_video.i422, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i423 = icmp eq i8 %164, 0
  br i1 %tobool.not.i423, label %if.then187.if.then.i428_crit_edge, label %lor.lhs.false.i427

if.then187.if.then.i428_crit_edge:                ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i428

lor.lhs.false.i427:                               ; preds = %if.then187
  %165 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %input.i.i.i, align 4
  %arrayidx.i.i425 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %166
  %167 = ptrtoint ptr %arrayidx.i.i425 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx.i.i425, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %168)
  %switch.i426 = icmp ult i8 %168, 2
  br i1 %switch.i426, label %lor.lhs.false.i427.if.then.i428_crit_edge, label %if.end.i429

lor.lhs.false.i427.if.then.i428_crit_edge:        ; preds = %lor.lhs.false.i427
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i428

if.then.i428:                                     ; preds = %lor.lhs.false.i427.if.then.i428_crit_edge, %if.then187.if.then.i428_crit_edge
  %xfer_func.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 21
  br label %vivid_xfer_func_cap.exit

if.end.i429:                                      ; preds = %lor.lhs.false.i427
  call void @__sanitizer_cov_trace_pc() #16
  %xfer_func_out.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 206
  br label %vivid_xfer_func_cap.exit

vivid_xfer_func_cap.exit:                         ; preds = %if.end.i429, %if.then.i428
  %retval.0.in.i430 = phi ptr [ %xfer_func.i.i, %if.then.i428 ], [ %xfer_func_out.i, %if.end.i429 ]
  %169 = ptrtoint ptr %retval.0.in.i430 to i32
  call void @__asan_load4_noabort(i32 %169)
  %retval.0.i431 = load i32, ptr %retval.0.in.i430, align 4
  %conv189 = trunc i32 %retval.0.i431 to i8
  %xfer_func190 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %170 = ptrtoint ptr %xfer_func190 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv189, ptr %xfer_func190, align 1
  br label %if.end191

if.end191:                                        ; preds = %vivid_xfer_func_cap.exit, %lor.lhs.false184.if.end191_crit_edge
  %color_enc = getelementptr inbounds %struct.vivid_fmt, ptr %fmt1.0, i32 0, i32 1
  %171 = ptrtoint ptr %color_enc to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %color_enc, align 4
  %173 = zext i32 %172 to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %172, label %if.else214 [
    i32 2, label %if.then194
    i32 1, label %if.then206
  ]

if.then194:                                       ; preds = %if.end191
  br i1 %tobool.not, label %if.then194.if.then198_crit_edge, label %lor.lhs.false196

if.then194.if.then198_crit_edge:                  ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then198

lor.lhs.false196:                                 ; preds = %if.then194
  %174 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %174, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %176)
  %177 = icmp slt i8 %176, -126
  br i1 %177, label %lor.lhs.false196.if.end218_crit_edge, label %lor.lhs.false196.if.then198_crit_edge

lor.lhs.false196.if.then198_crit_edge:            ; preds = %lor.lhs.false196
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then198

lor.lhs.false196.if.end218_crit_edge:             ; preds = %lor.lhs.false196
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end218

if.then198:                                       ; preds = %lor.lhs.false196.if.then198_crit_edge, %if.then194.if.then198_crit_edge
  %loop_video.i432 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 139
  %178 = ptrtoint ptr %loop_video.i432 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %loop_video.i432, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool.not.i433 = icmp eq i8 %179, 0
  br i1 %tobool.not.i433, label %if.then198.if.then.i438_crit_edge, label %lor.lhs.false.i437

if.then198.if.then.i438_crit_edge:                ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i438

lor.lhs.false.i437:                               ; preds = %if.then198
  %180 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %input.i.i.i, align 4
  %arrayidx.i.i435 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %181
  %182 = ptrtoint ptr %arrayidx.i.i435 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx.i.i435, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %183)
  %switch.i436 = icmp ult i8 %183, 2
  br i1 %switch.i436, label %lor.lhs.false.i437.if.then.i438_crit_edge, label %if.end.i439

lor.lhs.false.i437.if.then.i438_crit_edge:        ; preds = %lor.lhs.false.i437
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i438

if.then.i438:                                     ; preds = %lor.lhs.false.i437.if.then.i438_crit_edge, %if.then198.if.then.i438_crit_edge
  %hsv_enc.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 23
  br label %if.end218.sink.split

if.end.i439:                                      ; preds = %lor.lhs.false.i437
  call void @__sanitizer_cov_trace_pc() #16
  %hsv_enc_out.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 204
  br label %if.end218.sink.split

if.then206:                                       ; preds = %if.end191
  br i1 %tobool.not, label %if.then206.if.then210_crit_edge, label %lor.lhs.false208

if.then206.if.then210_crit_edge:                  ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then210

lor.lhs.false208:                                 ; preds = %if.then206
  %184 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %184, align 1
  %187 = add i8 %186, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %187)
  %188 = icmp ult i8 %187, 8
  br i1 %188, label %lor.lhs.false208.if.end218_crit_edge, label %lor.lhs.false208.if.then210_crit_edge

lor.lhs.false208.if.then210_crit_edge:            ; preds = %lor.lhs.false208
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then210

lor.lhs.false208.if.end218_crit_edge:             ; preds = %lor.lhs.false208
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end218

if.then210:                                       ; preds = %lor.lhs.false208.if.then210_crit_edge, %if.then206.if.then210_crit_edge
  %loop_video.i442 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 139
  %189 = ptrtoint ptr %loop_video.i442 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %loop_video.i442, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool.not.i443 = icmp eq i8 %190, 0
  br i1 %tobool.not.i443, label %if.then210.if.then.i448_crit_edge, label %lor.lhs.false.i447

if.then210.if.then.i448_crit_edge:                ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i448

lor.lhs.false.i447:                               ; preds = %if.then210
  %191 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %input.i.i.i, align 4
  %arrayidx.i.i445 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %192
  %193 = ptrtoint ptr %arrayidx.i.i445 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx.i.i445, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %194)
  %switch.i446 = icmp ult i8 %194, 2
  br i1 %switch.i446, label %lor.lhs.false.i447.if.then.i448_crit_edge, label %if.end.i449

lor.lhs.false.i447.if.then.i448_crit_edge:        ; preds = %lor.lhs.false.i447
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i448

if.then.i448:                                     ; preds = %lor.lhs.false.i447.if.then.i448_crit_edge, %if.then210.if.then.i448_crit_edge
  %ycbcr_enc.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 22
  br label %if.end218.sink.split

if.end.i449:                                      ; preds = %lor.lhs.false.i447
  call void @__sanitizer_cov_trace_pc() #16
  %ycbcr_enc_out.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 203
  br label %if.end218.sink.split

if.else214:                                       ; preds = %if.end191
  %loop_video.i452 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 139
  %195 = ptrtoint ptr %loop_video.i452 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %loop_video.i452, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool.not.i453 = icmp eq i8 %196, 0
  br i1 %tobool.not.i453, label %if.else214.if.then.i459_crit_edge, label %lor.lhs.false.i457

if.else214.if.then.i459_crit_edge:                ; preds = %if.else214
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i459

lor.lhs.false.i457:                               ; preds = %if.else214
  %197 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %input.i.i.i, align 4
  %arrayidx.i.i455 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %198
  %199 = ptrtoint ptr %arrayidx.i.i455 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx.i.i455, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %200)
  %switch.i456 = icmp ult i8 %200, 2
  br i1 %switch.i456, label %lor.lhs.false.i457.if.then.i459_crit_edge, label %if.end.i461

lor.lhs.false.i457.if.then.i459_crit_edge:        ; preds = %lor.lhs.false.i457
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i459

if.then.i459:                                     ; preds = %lor.lhs.false.i457.if.then.i459_crit_edge, %if.else214.if.then.i459_crit_edge
  %ycbcr_enc.i.i458 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 22
  br label %if.end218.sink.split

if.end.i461:                                      ; preds = %lor.lhs.false.i457
  call void @__sanitizer_cov_trace_pc() #16
  %ycbcr_enc_out.i460 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 203
  br label %if.end218.sink.split

if.end218.sink.split:                             ; preds = %if.end.i461, %if.then.i459, %if.end.i449, %if.then.i448, %if.end.i439, %if.then.i438
  %retval.0.in.i462.sink = phi ptr [ %hsv_enc.i.i, %if.then.i438 ], [ %hsv_enc_out.i, %if.end.i439 ], [ %ycbcr_enc.i.i, %if.then.i448 ], [ %ycbcr_enc_out.i, %if.end.i449 ], [ %ycbcr_enc.i.i458, %if.then.i459 ], [ %ycbcr_enc_out.i460, %if.end.i461 ]
  %201 = ptrtoint ptr %retval.0.in.i462.sink to i32
  call void @__asan_load4_noabort(i32 %201)
  %retval.0.i463 = load i32, ptr %retval.0.in.i462.sink, align 4
  %conv216 = trunc i32 %retval.0.i463 to i8
  %202 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %conv216, ptr %202, align 1
  br label %if.end218

if.end218:                                        ; preds = %if.end218.sink.split, %lor.lhs.false208.if.end218_crit_edge, %lor.lhs.false196.if.end218_crit_edge
  %204 = ptrtoint ptr %color_enc to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %color_enc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %205)
  %switch = icmp ult i32 %205, 2
  br i1 %switch, label %if.then226, label %if.else235

if.then226:                                       ; preds = %if.end218
  br i1 %tobool.not, label %if.then226.if.then230_crit_edge, label %lor.lhs.false228

if.then226.if.then230_crit_edge:                  ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then230

lor.lhs.false228:                                 ; preds = %if.then226
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %206 = ptrtoint ptr %quantization to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %quantization, align 1
  %208 = add i8 %207, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %208)
  %209 = icmp ult i8 %208, 2
  br i1 %209, label %lor.lhs.false228.if.end239_crit_edge, label %lor.lhs.false228.if.then230_crit_edge

lor.lhs.false228.if.then230_crit_edge:            ; preds = %lor.lhs.false228
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then230

lor.lhs.false228.if.end239_crit_edge:             ; preds = %lor.lhs.false228
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end239

if.then230:                                       ; preds = %lor.lhs.false228.if.then230_crit_edge, %if.then226.if.then230_crit_edge
  %loop_video.i465 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 139
  %210 = ptrtoint ptr %loop_video.i465 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %loop_video.i465, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool.not.i466 = icmp eq i8 %211, 0
  br i1 %tobool.not.i466, label %if.then230.if.then.i471_crit_edge, label %lor.lhs.false.i470

if.then230.if.then.i471_crit_edge:                ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i471

lor.lhs.false.i470:                               ; preds = %if.then230
  %212 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %input.i.i.i, align 4
  %arrayidx.i.i468 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %213
  %214 = ptrtoint ptr %arrayidx.i.i468 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx.i.i468, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %215)
  %switch.i469 = icmp ult i8 %215, 2
  br i1 %switch.i469, label %lor.lhs.false.i470.if.then.i471_crit_edge, label %if.end.i472

lor.lhs.false.i470.if.then.i471_crit_edge:        ; preds = %lor.lhs.false.i470
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i471

if.then.i471:                                     ; preds = %lor.lhs.false.i470.if.then.i471_crit_edge, %if.then230.if.then.i471_crit_edge
  %quantization.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 27
  br label %if.end239.sink.split

if.end.i472:                                      ; preds = %lor.lhs.false.i470
  call void @__sanitizer_cov_trace_pc() #16
  %quantization_out.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 205
  br label %if.end239.sink.split

if.else235:                                       ; preds = %if.end218
  %loop_video.i475 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 139
  %216 = ptrtoint ptr %loop_video.i475 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %loop_video.i475, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool.not.i476 = icmp eq i8 %217, 0
  br i1 %tobool.not.i476, label %if.else235.if.then.i482_crit_edge, label %lor.lhs.false.i480

if.else235.if.then.i482_crit_edge:                ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i482

lor.lhs.false.i480:                               ; preds = %if.else235
  %218 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %input.i.i.i, align 4
  %arrayidx.i.i478 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %219
  %220 = ptrtoint ptr %arrayidx.i.i478 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx.i.i478, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %221)
  %switch.i479 = icmp ult i8 %221, 2
  br i1 %switch.i479, label %lor.lhs.false.i480.if.then.i482_crit_edge, label %if.end.i484

lor.lhs.false.i480.if.then.i482_crit_edge:        ; preds = %lor.lhs.false.i480
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i482

if.then.i482:                                     ; preds = %lor.lhs.false.i480.if.then.i482_crit_edge, %if.else235.if.then.i482_crit_edge
  %quantization.i.i481 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 27
  br label %if.end239.sink.split

if.end.i484:                                      ; preds = %lor.lhs.false.i480
  call void @__sanitizer_cov_trace_pc() #16
  %quantization_out.i483 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 205
  br label %if.end239.sink.split

if.end239.sink.split:                             ; preds = %if.end.i484, %if.then.i482, %if.end.i472, %if.then.i471
  %retval.0.in.i473.sink = phi ptr [ %quantization.i.i, %if.then.i471 ], [ %quantization_out.i, %if.end.i472 ], [ %quantization.i.i481, %if.then.i482 ], [ %quantization_out.i483, %if.end.i484 ]
  %222 = ptrtoint ptr %retval.0.in.i473.sink to i32
  call void @__asan_load4_noabort(i32 %222)
  %retval.0.i474 = load i32, ptr %retval.0.in.i473.sink, align 4
  %conv232 = trunc i32 %retval.0.i474 to i8
  %quantization233 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %223 = ptrtoint ptr %quantization233 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %conv232, ptr %quantization233, align 1
  br label %if.end239

if.end239:                                        ; preds = %if.end239.sink.split, %lor.lhs.false228.if.end239_crit_edge
  %reserved240 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 11
  %224 = call ptr @memset(ptr %reserved240, i32 0, i32 7)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vivid_get_format(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_find_nearest_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_s_fmt_vid_cap(ptr noundef %file, ptr nocapture readnone %priv, ptr noundef %f) #0 align 64 {
entry:
  %r = alloca %struct.v4l2_rect, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %crop_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239
  %compose_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240
  %call1 = tail call i32 @vivid_try_fmt_vid_cap(ptr noundef %file, ptr undef, ptr noundef %f)
  %num_buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 242, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end11, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %4 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4.not = icmp eq i32 %4, 0
  br i1 %cmp4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull @.str.4) #17
  br label %cleanup

if.end11:                                         ; preds = %entry
  %overlay_cap_owner = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 190
  %5 = ptrtoint ptr %overlay_cap_owner to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %overlay_cap_owner, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end11.if.end30_crit_edge, label %land.lhs.true

if.end11.if.end30_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end11
  %pixelformat = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 189, i32 3, i32 2
  %7 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pixelformat, align 4
  %pixelformat13 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %pixelformat13 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %pixelformat13, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp14.not = icmp eq i32 %8, %10
  br i1 %cmp14.not, label %land.lhs.true.if.end30_crit_edge, label %do.body16

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

do.body16:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %11 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp17.not = icmp eq i32 %11, 0
  br i1 %cmp17.not, label %do.body16.cleanup_crit_edge, label %do.end21

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end21:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #16
  %name24 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name24) #17
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %if.end11.if.end30_crit_edge
  %pixelformat31 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %pixelformat31 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %pixelformat31, align 1
  %call32 = tail call ptr @vivid_get_format(ptr noundef %1, i32 noundef %13) #14
  %fmt_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 234
  %14 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call32, ptr %fmt_cap, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %field, align 1
  %switch.tableidx = add i32 %16, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %17 = icmp ult i32 %switch.tableidx, 6
  br i1 %17, label %switch.lookup, label %if.end30.if.end40_crit_edge

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

switch.lookup:                                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.vivid_s_fmt_vid_cap, i32 0, i32 %switch.tableidx
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end40

if.end40:                                         ; preds = %switch.lookup, %if.end30.if.end40_crit_edge
  %factor.0 = phi i32 [ 1, %if.end30.if.end40_crit_edge ], [ %switch.load, %switch.lookup ]
  %input.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %19 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %input.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %20
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.i361 = icmp eq i8 %22, 0
  br i1 %cmp.i361, label %for.cond.preheader, label %land.lhs.true42

for.cond.preheader:                               ; preds = %if.end40
  %23 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %fmt, align 1
  %height148 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %24, label %for.cond.preheader.for.inc.5_crit_edge [
    i32 320, label %land.lhs.true145
    i32 640, label %land.lhs.true145.1
    i32 1280, label %land.lhs.true145.3
    i32 1920, label %land.lhs.true145.4
    i32 3840, label %land.lhs.true145.5
  ]

for.cond.preheader.for.inc.5_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

land.lhs.true42:                                  ; preds = %if.end40
  %has_scaler_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 325
  %26 = ptrtoint ptr %has_scaler_cap to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %has_scaler_cap, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool43.not = icmp eq i8 %27, 0
  br i1 %tobool43.not, label %lor.lhs.false44, label %land.lhs.true42.if.then48_crit_edge

land.lhs.true42.if.then48_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then48

lor.lhs.false44:                                  ; preds = %land.lhs.true42
  %has_crop_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 323
  %28 = ptrtoint ptr %has_crop_cap to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %has_crop_cap, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool45.not = icmp eq i8 %29, 0
  br i1 %tobool45.not, label %lor.lhs.false46, label %lor.lhs.false44.if.then48_crit_edge

lor.lhs.false44.if.then48_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then48

lor.lhs.false46:                                  ; preds = %lor.lhs.false44
  %has_compose_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 324
  %30 = ptrtoint ptr %has_compose_cap to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %has_compose_cap, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool47.not = icmp eq i8 %31, 0
  br i1 %tobool47.not, label %if.else160, label %lor.lhs.false46.if.then48_crit_edge

lor.lhs.false46.if.then48_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then48

if.then48:                                        ; preds = %lor.lhs.false46.if.then48_crit_edge, %lor.lhs.false44.if.then48_crit_edge, %land.lhs.true42.if.then48_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %r) #14
  %32 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 1
  %33 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 2
  %34 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 3
  %35 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %r, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %32, align 4
  %37 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %fmt, align 1
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %33, align 4
  %height50 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %height50 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %height50, align 1
  %42 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %34, align 4
  br i1 %tobool43.not, label %if.else107, label %if.then53

if.then53:                                        ; preds = %if.then48
  %has_compose_cap54 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 324
  %43 = ptrtoint ptr %has_compose_cap54 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %has_compose_cap54, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool55.not = icmp eq i8 %44, 0
  br i1 %tobool55.not, label %if.else, label %if.then56

if.then56:                                        ; preds = %if.then53
  %width.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 2
  %45 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %width.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %38)
  %cmp.i.i = icmp ugt i32 %46, %38
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then56.if.end.i.i_crit_edge

if.then56.if.end.i.i_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %width.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %38, ptr %width.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then56.if.end.i.i_crit_edge
  %height.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 3
  %48 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %41)
  %cmp5.i.i = icmp ugt i32 %49, %41
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end.i.i.v4l2_rect_set_max_size.exit.i_crit_edge

if.end.i.i.v4l2_rect_set_max_size.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_max_size.exit.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %41, ptr %height.i.i, align 4
  br label %v4l2_rect_set_max_size.exit.i

v4l2_rect_set_max_size.exit.i:                    ; preds = %if.then6.i.i, %if.end.i.i.v4l2_rect_set_max_size.exit.i_crit_edge
  %51 = ptrtoint ptr %compose_cap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %compose_cap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i362 = icmp slt i32 %52, 0
  br i1 %cmp.i362, label %if.then.i, label %v4l2_rect_set_max_size.exit.i.if.end.i_crit_edge

v4l2_rect_set_max_size.exit.i.if.end.i_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %v4l2_rect_set_max_size.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %compose_cap to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %compose_cap, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %v4l2_rect_set_max_size.exit.i.if.end.i_crit_edge
  %top.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 1
  %54 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %top.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp5.i = icmp slt i32 %55, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %top.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i.if.end9.i_crit_edge
  %57 = ptrtoint ptr %compose_cap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %compose_cap, align 4
  %59 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %width.i.i, align 4
  %add.i = add i32 %60, %58
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %38)
  %cmp14.i = icmp ugt i32 %add.i, %38
  br i1 %cmp14.i, label %if.then15.i, label %if.end9.i.if.end21.i_crit_edge

if.end9.i.if.end21.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i

if.then15.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = sub i32 %38, %60
  %61 = ptrtoint ptr %compose_cap to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub.i, ptr %compose_cap, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then15.i, %if.end9.i.if.end21.i_crit_edge
  %62 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %top.i, align 4
  %64 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %height.i.i, align 4
  %add23.i = add i32 %65, %63
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i, i32 %41)
  %cmp27.i = icmp ugt i32 %add23.i, %41
  br i1 %cmp27.i, label %if.then28.i, label %if.end21.i.if.end57_crit_edge

if.end21.i.if.end57_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.then28.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub33.i = sub i32 %41, %65
  %66 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub33.i, ptr %top.i, align 4
  br label %if.end57

if.else:                                          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  %67 = call ptr @memcpy(ptr %compose_cap, ptr %r, i32 16)
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then28.i, %if.end21.i.if.end57_crit_edge
  %has_crop_cap58 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 323
  %68 = ptrtoint ptr %has_crop_cap58 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %has_crop_cap58, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool59.not = icmp eq i8 %69, 0
  br i1 %tobool59.not, label %if.end57.if.end137_crit_edge, label %land.lhs.true60

if.end57.if.end137_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end137

land.lhs.true60:                                  ; preds = %if.end57
  %70 = ptrtoint ptr %has_compose_cap54 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %has_compose_cap54, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool62.not = icmp eq i8 %71, 0
  br i1 %tobool62.not, label %if.then63, label %if.then83

if.then63:                                        ; preds = %land.lhs.true60
  %div359 = lshr i32 %38, 2
  %mul = mul i32 %41, %factor.0
  %div70360 = lshr i32 %mul, 2
  %mul75 = shl i32 %38, 2
  %mul79 = shl i32 %mul, 2
  %width.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239, i32 2
  %72 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %div359)
  %cmp.i363 = icmp ult i32 %73, %div359
  br i1 %cmp.i363, label %if.then.i364, label %if.then63.if.end.i366_crit_edge

if.then63.if.end.i366_crit_edge:                  ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i366

if.then.i364:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  %74 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %div359, ptr %width.i, align 4
  br label %if.end.i366

if.end.i366:                                      ; preds = %if.then.i364, %if.then63.if.end.i366_crit_edge
  %height.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239, i32 3
  %75 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %div70360)
  %cmp5.i365 = icmp ult i32 %76, %div70360
  br i1 %cmp5.i365, label %if.then6.i367, label %if.end.i366.v4l2_rect_set_min_size.exit_crit_edge

if.end.i366.v4l2_rect_set_min_size.exit_crit_edge: ; preds = %if.end.i366
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_min_size.exit

if.then6.i367:                                    ; preds = %if.end.i366
  call void @__sanitizer_cov_trace_pc() #16
  %77 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %div70360, ptr %height.i, align 4
  br label %v4l2_rect_set_min_size.exit

v4l2_rect_set_min_size.exit:                      ; preds = %if.then6.i367, %if.end.i366.v4l2_rect_set_min_size.exit_crit_edge
  %78 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %mul75)
  %cmp.i371 = icmp ugt i32 %79, %mul75
  br i1 %cmp.i371, label %if.then.i372, label %v4l2_rect_set_min_size.exit.if.end.i376_crit_edge

v4l2_rect_set_min_size.exit.if.end.i376_crit_edge: ; preds = %v4l2_rect_set_min_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i376

if.then.i372:                                     ; preds = %v4l2_rect_set_min_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  %80 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %mul75, ptr %width.i, align 4
  br label %if.end.i376

if.end.i376:                                      ; preds = %if.then.i372, %v4l2_rect_set_min_size.exit.if.end.i376_crit_edge
  %81 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %mul79)
  %cmp5.i375 = icmp ugt i32 %82, %mul79
  br i1 %cmp5.i375, label %if.then6.i377, label %if.end.i376.v4l2_rect_set_max_size.exit_crit_edge

if.end.i376.v4l2_rect_set_max_size.exit_crit_edge: ; preds = %if.end.i376
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_max_size.exit

if.then6.i377:                                    ; preds = %if.end.i376
  call void @__sanitizer_cov_trace_pc() #16
  %83 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %mul79, ptr %height.i, align 4
  br label %v4l2_rect_set_max_size.exit

v4l2_rect_set_max_size.exit:                      ; preds = %if.then6.i377, %if.end.i376.v4l2_rect_set_max_size.exit_crit_edge
  %crop_bounds_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 241
  %84 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %width.i, align 4
  %width1.i.i380 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 241, i32 2
  %86 = ptrtoint ptr %width1.i.i380 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %width1.i.i380, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp.i.i381 = icmp ugt i32 %85, %87
  br i1 %cmp.i.i381, label %if.then.i.i382, label %v4l2_rect_set_max_size.exit.if.end.i.i386_crit_edge

v4l2_rect_set_max_size.exit.if.end.i.i386_crit_edge: ; preds = %v4l2_rect_set_max_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i386

if.then.i.i382:                                   ; preds = %v4l2_rect_set_max_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  %88 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %width.i, align 4
  br label %if.end.i.i386

if.end.i.i386:                                    ; preds = %if.then.i.i382, %v4l2_rect_set_max_size.exit.if.end.i.i386_crit_edge
  %89 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %height.i, align 4
  %height4.i.i384 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 241, i32 3
  %91 = ptrtoint ptr %height4.i.i384 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %height4.i.i384, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %92)
  %cmp5.i.i385 = icmp ugt i32 %90, %92
  br i1 %cmp5.i.i385, label %if.then6.i.i387, label %if.end.i.i386.v4l2_rect_set_max_size.exit.i389_crit_edge

if.end.i.i386.v4l2_rect_set_max_size.exit.i389_crit_edge: ; preds = %if.end.i.i386
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_max_size.exit.i389

if.then6.i.i387:                                  ; preds = %if.end.i.i386
  call void @__sanitizer_cov_trace_pc() #16
  %93 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %height.i, align 4
  br label %v4l2_rect_set_max_size.exit.i389

v4l2_rect_set_max_size.exit.i389:                 ; preds = %if.then6.i.i387, %if.end.i.i386.v4l2_rect_set_max_size.exit.i389_crit_edge
  %94 = ptrtoint ptr %crop_cap to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %crop_cap, align 4
  %96 = ptrtoint ptr %crop_bounds_cap to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %crop_bounds_cap, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp.i388 = icmp slt i32 %95, %97
  br i1 %cmp.i388, label %if.then.i390, label %v4l2_rect_set_max_size.exit.i389.if.end.i394_crit_edge

v4l2_rect_set_max_size.exit.i389.if.end.i394_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i389
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i394

if.then.i390:                                     ; preds = %v4l2_rect_set_max_size.exit.i389
  call void @__sanitizer_cov_trace_pc() #16
  %98 = ptrtoint ptr %crop_cap to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %crop_cap, align 4
  br label %if.end.i394

if.end.i394:                                      ; preds = %if.then.i390, %v4l2_rect_set_max_size.exit.i389.if.end.i394_crit_edge
  %top.i391 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239, i32 1
  %99 = ptrtoint ptr %top.i391 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %top.i391, align 4
  %top4.i392 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 241, i32 1
  %101 = ptrtoint ptr %top4.i392 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %top4.i392, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %102)
  %cmp5.i393 = icmp slt i32 %100, %102
  br i1 %cmp5.i393, label %if.then6.i395, label %if.end.i394.if.end9.i399_crit_edge

if.end.i394.if.end9.i399_crit_edge:               ; preds = %if.end.i394
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i399

if.then6.i395:                                    ; preds = %if.end.i394
  call void @__sanitizer_cov_trace_pc() #16
  %103 = ptrtoint ptr %top.i391 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %top.i391, align 4
  br label %if.end9.i399

if.end9.i399:                                     ; preds = %if.then6.i395, %if.end.i394.if.end9.i399_crit_edge
  %104 = ptrtoint ptr %crop_cap to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %crop_cap, align 4
  %106 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %width.i, align 4
  %add.i396 = add i32 %107, %105
  %108 = ptrtoint ptr %crop_bounds_cap to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %crop_bounds_cap, align 4
  %110 = ptrtoint ptr %width1.i.i380 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %width1.i.i380, align 4
  %add13.i397 = add i32 %111, %109
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i396, i32 %add13.i397)
  %cmp14.i398 = icmp ugt i32 %add.i396, %add13.i397
  br i1 %cmp14.i398, label %if.then15.i401, label %if.end9.i399.if.end21.i405_crit_edge

if.end9.i399.if.end21.i405_crit_edge:             ; preds = %if.end9.i399
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i405

if.then15.i401:                                   ; preds = %if.end9.i399
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i400 = sub i32 %add13.i397, %107
  %112 = ptrtoint ptr %crop_cap to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %sub.i400, ptr %crop_cap, align 4
  br label %if.end21.i405

if.end21.i405:                                    ; preds = %if.then15.i401, %if.end9.i399.if.end21.i405_crit_edge
  %113 = ptrtoint ptr %top.i391 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %top.i391, align 4
  %115 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %height.i, align 4
  %add23.i402 = add i32 %116, %114
  %117 = ptrtoint ptr %top4.i392 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %top4.i392, align 4
  %119 = ptrtoint ptr %height4.i.i384 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %height4.i.i384, align 4
  %add26.i403 = add i32 %120, %118
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i402, i32 %add26.i403)
  %cmp27.i404 = icmp ugt i32 %add23.i402, %add26.i403
  br i1 %cmp27.i404, label %if.then28.i407, label %if.end21.i405.if.end137_crit_edge

if.end21.i405.if.end137_crit_edge:                ; preds = %if.end21.i405
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end137

if.then28.i407:                                   ; preds = %if.end21.i405
  call void @__sanitizer_cov_trace_pc() #16
  %sub33.i406 = sub i32 %add26.i403, %116
  %121 = ptrtoint ptr %top.i391 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %sub33.i406, ptr %top.i391, align 4
  br label %if.end137

if.then83:                                        ; preds = %land.lhs.true60
  %width88 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 2
  %122 = ptrtoint ptr %width88 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %width88, align 4
  %div89357 = lshr i32 %123, 2
  %height91 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 3
  %124 = ptrtoint ptr %height91 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %height91, align 4
  %mul92 = mul i32 %125, %factor.0
  %div93358 = lshr i32 %mul92, 2
  %mul99 = shl i32 %123, 2
  %mul103 = shl i32 %mul92, 2
  %width.i409 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239, i32 2
  %126 = ptrtoint ptr %width.i409 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %width.i409, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %div89357)
  %cmp.i411 = icmp ult i32 %127, %div89357
  br i1 %cmp.i411, label %if.then.i412, label %if.then83.if.end.i416_crit_edge

if.then83.if.end.i416_crit_edge:                  ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i416

if.then.i412:                                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  %128 = ptrtoint ptr %width.i409 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %div89357, ptr %width.i409, align 4
  br label %if.end.i416

if.end.i416:                                      ; preds = %if.then.i412, %if.then83.if.end.i416_crit_edge
  %height.i413 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239, i32 3
  %129 = ptrtoint ptr %height.i413 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %height.i413, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %div93358)
  %cmp5.i415 = icmp ult i32 %130, %div93358
  br i1 %cmp5.i415, label %if.then6.i417, label %if.end.i416.v4l2_rect_set_min_size.exit419_crit_edge

if.end.i416.v4l2_rect_set_min_size.exit419_crit_edge: ; preds = %if.end.i416
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_min_size.exit419

if.then6.i417:                                    ; preds = %if.end.i416
  call void @__sanitizer_cov_trace_pc() #16
  %131 = ptrtoint ptr %height.i413 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %div93358, ptr %height.i413, align 4
  br label %v4l2_rect_set_min_size.exit419

v4l2_rect_set_min_size.exit419:                   ; preds = %if.then6.i417, %if.end.i416.v4l2_rect_set_min_size.exit419_crit_edge
  %132 = ptrtoint ptr %width.i409 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %width.i409, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %mul99)
  %cmp.i422 = icmp ugt i32 %133, %mul99
  br i1 %cmp.i422, label %if.then.i423, label %v4l2_rect_set_min_size.exit419.if.end.i427_crit_edge

v4l2_rect_set_min_size.exit419.if.end.i427_crit_edge: ; preds = %v4l2_rect_set_min_size.exit419
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i427

if.then.i423:                                     ; preds = %v4l2_rect_set_min_size.exit419
  call void @__sanitizer_cov_trace_pc() #16
  %134 = ptrtoint ptr %width.i409 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %mul99, ptr %width.i409, align 4
  br label %if.end.i427

if.end.i427:                                      ; preds = %if.then.i423, %v4l2_rect_set_min_size.exit419.if.end.i427_crit_edge
  %135 = ptrtoint ptr %height.i413 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %height.i413, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %mul103)
  %cmp5.i426 = icmp ugt i32 %136, %mul103
  br i1 %cmp5.i426, label %if.then6.i428, label %if.end.i427.v4l2_rect_set_max_size.exit430_crit_edge

if.end.i427.v4l2_rect_set_max_size.exit430_crit_edge: ; preds = %if.end.i427
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_max_size.exit430

if.then6.i428:                                    ; preds = %if.end.i427
  call void @__sanitizer_cov_trace_pc() #16
  %137 = ptrtoint ptr %height.i413 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %mul103, ptr %height.i413, align 4
  br label %v4l2_rect_set_max_size.exit430

v4l2_rect_set_max_size.exit430:                   ; preds = %if.then6.i428, %if.end.i427.v4l2_rect_set_max_size.exit430_crit_edge
  %crop_bounds_cap104 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 241
  %138 = ptrtoint ptr %width.i409 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %width.i409, align 4
  %width1.i.i432 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 241, i32 2
  %140 = ptrtoint ptr %width1.i.i432 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %width1.i.i432, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %141)
  %cmp.i.i433 = icmp ugt i32 %139, %141
  br i1 %cmp.i.i433, label %if.then.i.i434, label %v4l2_rect_set_max_size.exit430.if.end.i.i438_crit_edge

v4l2_rect_set_max_size.exit430.if.end.i.i438_crit_edge: ; preds = %v4l2_rect_set_max_size.exit430
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i438

if.then.i.i434:                                   ; preds = %v4l2_rect_set_max_size.exit430
  call void @__sanitizer_cov_trace_pc() #16
  %142 = ptrtoint ptr %width.i409 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %width.i409, align 4
  br label %if.end.i.i438

if.end.i.i438:                                    ; preds = %if.then.i.i434, %v4l2_rect_set_max_size.exit430.if.end.i.i438_crit_edge
  %143 = ptrtoint ptr %height.i413 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %height.i413, align 4
  %height4.i.i436 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 241, i32 3
  %145 = ptrtoint ptr %height4.i.i436 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %height4.i.i436, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %146)
  %cmp5.i.i437 = icmp ugt i32 %144, %146
  br i1 %cmp5.i.i437, label %if.then6.i.i439, label %if.end.i.i438.v4l2_rect_set_max_size.exit.i441_crit_edge

if.end.i.i438.v4l2_rect_set_max_size.exit.i441_crit_edge: ; preds = %if.end.i.i438
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_max_size.exit.i441

if.then6.i.i439:                                  ; preds = %if.end.i.i438
  call void @__sanitizer_cov_trace_pc() #16
  %147 = ptrtoint ptr %height.i413 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %height.i413, align 4
  br label %v4l2_rect_set_max_size.exit.i441

v4l2_rect_set_max_size.exit.i441:                 ; preds = %if.then6.i.i439, %if.end.i.i438.v4l2_rect_set_max_size.exit.i441_crit_edge
  %148 = ptrtoint ptr %crop_cap to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %crop_cap, align 4
  %150 = ptrtoint ptr %crop_bounds_cap104 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %crop_bounds_cap104, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %151)
  %cmp.i440 = icmp slt i32 %149, %151
  br i1 %cmp.i440, label %if.then.i442, label %v4l2_rect_set_max_size.exit.i441.if.end.i446_crit_edge

v4l2_rect_set_max_size.exit.i441.if.end.i446_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i441
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i446

if.then.i442:                                     ; preds = %v4l2_rect_set_max_size.exit.i441
  call void @__sanitizer_cov_trace_pc() #16
  %152 = ptrtoint ptr %crop_cap to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %crop_cap, align 4
  br label %if.end.i446

if.end.i446:                                      ; preds = %if.then.i442, %v4l2_rect_set_max_size.exit.i441.if.end.i446_crit_edge
  %top.i443 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239, i32 1
  %153 = ptrtoint ptr %top.i443 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %top.i443, align 4
  %top4.i444 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 241, i32 1
  %155 = ptrtoint ptr %top4.i444 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %top4.i444, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %156)
  %cmp5.i445 = icmp slt i32 %154, %156
  br i1 %cmp5.i445, label %if.then6.i447, label %if.end.i446.if.end9.i451_crit_edge

if.end.i446.if.end9.i451_crit_edge:               ; preds = %if.end.i446
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i451

if.then6.i447:                                    ; preds = %if.end.i446
  call void @__sanitizer_cov_trace_pc() #16
  %157 = ptrtoint ptr %top.i443 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %top.i443, align 4
  br label %if.end9.i451

if.end9.i451:                                     ; preds = %if.then6.i447, %if.end.i446.if.end9.i451_crit_edge
  %158 = ptrtoint ptr %crop_cap to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %crop_cap, align 4
  %160 = ptrtoint ptr %width.i409 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %width.i409, align 4
  %add.i448 = add i32 %161, %159
  %162 = ptrtoint ptr %crop_bounds_cap104 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %crop_bounds_cap104, align 4
  %164 = ptrtoint ptr %width1.i.i432 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %width1.i.i432, align 4
  %add13.i449 = add i32 %165, %163
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i448, i32 %add13.i449)
  %cmp14.i450 = icmp ugt i32 %add.i448, %add13.i449
  br i1 %cmp14.i450, label %if.then15.i453, label %if.end9.i451.if.end21.i457_crit_edge

if.end9.i451.if.end21.i457_crit_edge:             ; preds = %if.end9.i451
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i457

if.then15.i453:                                   ; preds = %if.end9.i451
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i452 = sub i32 %add13.i449, %161
  %166 = ptrtoint ptr %crop_cap to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %sub.i452, ptr %crop_cap, align 4
  br label %if.end21.i457

if.end21.i457:                                    ; preds = %if.then15.i453, %if.end9.i451.if.end21.i457_crit_edge
  %167 = ptrtoint ptr %top.i443 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %top.i443, align 4
  %169 = ptrtoint ptr %height.i413 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %height.i413, align 4
  %add23.i454 = add i32 %170, %168
  %171 = ptrtoint ptr %top4.i444 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %top4.i444, align 4
  %173 = ptrtoint ptr %height4.i.i436 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %height4.i.i436, align 4
  %add26.i455 = add i32 %174, %172
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i454, i32 %add26.i455)
  %cmp27.i456 = icmp ugt i32 %add23.i454, %add26.i455
  br i1 %cmp27.i456, label %if.then28.i459, label %if.end21.i457.if.end137_crit_edge

if.end21.i457.if.end137_crit_edge:                ; preds = %if.end21.i457
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end137

if.then28.i459:                                   ; preds = %if.end21.i457
  call void @__sanitizer_cov_trace_pc() #16
  %sub33.i458 = sub i32 %add26.i455, %170
  %175 = ptrtoint ptr %top.i443 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %sub33.i458, ptr %top.i443, align 4
  br label %if.end137

if.else107:                                       ; preds = %if.then48
  %has_crop_cap108 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 323
  %176 = ptrtoint ptr %has_crop_cap108 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %has_crop_cap108, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool109.not = icmp eq i8 %177, 0
  br i1 %tobool109.not, label %if.then122, label %land.lhs.true110

land.lhs.true110:                                 ; preds = %if.else107
  %has_compose_cap111 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 324
  %178 = ptrtoint ptr %has_compose_cap111 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %has_compose_cap111, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool112.not = icmp eq i8 %179, 0
  %mul115 = mul i32 %41, %factor.0
  br i1 %tobool112.not, label %if.then113, label %if.else123

if.then113:                                       ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #16
  %width1.i462 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239, i32 2
  %180 = ptrtoint ptr %width1.i462 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %38, ptr %width1.i462, align 4
  %height2.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239, i32 3
  %181 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %mul115, ptr %height2.i, align 4
  %crop_bounds_cap116 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 241
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %crop_cap, ptr noundef %crop_bounds_cap116)
  %182 = call ptr @memcpy(ptr %r, ptr %crop_cap, i32 16)
  %183 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %34, align 4
  %div118 = udiv i32 %184, %factor.0
  %185 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %33, align 4
  %width1.i465 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 2
  %187 = ptrtoint ptr %width1.i465 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %width1.i465, align 4
  %height2.i467 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 3
  %188 = ptrtoint ptr %height2.i467 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %div118, ptr %height2.i467, align 4
  br label %if.end137

if.then122:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @v4l2_rect_map_inside(ptr noundef %compose_cap, ptr noundef nonnull %r)
  br label %if.end137

if.else123:                                       ; preds = %land.lhs.true110
  %189 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %mul115, ptr %34, align 4
  %width.i468 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239, i32 2
  %190 = ptrtoint ptr %width.i468 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %width.i468, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %191, i32 %38)
  %cmp.i470 = icmp ugt i32 %191, %38
  br i1 %cmp.i470, label %if.then.i471, label %if.else123.if.end.i475_crit_edge

if.else123.if.end.i475_crit_edge:                 ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i475

if.then.i471:                                     ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #16
  %192 = ptrtoint ptr %width.i468 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %38, ptr %width.i468, align 4
  br label %if.end.i475

if.end.i475:                                      ; preds = %if.then.i471, %if.else123.if.end.i475_crit_edge
  %height.i472 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239, i32 3
  %193 = ptrtoint ptr %height.i472 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %height.i472, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %194, i32 %mul115)
  %cmp5.i474 = icmp ugt i32 %194, %mul115
  br i1 %cmp5.i474, label %if.then6.i476, label %if.end.i475.v4l2_rect_set_max_size.exit478_crit_edge

if.end.i475.v4l2_rect_set_max_size.exit478_crit_edge: ; preds = %if.end.i475
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_max_size.exit478

if.then6.i476:                                    ; preds = %if.end.i475
  call void @__sanitizer_cov_trace_pc() #16
  %195 = ptrtoint ptr %height.i472 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %mul115, ptr %height.i472, align 4
  br label %v4l2_rect_set_max_size.exit478

v4l2_rect_set_max_size.exit478:                   ; preds = %if.then6.i476, %if.end.i475.v4l2_rect_set_max_size.exit478_crit_edge
  %crop_bounds_cap126 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 241
  %196 = ptrtoint ptr %width.i468 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %width.i468, align 4
  %width1.i.i480 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 241, i32 2
  %198 = ptrtoint ptr %width1.i.i480 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %width1.i.i480, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %197, i32 %199)
  %cmp.i.i481 = icmp ugt i32 %197, %199
  br i1 %cmp.i.i481, label %if.then.i.i482, label %v4l2_rect_set_max_size.exit478.if.end.i.i486_crit_edge

v4l2_rect_set_max_size.exit478.if.end.i.i486_crit_edge: ; preds = %v4l2_rect_set_max_size.exit478
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i486

if.then.i.i482:                                   ; preds = %v4l2_rect_set_max_size.exit478
  call void @__sanitizer_cov_trace_pc() #16
  %200 = ptrtoint ptr %width.i468 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %width.i468, align 4
  br label %if.end.i.i486

if.end.i.i486:                                    ; preds = %if.then.i.i482, %v4l2_rect_set_max_size.exit478.if.end.i.i486_crit_edge
  %201 = ptrtoint ptr %height.i472 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %height.i472, align 4
  %height4.i.i484 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 241, i32 3
  %203 = ptrtoint ptr %height4.i.i484 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %height4.i.i484, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %202, i32 %204)
  %cmp5.i.i485 = icmp ugt i32 %202, %204
  br i1 %cmp5.i.i485, label %if.then6.i.i487, label %if.end.i.i486.v4l2_rect_set_max_size.exit.i489_crit_edge

if.end.i.i486.v4l2_rect_set_max_size.exit.i489_crit_edge: ; preds = %if.end.i.i486
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_max_size.exit.i489

if.then6.i.i487:                                  ; preds = %if.end.i.i486
  call void @__sanitizer_cov_trace_pc() #16
  %205 = ptrtoint ptr %height.i472 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %height.i472, align 4
  br label %v4l2_rect_set_max_size.exit.i489

v4l2_rect_set_max_size.exit.i489:                 ; preds = %if.then6.i.i487, %if.end.i.i486.v4l2_rect_set_max_size.exit.i489_crit_edge
  %206 = ptrtoint ptr %crop_cap to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %crop_cap, align 4
  %208 = ptrtoint ptr %crop_bounds_cap126 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %crop_bounds_cap126, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %209)
  %cmp.i488 = icmp slt i32 %207, %209
  br i1 %cmp.i488, label %if.then.i490, label %v4l2_rect_set_max_size.exit.i489.if.end.i494_crit_edge

v4l2_rect_set_max_size.exit.i489.if.end.i494_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i489
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i494

if.then.i490:                                     ; preds = %v4l2_rect_set_max_size.exit.i489
  call void @__sanitizer_cov_trace_pc() #16
  %210 = ptrtoint ptr %crop_cap to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %crop_cap, align 4
  br label %if.end.i494

if.end.i494:                                      ; preds = %if.then.i490, %v4l2_rect_set_max_size.exit.i489.if.end.i494_crit_edge
  %top.i491 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239, i32 1
  %211 = ptrtoint ptr %top.i491 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %top.i491, align 4
  %top4.i492 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 241, i32 1
  %213 = ptrtoint ptr %top4.i492 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %top4.i492, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %212, i32 %214)
  %cmp5.i493 = icmp slt i32 %212, %214
  br i1 %cmp5.i493, label %if.then6.i495, label %if.end.i494.if.end9.i499_crit_edge

if.end.i494.if.end9.i499_crit_edge:               ; preds = %if.end.i494
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i499

if.then6.i495:                                    ; preds = %if.end.i494
  call void @__sanitizer_cov_trace_pc() #16
  %215 = ptrtoint ptr %top.i491 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %214, ptr %top.i491, align 4
  br label %if.end9.i499

if.end9.i499:                                     ; preds = %if.then6.i495, %if.end.i494.if.end9.i499_crit_edge
  %216 = ptrtoint ptr %crop_cap to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %crop_cap, align 4
  %218 = ptrtoint ptr %width.i468 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %width.i468, align 4
  %add.i496 = add i32 %219, %217
  %220 = ptrtoint ptr %crop_bounds_cap126 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %crop_bounds_cap126, align 4
  %222 = ptrtoint ptr %width1.i.i480 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %width1.i.i480, align 4
  %add13.i497 = add i32 %223, %221
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i496, i32 %add13.i497)
  %cmp14.i498 = icmp ugt i32 %add.i496, %add13.i497
  br i1 %cmp14.i498, label %if.then15.i501, label %if.end9.i499.if.end21.i505_crit_edge

if.end9.i499.if.end21.i505_crit_edge:             ; preds = %if.end9.i499
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i505

if.then15.i501:                                   ; preds = %if.end9.i499
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i500 = sub i32 %add13.i497, %219
  %224 = ptrtoint ptr %crop_cap to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %sub.i500, ptr %crop_cap, align 4
  br label %if.end21.i505

if.end21.i505:                                    ; preds = %if.then15.i501, %if.end9.i499.if.end21.i505_crit_edge
  %225 = ptrtoint ptr %top.i491 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %top.i491, align 4
  %227 = ptrtoint ptr %height.i472 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %height.i472, align 4
  %add23.i502 = add i32 %228, %226
  %229 = ptrtoint ptr %top4.i492 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %top4.i492, align 4
  %231 = ptrtoint ptr %height4.i.i484 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %height4.i.i484, align 4
  %add26.i503 = add i32 %232, %230
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i502, i32 %add26.i503)
  %cmp27.i504 = icmp ugt i32 %add23.i502, %add26.i503
  br i1 %cmp27.i504, label %if.then28.i507, label %if.end21.i505.v4l2_rect_map_inside.exit508_crit_edge

if.end21.i505.v4l2_rect_map_inside.exit508_crit_edge: ; preds = %if.end21.i505
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_map_inside.exit508

if.then28.i507:                                   ; preds = %if.end21.i505
  call void @__sanitizer_cov_trace_pc() #16
  %sub33.i506 = sub i32 %add26.i503, %228
  %233 = ptrtoint ptr %top.i491 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %sub33.i506, ptr %top.i491, align 4
  br label %v4l2_rect_map_inside.exit508

v4l2_rect_map_inside.exit508:                     ; preds = %if.then28.i507, %if.end21.i505.v4l2_rect_map_inside.exit508_crit_edge
  %top127 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 1
  %234 = ptrtoint ptr %top127 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %top127, align 4
  %mul128 = mul i32 %235, %factor.0
  store i32 %mul128, ptr %top127, align 4
  %height129 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 3
  %236 = ptrtoint ptr %width.i468 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %width.i468, align 4
  %width1.i510 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 2
  %238 = ptrtoint ptr %width1.i510 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %237, ptr %width1.i510, align 4
  %239 = ptrtoint ptr %height.i472 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %height.i472, align 4
  %241 = ptrtoint ptr %height129 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %240, ptr %height129, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %237, i32 %38)
  %cmp.i.i515 = icmp ugt i32 %237, %38
  br i1 %cmp.i.i515, label %if.then.i.i516, label %v4l2_rect_map_inside.exit508.if.end.i.i520_crit_edge

v4l2_rect_map_inside.exit508.if.end.i.i520_crit_edge: ; preds = %v4l2_rect_map_inside.exit508
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i520

if.then.i.i516:                                   ; preds = %v4l2_rect_map_inside.exit508
  call void @__sanitizer_cov_trace_pc() #16
  %242 = ptrtoint ptr %width1.i510 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %38, ptr %width1.i510, align 4
  br label %if.end.i.i520

if.end.i.i520:                                    ; preds = %if.then.i.i516, %v4l2_rect_map_inside.exit508.if.end.i.i520_crit_edge
  %243 = ptrtoint ptr %height129 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %height129, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %244, i32 %mul115)
  %cmp5.i.i519 = icmp ugt i32 %244, %mul115
  br i1 %cmp5.i.i519, label %if.then6.i.i521, label %if.end.i.i520.v4l2_rect_set_max_size.exit.i523_crit_edge

if.end.i.i520.v4l2_rect_set_max_size.exit.i523_crit_edge: ; preds = %if.end.i.i520
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_max_size.exit.i523

if.then6.i.i521:                                  ; preds = %if.end.i.i520
  call void @__sanitizer_cov_trace_pc() #16
  %245 = ptrtoint ptr %height129 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %mul115, ptr %height129, align 4
  br label %v4l2_rect_set_max_size.exit.i523

v4l2_rect_set_max_size.exit.i523:                 ; preds = %if.then6.i.i521, %if.end.i.i520.v4l2_rect_set_max_size.exit.i523_crit_edge
  %246 = ptrtoint ptr %compose_cap to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %compose_cap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %cmp.i522 = icmp slt i32 %247, 0
  br i1 %cmp.i522, label %if.then.i524, label %v4l2_rect_set_max_size.exit.i523.if.end.i528_crit_edge

v4l2_rect_set_max_size.exit.i523.if.end.i528_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i523
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i528

if.then.i524:                                     ; preds = %v4l2_rect_set_max_size.exit.i523
  call void @__sanitizer_cov_trace_pc() #16
  %248 = ptrtoint ptr %compose_cap to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 0, ptr %compose_cap, align 4
  br label %if.end.i528

if.end.i528:                                      ; preds = %if.then.i524, %v4l2_rect_set_max_size.exit.i523.if.end.i528_crit_edge
  %249 = ptrtoint ptr %top127 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %top127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %cmp5.i527 = icmp slt i32 %250, 0
  br i1 %cmp5.i527, label %if.then6.i529, label %if.end.i528.if.end9.i533_crit_edge

if.end.i528.if.end9.i533_crit_edge:               ; preds = %if.end.i528
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i533

if.then6.i529:                                    ; preds = %if.end.i528
  call void @__sanitizer_cov_trace_pc() #16
  %251 = ptrtoint ptr %top127 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 0, ptr %top127, align 4
  br label %if.end9.i533

if.end9.i533:                                     ; preds = %if.then6.i529, %if.end.i528.if.end9.i533_crit_edge
  %252 = ptrtoint ptr %compose_cap to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %compose_cap, align 4
  %254 = ptrtoint ptr %width1.i510 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %width1.i510, align 4
  %add.i530 = add i32 %255, %253
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i530, i32 %38)
  %cmp14.i532 = icmp ugt i32 %add.i530, %38
  br i1 %cmp14.i532, label %if.then15.i535, label %if.end9.i533.if.end21.i539_crit_edge

if.end9.i533.if.end21.i539_crit_edge:             ; preds = %if.end9.i533
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i539

if.then15.i535:                                   ; preds = %if.end9.i533
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i534 = sub i32 %38, %255
  %256 = ptrtoint ptr %compose_cap to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %sub.i534, ptr %compose_cap, align 4
  br label %if.end21.i539

if.end21.i539:                                    ; preds = %if.then15.i535, %if.end9.i533.if.end21.i539_crit_edge
  %257 = ptrtoint ptr %top127 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %top127, align 4
  %259 = ptrtoint ptr %height129 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %height129, align 4
  %add23.i536 = add i32 %260, %258
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i536, i32 %mul115)
  %cmp27.i538 = icmp ugt i32 %add23.i536, %mul115
  br i1 %cmp27.i538, label %if.then28.i541, label %if.end21.i539.v4l2_rect_map_inside.exit542_crit_edge

if.end21.i539.v4l2_rect_map_inside.exit542_crit_edge: ; preds = %if.end21.i539
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_map_inside.exit542

if.then28.i541:                                   ; preds = %if.end21.i539
  call void @__sanitizer_cov_trace_pc() #16
  %sub33.i540 = sub i32 %mul115, %260
  %261 = ptrtoint ptr %top127 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %sub33.i540, ptr %top127, align 4
  br label %v4l2_rect_map_inside.exit542

v4l2_rect_map_inside.exit542:                     ; preds = %if.then28.i541, %if.end21.i539.v4l2_rect_map_inside.exit542_crit_edge
  %262 = ptrtoint ptr %top127 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %top127, align 4
  %div132 = udiv i32 %263, %factor.0
  store i32 %div132, ptr %top127, align 4
  %264 = ptrtoint ptr %height129 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %height129, align 4
  %div134 = udiv i32 %265, %factor.0
  store i32 %div134, ptr %height129, align 4
  br label %if.end137

if.end137:                                        ; preds = %v4l2_rect_map_inside.exit542, %if.then122, %if.then113, %if.then28.i459, %if.end21.i457.if.end137_crit_edge, %if.then28.i407, %if.end21.i405.if.end137_crit_edge, %if.end57.if.end137_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %r) #14
  br label %if.end171

land.lhs.true145:                                 ; preds = %for.cond.preheader
  %266 = ptrtoint ptr %height148 to i32
  call void @__asan_loadN_noabort(i32 %266, i32 4)
  %267 = load i32, ptr %height148, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %267)
  %cmp149 = icmp eq i32 %267, 180
  br i1 %cmp149, label %land.lhs.true145.for.end_crit_edge, label %land.lhs.true145.for.inc.5_crit_edge

land.lhs.true145.for.inc.5_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

land.lhs.true145.for.end_crit_edge:               ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.lhs.true145.1:                               ; preds = %for.cond.preheader
  %268 = ptrtoint ptr %height148 to i32
  call void @__asan_loadN_noabort(i32 %268, i32 4)
  %269 = load i32, ptr %height148, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 360, i32 %269)
  %cmp149.1 = icmp eq i32 %269, 360
  br i1 %cmp149.1, label %land.lhs.true145.1.for.end_crit_edge, label %land.lhs.true145.2

land.lhs.true145.1.for.end_crit_edge:             ; preds = %land.lhs.true145.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.lhs.true145.2:                               ; preds = %land.lhs.true145.1
  %270 = ptrtoint ptr %height148 to i32
  call void @__asan_loadN_noabort(i32 %270, i32 4)
  %271 = load i32, ptr %height148, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %271)
  %cmp149.2 = icmp eq i32 %271, 480
  br i1 %cmp149.2, label %land.lhs.true145.2.for.end_crit_edge, label %land.lhs.true145.2.for.inc.5_crit_edge

land.lhs.true145.2.for.inc.5_crit_edge:           ; preds = %land.lhs.true145.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

land.lhs.true145.2.for.end_crit_edge:             ; preds = %land.lhs.true145.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.lhs.true145.3:                               ; preds = %for.cond.preheader
  %272 = ptrtoint ptr %height148 to i32
  call void @__asan_loadN_noabort(i32 %272, i32 4)
  %273 = load i32, ptr %height148, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %273)
  %cmp149.3 = icmp eq i32 %273, 720
  br i1 %cmp149.3, label %land.lhs.true145.3.for.end_crit_edge, label %land.lhs.true145.3.for.inc.5_crit_edge

land.lhs.true145.3.for.inc.5_crit_edge:           ; preds = %land.lhs.true145.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

land.lhs.true145.3.for.end_crit_edge:             ; preds = %land.lhs.true145.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.lhs.true145.4:                               ; preds = %for.cond.preheader
  %274 = ptrtoint ptr %height148 to i32
  call void @__asan_loadN_noabort(i32 %274, i32 4)
  %275 = load i32, ptr %height148, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1080, i32 %275)
  %cmp149.4 = icmp eq i32 %275, 1080
  br i1 %cmp149.4, label %land.lhs.true145.4.for.end_crit_edge, label %land.lhs.true145.4.for.inc.5_crit_edge

land.lhs.true145.4.for.inc.5_crit_edge:           ; preds = %land.lhs.true145.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

land.lhs.true145.4.for.end_crit_edge:             ; preds = %land.lhs.true145.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.lhs.true145.5:                               ; preds = %for.cond.preheader
  %276 = ptrtoint ptr %height148 to i32
  call void @__asan_loadN_noabort(i32 %276, i32 4)
  %277 = load i32, ptr %height148, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2160, i32 %277)
  %cmp149.5 = icmp eq i32 %277, 2160
  br i1 %cmp149.5, label %land.lhs.true145.5.for.end_crit_edge, label %land.lhs.true145.5.for.inc.5_crit_edge

land.lhs.true145.5.for.inc.5_crit_edge:           ; preds = %land.lhs.true145.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

land.lhs.true145.5.for.end_crit_edge:             ; preds = %land.lhs.true145.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.5:                                        ; preds = %land.lhs.true145.5.for.inc.5_crit_edge, %land.lhs.true145.4.for.inc.5_crit_edge, %land.lhs.true145.3.for.inc.5_crit_edge, %land.lhs.true145.2.for.inc.5_crit_edge, %land.lhs.true145.for.inc.5_crit_edge, %for.cond.preheader.for.inc.5_crit_edge
  br label %for.end

for.end:                                          ; preds = %for.inc.5, %land.lhs.true145.5.for.end_crit_edge, %land.lhs.true145.4.for.end_crit_edge, %land.lhs.true145.3.for.end_crit_edge, %land.lhs.true145.2.for.end_crit_edge, %land.lhs.true145.1.for.end_crit_edge, %land.lhs.true145.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %land.lhs.true145.for.end_crit_edge ], [ 1, %land.lhs.true145.1.for.end_crit_edge ], [ 2, %land.lhs.true145.2.for.end_crit_edge ], [ 3, %land.lhs.true145.3.for.end_crit_edge ], [ 4, %land.lhs.true145.4.for.end_crit_edge ], [ 5, %land.lhs.true145.5.for.end_crit_edge ], [ 6, %for.inc.5 ]
  %webcam_size_idx = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 182
  %278 = ptrtoint ptr %webcam_size_idx to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %i.0.lcssa, ptr %webcam_size_idx, align 8
  %webcam_ival_idx = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 183
  %279 = ptrtoint ptr %webcam_ival_idx to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %webcam_ival_idx, align 4
  %.neg = mul nsw i32 %i.0.lcssa, -2
  %mul152 = add nsw i32 %.neg, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %280, i32 %mul152)
  %cmp153.not = icmp ult i32 %280, %mul152
  br i1 %cmp153.not, label %for.end.if.end159_crit_edge, label %if.then154

for.end.if.end159_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end159

if.then154:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub157 = add nsw i32 %.neg, 11
  %281 = ptrtoint ptr %webcam_ival_idx to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %sub157, ptr %webcam_ival_idx, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then154, %for.end.if.end159_crit_edge
  tail call void @vivid_update_format_cap(ptr noundef %1, i1 noundef zeroext false)
  br label %if.end171

if.else160:                                       ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #16
  %282 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %282, i32 4)
  %283 = load i32, ptr %fmt, align 1
  %height167 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %284 = ptrtoint ptr %height167 to i32
  call void @__asan_loadN_noabort(i32 %284, i32 4)
  %285 = load i32, ptr %height167, align 1
  %width1.i547 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 2
  %286 = ptrtoint ptr %width1.i547 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %283, ptr %width1.i547, align 4
  %height2.i549 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 3
  %287 = ptrtoint ptr %height2.i549 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %285, ptr %height2.i549, align 4
  %mul169 = mul i32 %285, %factor.0
  %width1.i551 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239, i32 2
  %288 = ptrtoint ptr %width1.i551 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %283, ptr %width1.i551, align 4
  %height2.i553 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239, i32 3
  %289 = ptrtoint ptr %height2.i553 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %mul169, ptr %height2.i553, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.else160, %if.end159, %if.end137
  %290 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %290, i32 4)
  %291 = load i32, ptr %fmt, align 1
  %width173 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 238, i32 2
  %292 = ptrtoint ptr %width173 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %291, ptr %width173, align 4
  %height174 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %293 = ptrtoint ptr %height174 to i32
  call void @__asan_loadN_noabort(i32 %293, i32 4)
  %294 = load i32, ptr %height174, align 1
  %height176 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 238, i32 3
  %295 = ptrtoint ptr %height176 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %294, ptr %height176, align 4
  %tpg = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231
  %296 = load i32, ptr %height174, align 1
  %buf_height.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 2
  %297 = ptrtoint ptr %buf_height.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %296, ptr %buf_height.i, align 4
  %298 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %fmt_cap, align 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %299, align 4
  %call180 = tail call zeroext i1 @tpg_s_fourcc(ptr noundef %tpg, i32 noundef %301) #14
  %buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 33
  %302 = ptrtoint ptr %buffers.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %303)
  %cmp184565.not = icmp eq i32 %303, 0
  br i1 %cmp184565.not, label %if.end171.for.end190_crit_edge, label %for.body185.lr.ph

if.end171.for.end190_crit_edge:                   ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end190

for.body185.lr.ph:                                ; preds = %if.end171
  %interleaved.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 35
  %planes.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 34
  %twopixelsize.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 42
  %bytesperline11.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 43
  %arrayidx14.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 43, i32 1
  br label %for.body185

for.body185:                                      ; preds = %tpg_s_bytesperline.exit.for.body185_crit_edge, %for.body185.lr.ph
  %304 = phi i32 [ %303, %for.body185.lr.ph ], [ %323, %tpg_s_bytesperline.exit.for.body185_crit_edge ]
  %p.0566 = phi i32 [ 0, %for.body185.lr.ph ], [ %inc189, %tpg_s_bytesperline.exit.for.body185_crit_edge ]
  %bytesperline = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %p.0566, i32 1
  %305 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %305, i32 4)
  %306 = load i32, ptr %bytesperline, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %304)
  %cmp.i555 = icmp ugt i32 %304, 1
  br i1 %cmp.i555, label %if.then.i557, label %for.body185.for.cond.i_crit_edge

for.body185.for.cond.i_crit_edge:                 ; preds = %for.body185
  br label %for.cond.i

if.then.i557:                                     ; preds = %for.body185
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i556 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 43, i32 %p.0566
  %307 = ptrtoint ptr %arrayidx.i556 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %306, ptr %arrayidx.i556, align 4
  br label %tpg_s_bytesperline.exit

for.cond.i:                                       ; preds = %for.body.i, %for.body185.for.cond.i_crit_edge
  %p.0.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.body185.for.cond.i_crit_edge ]
  %308 = ptrtoint ptr %interleaved.i.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %interleaved.i.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %309)
  %tobool.not.i.i = icmp eq i8 %309, 0
  br i1 %tobool.not.i.i, label %tpg_g_planes.exit.thread.i, label %tpg_g_planes.exit.i

tpg_g_planes.exit.i:                              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p.0.i)
  %cmp1.i = icmp eq i32 %p.0.i, 0
  br i1 %cmp1.i, label %tpg_g_planes.exit.i.for.body.i_crit_edge, label %if.then10.i

tpg_g_planes.exit.i.for.body.i_crit_edge:         ; preds = %tpg_g_planes.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

tpg_g_planes.exit.thread.i:                       ; preds = %for.cond.i
  %310 = ptrtoint ptr %planes.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %planes.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %p.0.i, i32 %311)
  %cmp132.i = icmp ult i32 %p.0.i, %311
  br i1 %cmp132.i, label %tpg_g_planes.exit.thread.i.for.body.i_crit_edge, label %tpg_g_planes.exit.thread.i.tpg_s_bytesperline.exit_crit_edge

tpg_g_planes.exit.thread.i.tpg_s_bytesperline.exit_crit_edge: ; preds = %tpg_g_planes.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tpg_s_bytesperline.exit

tpg_g_planes.exit.thread.i.for.body.i_crit_edge:  ; preds = %tpg_g_planes.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i:                                       ; preds = %tpg_g_planes.exit.thread.i.for.body.i_crit_edge, %tpg_g_planes.exit.i.for.body.i_crit_edge
  %arrayidx2.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 42, i32 %p.0.i
  %312 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %arrayidx2.i, align 4
  %mul.i = mul i32 %313, %306
  %314 = ptrtoint ptr %twopixelsize.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %twopixelsize.i, align 4
  %div.i = udiv i32 %mul.i, %315
  %arrayidx5.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 37, i32 %p.0.i
  %316 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx5.i, align 1
  %conv.i = zext i8 %317 to i32
  %div6.i = udiv i32 %div.i, %conv.i
  %arrayidx8.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 43, i32 %p.0.i
  %318 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %div6.i, ptr %arrayidx8.i, align 4
  %inc.i = add nuw i32 %p.0.i, 1
  br label %for.cond.i

if.then10.i:                                      ; preds = %tpg_g_planes.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %319 = ptrtoint ptr %bytesperline11.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %bytesperline11.i, align 4
  %321 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %320, ptr %arrayidx14.i, align 4
  br label %tpg_s_bytesperline.exit

tpg_s_bytesperline.exit:                          ; preds = %if.then10.i, %tpg_g_planes.exit.thread.i.tpg_s_bytesperline.exit_crit_edge, %if.then.i557
  %inc189 = add nuw i32 %p.0566, 1
  %322 = ptrtoint ptr %buffers.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %buffers.i, align 4
  %cmp184 = icmp ult i32 %inc189, %323
  br i1 %cmp184, label %tpg_s_bytesperline.exit.for.body185_crit_edge, label %tpg_s_bytesperline.exit.for.end190_crit_edge

tpg_s_bytesperline.exit.for.end190_crit_edge:     ; preds = %tpg_s_bytesperline.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end190

tpg_s_bytesperline.exit.for.body185_crit_edge:    ; preds = %tpg_s_bytesperline.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body185

for.end190:                                       ; preds = %tpg_s_bytesperline.exit.for.end190_crit_edge, %if.end171.for.end190_crit_edge
  %324 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %324, i32 4)
  %325 = load i32, ptr %field, align 1
  %field_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 236
  %326 = ptrtoint ptr %field_cap to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %325, ptr %field_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %325)
  %cmp193 = icmp eq i32 %325, 7
  %spec.select = select i1 %cmp193, i32 2, i32 %325
  %spec.select577 = zext i1 %cmp193 to i8
  %327 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 4
  %328 = ptrtoint ptr %327 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %spec.select, ptr %327, align 4
  %329 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 5
  %330 = ptrtoint ptr %329 to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 %spec.select577, ptr %329, align 4
  tail call void @tpg_s_crop_compose(ptr noundef %tpg, ptr noundef %crop_cap, ptr noundef %compose_cap) #14
  %331 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %input.i, align 4
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %332
  %333 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %arrayidx.i.i, align 1
  %335 = add i8 %334, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %335)
  %336 = icmp ult i8 %335, 2
  br i1 %336, label %if.then204, label %for.end190.if.end206_crit_edge

for.end190.if.end206_crit_edge:                   ; preds = %for.end190
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end206

if.then204:                                       ; preds = %for.end190
  call void @__sanitizer_cov_trace_pc() #16
  %337 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %337, i32 4)
  %338 = load i32, ptr %field, align 1
  %tv_field_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 186
  %339 = ptrtoint ptr %tv_field_cap to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %338, ptr %tv_field_cap, align 8
  br label %if.end206

if.end206:                                        ; preds = %if.then204, %for.end190.if.end206_crit_edge
  tail call void @tpg_update_mv_step(ptr noundef %tpg) #14
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %340 = ptrtoint ptr %colorspace to i32
  call void @__asan_loadN_noabort(i32 %340, i32 4)
  %341 = load i32, ptr %colorspace, align 1
  %colorspace209 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 20
  %342 = ptrtoint ptr %colorspace209 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %341, ptr %colorspace209, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %343 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %xfer_func, align 1
  %conv = zext i8 %344 to i32
  %xfer_func211 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 21
  %345 = ptrtoint ptr %xfer_func211 to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %conv, ptr %xfer_func211, align 4
  %346 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %fmt_cap, align 4
  %color_enc = getelementptr inbounds %struct.vivid_fmt, ptr %347, i32 0, i32 1
  %348 = ptrtoint ptr %color_enc to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %color_enc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %349)
  %cmp213 = icmp eq i32 %349, 1
  %350 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %350, align 1
  %conv216 = zext i8 %352 to i32
  %hsv_enc = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 23
  %ycbcr_enc = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 22
  %hsv_enc.sink = select i1 %cmp213, ptr %ycbcr_enc, ptr %hsv_enc
  %353 = ptrtoint ptr %hsv_enc.sink to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 %conv216, ptr %hsv_enc.sink, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %354 = ptrtoint ptr %quantization to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %quantization, align 1
  %conv222 = zext i8 %355 to i32
  %quantization224 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 27
  %356 = ptrtoint ptr %quantization224 to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 %conv222, ptr %quantization224, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end206, %do.end21, %do.body16.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end206 ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ], [ -16, %do.end21 ], [ -16, %do.body16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @v4l2_rect_map_inside(ptr nocapture noundef %r, ptr nocapture noundef readonly %boundary) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %width.i = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 2
  %0 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width.i, align 4
  %width1.i = getelementptr inbounds %struct.v4l2_rect, ptr %boundary, i32 0, i32 2
  %2 = ptrtoint ptr %width1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp ugt i32 %1, %3
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %width.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %height.i = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 3
  %5 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height.i, align 4
  %height4.i = getelementptr inbounds %struct.v4l2_rect, ptr %boundary, i32 0, i32 3
  %7 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp5.i = icmp ugt i32 %6, %8
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i.v4l2_rect_set_max_size.exit_crit_edge

if.end.i.v4l2_rect_set_max_size.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_max_size.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %height.i, align 4
  br label %v4l2_rect_set_max_size.exit

v4l2_rect_set_max_size.exit:                      ; preds = %if.then6.i, %if.end.i.v4l2_rect_set_max_size.exit_crit_edge
  %10 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r, align 4
  %12 = ptrtoint ptr %boundary to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %boundary, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp = icmp slt i32 %11, %13
  br i1 %cmp, label %if.then, label %v4l2_rect_set_max_size.exit.if.end_crit_edge

v4l2_rect_set_max_size.exit.if.end_crit_edge:     ; preds = %v4l2_rect_set_max_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %v4l2_rect_set_max_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %v4l2_rect_set_max_size.exit.if.end_crit_edge
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 1
  %15 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %top, align 4
  %top4 = getelementptr inbounds %struct.v4l2_rect, ptr %boundary, i32 0, i32 1
  %17 = ptrtoint ptr %top4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %top4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp5 = icmp slt i32 %16, %18
  br i1 %cmp5, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %top, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %20 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %r, align 4
  %22 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width.i, align 4
  %add = add i32 %23, %21
  %24 = ptrtoint ptr %boundary to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %boundary, align 4
  %26 = ptrtoint ptr %width1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %width1.i, align 4
  %add13 = add i32 %27, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add13)
  %cmp14 = icmp ugt i32 %add, %add13
  br i1 %cmp14, label %if.then15, label %if.end9.if.end21_crit_edge

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i32 %add13, %23
  %28 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub, ptr %r, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end9.if.end21_crit_edge
  %29 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %top, align 4
  %31 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height.i, align 4
  %add23 = add i32 %32, %30
  %33 = ptrtoint ptr %top4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %top4, align 4
  %35 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height4.i, align 4
  %add26 = add i32 %36, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %add26)
  %cmp27 = icmp ugt i32 %add23, %add26
  br i1 %cmp27, label %if.then28, label %if.end21.if.end35_crit_edge

if.end21.if.end35_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %sub33 = sub i32 %add26, %32
  %37 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub33, ptr %top, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %if.end21.if.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tpg_s_fourcc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_s_crop_compose(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_vid_cap_mplane(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multiplanar, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 @vivid_g_fmt_vid_cap(ptr noundef %file, ptr undef, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_try_fmt_vid_cap_mplane(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multiplanar, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 @vivid_try_fmt_vid_cap(ptr noundef %file, ptr undef, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_vid_cap_mplane(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multiplanar, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 @vivid_s_fmt_vid_cap(ptr noundef %file, ptr undef, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multiplanar, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 @fmt_sp2mp_func(ptr noundef %file, ptr noundef %priv, ptr noundef %f, ptr noundef nonnull @vivid_g_fmt_vid_cap) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fmt_sp2mp_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multiplanar, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 @fmt_sp2mp_func(ptr noundef %file, ptr noundef %priv, ptr noundef %f, ptr noundef nonnull @vivid_try_fmt_vid_cap) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multiplanar, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 @fmt_sp2mp_func(ptr noundef %file, ptr noundef %priv, ptr noundef %f, ptr noundef nonnull @vivid_s_fmt_vid_cap) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_g_selection(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %sel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %has_crop_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 323
  %2 = ptrtoint ptr %has_crop_cap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_crop_cap, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %has_compose_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 324
  %4 = ptrtoint ptr %has_compose_cap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_compose_cap, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %input.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %8 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %input.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.i = icmp eq i8 %11, 0
  br i1 %cmp.i, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %top, align 4
  %13 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %r, align 4
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %14 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %target, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %15, label %if.end6.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end6.sw.bb13_crit_edge
    i32 2, label %if.end6.sw.bb13_crit_edge56
    i32 258, label %sw.bb19
    i32 256, label %sw.bb25
    i32 257, label %sw.bb31
  ]

if.end6.sw.bb13_crit_edge56:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb13

if.end6.sw.bb13_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  %17 = ptrtoint ptr %has_crop_cap to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_crop_cap, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool9.not = icmp eq i8 %18, 0
  br i1 %tobool9.not, label %sw.bb.cleanup_crit_edge, label %if.end11

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %crop_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239
  %19 = call ptr @memcpy(ptr %r, ptr %crop_cap, i32 16)
  br label %cleanup

sw.bb13:                                          ; preds = %if.end6.sw.bb13_crit_edge, %if.end6.sw.bb13_crit_edge56
  %20 = ptrtoint ptr %has_crop_cap to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %has_crop_cap, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool15.not = icmp eq i8 %21, 0
  br i1 %tobool15.not, label %sw.bb13.cleanup_crit_edge, label %if.end17

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end17:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #16
  %src_rect = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 237
  %22 = call ptr @memcpy(ptr %r, ptr %src_rect, i32 16)
  br label %cleanup

sw.bb19:                                          ; preds = %if.end6
  %has_compose_cap20 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 324
  %23 = ptrtoint ptr %has_compose_cap20 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %has_compose_cap20, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool21.not = icmp eq i8 %24, 0
  br i1 %tobool21.not, label %sw.bb19.cleanup_crit_edge, label %if.end23

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #16
  %25 = call ptr @memcpy(ptr %r, ptr @vivid_max_rect, i32 16)
  br label %cleanup

sw.bb25:                                          ; preds = %if.end6
  %has_compose_cap26 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 324
  %26 = ptrtoint ptr %has_compose_cap26 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %has_compose_cap26, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool27.not = icmp eq i8 %27, 0
  br i1 %tobool27.not, label %sw.bb25.cleanup_crit_edge, label %if.end29

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end29:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #16
  %compose_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240
  %28 = call ptr @memcpy(ptr %r, ptr %compose_cap, i32 16)
  br label %cleanup

sw.bb31:                                          ; preds = %if.end6
  %has_compose_cap32 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 324
  %29 = ptrtoint ptr %has_compose_cap32 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %has_compose_cap32, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool33.not = icmp eq i8 %30, 0
  br i1 %tobool33.not, label %sw.bb31.cleanup_crit_edge, label %if.end35

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end35:                                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #16
  %fmt_cap_rect = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 238
  %31 = call ptr @memcpy(ptr %r, ptr %fmt_cap_rect, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %sw.bb31.cleanup_crit_edge, %if.end29, %sw.bb25.cleanup_crit_edge, %if.end23, %sw.bb19.cleanup_crit_edge, %if.end17, %sw.bb13.cleanup_crit_edge, %if.end11, %sw.bb.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -61, %if.end3.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb13.cleanup_crit_edge ], [ -22, %sw.bb19.cleanup_crit_edge ], [ -22, %sw.bb25.cleanup_crit_edge ], [ -22, %sw.bb31.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ 0, %if.end35 ], [ 0, %if.end29 ], [ 0, %if.end23 ], [ 0, %if.end17 ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_s_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %crop_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239
  %compose_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240
  %field_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 236
  %2 = ptrtoint ptr %field_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %field_cap, align 8
  %switch.tableidx = add i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 6
  br i1 %4, label %switch.lookup, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.vivid_vid_cap_s_selection, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep543 = getelementptr inbounds [6 x i32], ptr @switch.table.vivid_vid_cap_s_selection.47, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep543 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load544 = load i32, ptr %switch.gep543, align 4
  br label %lor.end

lor.end:                                          ; preds = %switch.lookup, %entry.lor.end_crit_edge
  %7 = phi i32 [ 0, %entry.lor.end_crit_edge ], [ %switch.load, %switch.lookup ]
  %8 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %switch.load544, %switch.lookup ]
  %has_crop_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 323
  %9 = ptrtoint ptr %has_crop_cap to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %has_crop_cap, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.end.if.end_crit_edge

lor.end.if.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %lor.end
  %has_compose_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 324
  %11 = ptrtoint ptr %has_compose_cap to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %has_compose_cap, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not = icmp eq i8 %12, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup215_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.cleanup215_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup215

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.end.if.end_crit_edge
  %13 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp6.not = icmp eq i32 %14, 1
  br i1 %cmp6.not, label %if.end8, label %if.end.cleanup215_crit_edge

if.end.cleanup215_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup215

if.end8:                                          ; preds = %if.end
  %input.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %15 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %input.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.i = icmp eq i8 %18, 0
  br i1 %cmp.i, label %if.end8.cleanup215_crit_edge, label %if.end11

if.end8.cleanup215_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup215

if.end11:                                         ; preds = %if.end8
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %19 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %target, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %20, label %if.end11.cleanup215_crit_edge [
    i32 0, label %sw.bb
    i32 256, label %sw.bb109
  ]

if.end11.cleanup215_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup215

sw.bb:                                            ; preds = %if.end11
  br i1 %tobool.not, label %sw.bb.cleanup215_crit_edge, label %if.end15

sw.bb.cleanup215_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup215

if.end15:                                         ; preds = %sw.bb
  %flags = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 2
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %call16 = tail call i32 @vivid_vid_adjust_sel(i32 noundef %23, ptr noundef %r) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup215_crit_edge

if.end15.cleanup215_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup215

if.end19:                                         ; preds = %if.end15
  %width.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 2) to i32))
  %26 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %26)
  %cmp.i351 = icmp ult i32 %25, %26
  br i1 %cmp.i351, label %if.then.i, label %if.end19.if.end.i_crit_edge

if.end19.if.end.i_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %width.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end19.if.end.i_crit_edge
  %height.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 3) to i32))
  %30 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %30)
  %cmp5.i = icmp ult i32 %29, %30
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i.v4l2_rect_set_min_size.exit_crit_edge

if.end.i.v4l2_rect_set_min_size.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_min_size.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %height.i, align 4
  br label %v4l2_rect_set_min_size.exit

v4l2_rect_set_min_size.exit:                      ; preds = %if.then6.i, %if.end.i.v4l2_rect_set_min_size.exit_crit_edge
  %32 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %width.i, align 4
  %width1.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 237, i32 2
  %34 = ptrtoint ptr %width1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %width1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp.i353 = icmp ugt i32 %33, %35
  br i1 %cmp.i353, label %if.then.i354, label %v4l2_rect_set_min_size.exit.if.end.i357_crit_edge

v4l2_rect_set_min_size.exit.if.end.i357_crit_edge: ; preds = %v4l2_rect_set_min_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i357

if.then.i354:                                     ; preds = %v4l2_rect_set_min_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %width.i, align 4
  br label %if.end.i357

if.end.i357:                                      ; preds = %if.then.i354, %v4l2_rect_set_min_size.exit.if.end.i357_crit_edge
  %37 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height.i, align 4
  %height4.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 237, i32 3
  %39 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp5.i356 = icmp ugt i32 %38, %40
  br i1 %cmp5.i356, label %if.then6.i358, label %if.end.i357.v4l2_rect_set_max_size.exit_crit_edge

if.end.i357.v4l2_rect_set_max_size.exit_crit_edge: ; preds = %if.end.i357
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_max_size.exit

if.then6.i358:                                    ; preds = %if.end.i357
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %height.i, align 4
  br label %v4l2_rect_set_max_size.exit

v4l2_rect_set_max_size.exit:                      ; preds = %if.then6.i358, %if.end.i357.v4l2_rect_set_max_size.exit_crit_edge
  %crop_bounds_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 241
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %r, ptr noundef %crop_bounds_cap)
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %top, align 4
  %div346 = lshr i32 %43, %7
  store i32 %div346, ptr %top, align 4
  %44 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height.i, align 4
  %div25347 = lshr i32 %45, %7
  store i32 %div25347, ptr %height.i, align 4
  %has_scaler_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 325
  %46 = ptrtoint ptr %has_scaler_cap to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %has_scaler_cap, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool26.not = icmp eq i8 %47, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %v4l2_rect_set_max_size.exit
  %fmt_cap_rect = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 238
  %48 = ptrtoint ptr %fmt_cap_rect to i32
  call void @__asan_load4_noabort(i32 %48)
  %fmt.sroa.0.0.copyload = load i32, ptr %fmt_cap_rect, align 4
  %fmt.sroa.6.0.fmt_cap_rect.sroa_idx = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 238, i32 1
  %49 = ptrtoint ptr %fmt.sroa.6.0.fmt_cap_rect.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %49)
  %fmt.sroa.6.0.copyload = load i32, ptr %fmt.sroa.6.0.fmt_cap_rect.sroa_idx, align 4
  %fmt.sroa.7.0.fmt_cap_rect.sroa_idx = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 238, i32 2
  %50 = ptrtoint ptr %fmt.sroa.7.0.fmt_cap_rect.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %50)
  %fmt.sroa.7.0.copyload = load i32, ptr %fmt.sroa.7.0.fmt_cap_rect.sroa_idx, align 4
  %fmt.sroa.13.0.fmt_cap_rect.sroa_idx = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 238, i32 3
  %51 = ptrtoint ptr %fmt.sroa.13.0.fmt_cap_rect.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %51)
  %fmt.sroa.13.0.copyload = load i32, ptr %fmt.sroa.13.0.fmt_cap_rect.sroa_idx, align 4
  %52 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %width.i, align 4
  %mul = shl i32 %53, 2
  %mul34 = shl i32 %div25347, 2
  %div40348 = lshr i32 %53, 2
  %div44349 = lshr i32 %div25347, 2
  %54 = tail call i32 @llvm.umax.i32(i32 %fmt.sroa.7.0.copyload, i32 %div40348)
  %55 = tail call i32 @llvm.umax.i32(i32 %fmt.sroa.13.0.copyload, i32 %div44349)
  %has_compose_cap45 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 324
  %56 = ptrtoint ptr %has_compose_cap45 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %has_compose_cap45, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool46.not = icmp eq i8 %57, 0
  %58 = tail call i32 @llvm.umin.i32(i32 %54, i32 %mul)
  %59 = tail call i32 @llvm.umin.i32(i32 %55, i32 %mul34)
  %fmt.sroa.7.2 = select i1 %tobool46.not, i32 %58, i32 %54
  %fmt.sroa.13.2 = select i1 %tobool46.not, i32 %59, i32 %55
  call void @__sanitizer_cov_trace_cmp4(i32 %fmt.sroa.7.0.copyload, i32 %fmt.sroa.7.2)
  %cmp.i381 = icmp eq i32 %fmt.sroa.7.0.copyload, %fmt.sroa.7.2
  br i1 %cmp.i381, label %v4l2_rect_same_size.exit, label %if.then27.land.lhs.true51_crit_edge

if.then27.land.lhs.true51_crit_edge:              ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true51

v4l2_rect_same_size.exit:                         ; preds = %if.then27
  %60 = ptrtoint ptr %fmt.sroa.13.0.fmt_cap_rect.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fmt.sroa.13.0.fmt_cap_rect.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %fmt.sroa.13.2)
  %cmp3.i = icmp eq i32 %61, %fmt.sroa.13.2
  br i1 %cmp3.i, label %v4l2_rect_same_size.exit.if.end54_crit_edge, label %v4l2_rect_same_size.exit.land.lhs.true51_crit_edge

v4l2_rect_same_size.exit.land.lhs.true51_crit_edge: ; preds = %v4l2_rect_same_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true51

v4l2_rect_same_size.exit.if.end54_crit_edge:      ; preds = %v4l2_rect_same_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

land.lhs.true51:                                  ; preds = %v4l2_rect_same_size.exit.land.lhs.true51_crit_edge, %if.then27.land.lhs.true51_crit_edge
  %num_buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 242, i32 21
  %62 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i383.not = icmp eq i32 %63, 0
  br i1 %cmp.i383.not, label %land.lhs.true51.if.end54_crit_edge, label %land.lhs.true51.cleanup215_crit_edge

land.lhs.true51.cleanup215_crit_edge:             ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup215

land.lhs.true51.if.end54_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.end54:                                         ; preds = %land.lhs.true51.if.end54_crit_edge, %v4l2_rect_same_size.exit.if.end54_crit_edge
  br i1 %tobool46.not, label %if.end54.if.end58_crit_edge, label %if.then57

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then57:                                        ; preds = %if.end54
  %width.i384 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 2
  %64 = ptrtoint ptr %width.i384 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %width.i384, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %div40348)
  %cmp.i386 = icmp ult i32 %65, %div40348
  br i1 %cmp.i386, label %if.then.i387, label %if.then57.if.end.i391_crit_edge

if.then57.if.end.i391_crit_edge:                  ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i391

if.then.i387:                                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  %66 = ptrtoint ptr %width.i384 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %div40348, ptr %width.i384, align 4
  br label %if.end.i391

if.end.i391:                                      ; preds = %if.then.i387, %if.then57.if.end.i391_crit_edge
  %height.i388 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 3
  %67 = ptrtoint ptr %height.i388 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %height.i388, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %div44349)
  %cmp5.i390 = icmp ult i32 %68, %div44349
  br i1 %cmp5.i390, label %if.then6.i392, label %if.end.i391.v4l2_rect_set_min_size.exit393_crit_edge

if.end.i391.v4l2_rect_set_min_size.exit393_crit_edge: ; preds = %if.end.i391
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_min_size.exit393

if.then6.i392:                                    ; preds = %if.end.i391
  call void @__sanitizer_cov_trace_pc() #16
  %69 = ptrtoint ptr %height.i388 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %div44349, ptr %height.i388, align 4
  br label %v4l2_rect_set_min_size.exit393

v4l2_rect_set_min_size.exit393:                   ; preds = %if.then6.i392, %if.end.i391.v4l2_rect_set_min_size.exit393_crit_edge
  %70 = ptrtoint ptr %width.i384 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %width.i384, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %mul)
  %cmp.i396 = icmp ugt i32 %71, %mul
  br i1 %cmp.i396, label %if.then.i397, label %v4l2_rect_set_min_size.exit393.if.end.i401_crit_edge

v4l2_rect_set_min_size.exit393.if.end.i401_crit_edge: ; preds = %v4l2_rect_set_min_size.exit393
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i401

if.then.i397:                                     ; preds = %v4l2_rect_set_min_size.exit393
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %width.i384 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %mul, ptr %width.i384, align 4
  br label %if.end.i401

if.end.i401:                                      ; preds = %if.then.i397, %v4l2_rect_set_min_size.exit393.if.end.i401_crit_edge
  %73 = ptrtoint ptr %height.i388 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %height.i388, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %mul34)
  %cmp5.i400 = icmp ugt i32 %74, %mul34
  br i1 %cmp5.i400, label %if.then6.i402, label %if.end.i401.if.end58_crit_edge

if.end.i401.if.end58_crit_edge:                   ; preds = %if.end.i401
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then6.i402:                                    ; preds = %if.end.i401
  call void @__sanitizer_cov_trace_pc() #16
  %75 = ptrtoint ptr %height.i388 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %mul34, ptr %height.i388, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then6.i402, %if.end.i401.if.end58_crit_edge, %if.end54.if.end58_crit_edge
  %76 = ptrtoint ptr %fmt_cap_rect to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %fmt.sroa.0.0.copyload, ptr %fmt_cap_rect, align 4
  %77 = ptrtoint ptr %fmt.sroa.6.0.fmt_cap_rect.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %fmt.sroa.6.0.copyload, ptr %fmt.sroa.6.0.fmt_cap_rect.sroa_idx, align 4
  %78 = ptrtoint ptr %fmt.sroa.7.0.fmt_cap_rect.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %fmt.sroa.7.2, ptr %fmt.sroa.7.0.fmt_cap_rect.sroa_idx, align 4
  %79 = ptrtoint ptr %fmt.sroa.13.0.fmt_cap_rect.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %fmt.sroa.13.2, ptr %fmt.sroa.13.0.fmt_cap_rect.sroa_idx, align 4
  %buf_height.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 2
  %80 = ptrtoint ptr %buf_height.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %fmt.sroa.13.2, ptr %buf_height.i, align 4
  br label %if.end101

if.else:                                          ; preds = %v4l2_rect_set_max_size.exit
  %has_compose_cap63 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 324
  %81 = ptrtoint ptr %has_compose_cap63 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %has_compose_cap63, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool64.not = icmp eq i8 %82, 0
  %fmt_cap_rect86 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 238
  br i1 %tobool64.not, label %if.else84, label %if.then65

if.then65:                                        ; preds = %if.else
  %fmt66.sroa.7.0.fmt_cap_rect67.sroa_idx = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 238, i32 2
  %83 = ptrtoint ptr %fmt66.sroa.7.0.fmt_cap_rect67.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %83)
  %fmt66.sroa.7.0.copyload = load i32, ptr %fmt66.sroa.7.0.fmt_cap_rect67.sroa_idx, align 4
  %fmt66.sroa.11.0.fmt_cap_rect67.sroa_idx = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 238, i32 3
  %84 = ptrtoint ptr %fmt66.sroa.11.0.fmt_cap_rect67.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %84)
  %fmt66.sroa.11.0.copyload = load i32, ptr %fmt66.sroa.11.0.fmt_cap_rect67.sroa_idx, align 4
  %85 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %width.i, align 4
  %87 = tail call i32 @llvm.umax.i32(i32 %fmt66.sroa.7.0.copyload, i32 %86)
  %88 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %height.i, align 4
  %90 = tail call i32 @llvm.umax.i32(i32 %fmt66.sroa.11.0.copyload, i32 %89)
  call void @__sanitizer_cov_trace_cmp4(i32 %fmt66.sroa.7.0.copyload, i32 %86)
  %cmp.i416.not = icmp ult i32 %fmt66.sroa.7.0.copyload, %86
  br i1 %cmp.i416.not, label %if.then65.land.lhs.true71_crit_edge, label %v4l2_rect_same_size.exit421

if.then65.land.lhs.true71_crit_edge:              ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true71

v4l2_rect_same_size.exit421:                      ; preds = %if.then65
  %91 = ptrtoint ptr %fmt66.sroa.11.0.fmt_cap_rect67.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %fmt66.sroa.11.0.fmt_cap_rect67.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %90)
  %cmp3.i419 = icmp eq i32 %92, %90
  br i1 %cmp3.i419, label %v4l2_rect_same_size.exit421.if.end75_crit_edge, label %v4l2_rect_same_size.exit421.land.lhs.true71_crit_edge

v4l2_rect_same_size.exit421.land.lhs.true71_crit_edge: ; preds = %v4l2_rect_same_size.exit421
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true71

v4l2_rect_same_size.exit421.if.end75_crit_edge:   ; preds = %v4l2_rect_same_size.exit421
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

land.lhs.true71:                                  ; preds = %v4l2_rect_same_size.exit421.land.lhs.true71_crit_edge, %if.then65.land.lhs.true71_crit_edge
  %num_buffers.i422 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 242, i32 21
  %93 = ptrtoint ptr %num_buffers.i422 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_buffers.i422, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp.i423.not = icmp eq i32 %94, 0
  br i1 %cmp.i423.not, label %land.lhs.true71.if.end75_crit_edge, label %land.lhs.true71.cleanup215_crit_edge

land.lhs.true71.cleanup215_crit_edge:             ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup215

land.lhs.true71.if.end75_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

if.end75:                                         ; preds = %land.lhs.true71.if.end75_crit_edge, %v4l2_rect_same_size.exit421.if.end75_crit_edge
  %95 = ptrtoint ptr %fmt66.sroa.7.0.fmt_cap_rect67.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %87, ptr %fmt66.sroa.7.0.fmt_cap_rect67.sroa_idx, align 4
  %96 = ptrtoint ptr %fmt66.sroa.11.0.fmt_cap_rect67.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %90, ptr %fmt66.sroa.11.0.fmt_cap_rect67.sroa_idx, align 4
  %buf_height.i424 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 2
  %97 = ptrtoint ptr %buf_height.i424 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %90, ptr %buf_height.i424, align 4
  %98 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %width.i, align 4
  %width1.i426 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 2
  %100 = ptrtoint ptr %width1.i426 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %width1.i426, align 4
  %101 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %height.i, align 4
  %height2.i428 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 3
  %103 = ptrtoint ptr %height2.i428 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %height2.i428, align 4
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %compose_cap, ptr noundef %fmt_cap_rect86)
  br label %if.end101

if.else84:                                        ; preds = %if.else
  %104 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %width.i, align 4
  %width1.i430 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 238, i32 2
  %106 = ptrtoint ptr %width1.i430 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %width1.i430, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %107)
  %cmp.i431 = icmp eq i32 %105, %107
  br i1 %cmp.i431, label %v4l2_rect_same_size.exit436, label %if.else84.land.lhs.true88_crit_edge

if.else84.land.lhs.true88_crit_edge:              ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true88

v4l2_rect_same_size.exit436:                      ; preds = %if.else84
  %108 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %height.i, align 4
  %height2.i433 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 238, i32 3
  %110 = ptrtoint ptr %height2.i433 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %height2.i433, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %111)
  %cmp3.i434 = icmp eq i32 %109, %111
  br i1 %cmp3.i434, label %v4l2_rect_same_size.exit436.if.end92_crit_edge, label %v4l2_rect_same_size.exit436.land.lhs.true88_crit_edge

v4l2_rect_same_size.exit436.land.lhs.true88_crit_edge: ; preds = %v4l2_rect_same_size.exit436
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true88

v4l2_rect_same_size.exit436.if.end92_crit_edge:   ; preds = %v4l2_rect_same_size.exit436
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92

land.lhs.true88:                                  ; preds = %v4l2_rect_same_size.exit436.land.lhs.true88_crit_edge, %if.else84.land.lhs.true88_crit_edge
  %num_buffers.i437 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 242, i32 21
  %112 = ptrtoint ptr %num_buffers.i437 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %num_buffers.i437, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp.i438.not = icmp eq i32 %113, 0
  br i1 %cmp.i438.not, label %land.lhs.true88.if.end92_crit_edge, label %land.lhs.true88.cleanup215_crit_edge

land.lhs.true88.cleanup215_crit_edge:             ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup215

land.lhs.true88.if.end92_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92

if.end92:                                         ; preds = %land.lhs.true88.if.end92_crit_edge, %v4l2_rect_same_size.exit436.if.end92_crit_edge
  %114 = ptrtoint ptr %width1.i430 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %105, ptr %width1.i430, align 4
  %115 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %height.i, align 4
  %height2.i442 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 238, i32 3
  %117 = ptrtoint ptr %height2.i442 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %height2.i442, align 4
  %118 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %width.i, align 4
  %width1.i444 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 2
  %120 = ptrtoint ptr %width1.i444 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %width1.i444, align 4
  %121 = load i32, ptr %height.i, align 4
  %height2.i446 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 3
  %122 = ptrtoint ptr %height2.i446 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %height2.i446, align 4
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %compose_cap, ptr noundef %fmt_cap_rect86)
  %123 = ptrtoint ptr %height2.i442 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %height2.i442, align 4
  %buf_height.i447 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 2
  %125 = ptrtoint ptr %buf_height.i447 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %buf_height.i447, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.end92, %if.end75, %if.end58
  %126 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %top, align 4
  %mul104 = mul i32 %127, %8
  store i32 %mul104, ptr %top, align 4
  %128 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %height.i, align 4
  %mul107 = mul i32 %129, %8
  store i32 %mul107, ptr %height.i, align 4
  %130 = call ptr @memcpy(ptr %crop_cap, ptr %r, i32 16)
  br label %sw.epilog

sw.bb109:                                         ; preds = %if.end11
  %has_compose_cap110 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 324
  %131 = ptrtoint ptr %has_compose_cap110 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %has_compose_cap110, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool111.not = icmp eq i8 %132, 0
  br i1 %tobool111.not, label %sw.bb109.cleanup215_crit_edge, label %if.end113

sw.bb109.cleanup215_crit_edge:                    ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup215

if.end113:                                        ; preds = %sw.bb109
  %flags114 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 2
  %133 = ptrtoint ptr %flags114 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %flags114, align 4
  %r115 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %call116 = tail call i32 @vivid_vid_adjust_sel(i32 noundef %134, ptr noundef %r115) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %if.end113.cleanup215_crit_edge

if.end113.cleanup215_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup215

if.end119:                                        ; preds = %if.end113
  %width.i448 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %135 = ptrtoint ptr %width.i448 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %width.i448, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 2) to i32))
  %137 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %137)
  %cmp.i449 = icmp ult i32 %136, %137
  br i1 %cmp.i449, label %if.then.i450, label %if.end119.if.end.i453_crit_edge

if.end119.if.end.i453_crit_edge:                  ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i453

if.then.i450:                                     ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  %138 = ptrtoint ptr %width.i448 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %width.i448, align 4
  br label %if.end.i453

if.end.i453:                                      ; preds = %if.then.i450, %if.end119.if.end.i453_crit_edge
  %height.i451 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %139 = ptrtoint ptr %height.i451 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %height.i451, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 3) to i32))
  %141 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %141)
  %cmp5.i452 = icmp ult i32 %140, %141
  br i1 %cmp5.i452, label %if.then6.i454, label %if.end.i453.v4l2_rect_set_min_size.exit455_crit_edge

if.end.i453.v4l2_rect_set_min_size.exit455_crit_edge: ; preds = %if.end.i453
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_min_size.exit455

if.then6.i454:                                    ; preds = %if.end.i453
  call void @__sanitizer_cov_trace_pc() #16
  %142 = ptrtoint ptr %height.i451 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %height.i451, align 4
  br label %v4l2_rect_set_min_size.exit455

v4l2_rect_set_min_size.exit455:                   ; preds = %if.then6.i454, %if.end.i453.v4l2_rect_set_min_size.exit455_crit_edge
  %fmt_cap_rect122 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 238
  %143 = ptrtoint ptr %width.i448 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %width.i448, align 4
  %width1.i457 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 238, i32 2
  %145 = ptrtoint ptr %width1.i457 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %width1.i457, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %146)
  %cmp.i458 = icmp ugt i32 %144, %146
  br i1 %cmp.i458, label %if.then.i459, label %v4l2_rect_set_min_size.exit455.if.end.i463_crit_edge

v4l2_rect_set_min_size.exit455.if.end.i463_crit_edge: ; preds = %v4l2_rect_set_min_size.exit455
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i463

if.then.i459:                                     ; preds = %v4l2_rect_set_min_size.exit455
  call void @__sanitizer_cov_trace_pc() #16
  %147 = ptrtoint ptr %width.i448 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %width.i448, align 4
  br label %if.end.i463

if.end.i463:                                      ; preds = %if.then.i459, %v4l2_rect_set_min_size.exit455.if.end.i463_crit_edge
  %148 = ptrtoint ptr %height.i451 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %height.i451, align 4
  %height4.i461 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 238, i32 3
  %150 = ptrtoint ptr %height4.i461 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %height4.i461, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %151)
  %cmp5.i462 = icmp ugt i32 %149, %151
  br i1 %cmp5.i462, label %if.then6.i464, label %if.end.i463.v4l2_rect_set_max_size.exit465_crit_edge

if.end.i463.v4l2_rect_set_max_size.exit465_crit_edge: ; preds = %if.end.i463
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_max_size.exit465

if.then6.i464:                                    ; preds = %if.end.i463
  call void @__sanitizer_cov_trace_pc() #16
  %152 = ptrtoint ptr %height.i451 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %height.i451, align 4
  br label %v4l2_rect_set_max_size.exit465

v4l2_rect_set_max_size.exit465:                   ; preds = %if.then6.i464, %if.end.i463.v4l2_rect_set_max_size.exit465_crit_edge
  %has_scaler_cap123 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 325
  %153 = ptrtoint ptr %has_scaler_cap123 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %has_scaler_cap123, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool124.not = icmp eq i8 %154, 0
  br i1 %tobool124.not, label %if.else168, label %if.then125

if.then125:                                       ; preds = %v4l2_rect_set_max_size.exit465
  %width131 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 237, i32 2
  %155 = ptrtoint ptr %width131 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %width131, align 4
  %mul132 = shl i32 %156, 2
  %height135 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 237, i32 3
  %157 = ptrtoint ptr %height135 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %height135, align 4
  %div136343 = lshr i32 %158, %7
  %mul137 = shl i32 %div136343, 2
  %159 = ptrtoint ptr %width.i448 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %width.i448, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %mul132)
  %cmp.i468 = icmp ugt i32 %160, %mul132
  br i1 %cmp.i468, label %if.then.i469, label %if.then125.if.end.i473_crit_edge

if.then125.if.end.i473_crit_edge:                 ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i473

if.then.i469:                                     ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #16
  %161 = ptrtoint ptr %width.i448 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %mul132, ptr %width.i448, align 4
  br label %if.end.i473

if.end.i473:                                      ; preds = %if.then.i469, %if.then125.if.end.i473_crit_edge
  %162 = ptrtoint ptr %height.i451 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %height.i451, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %mul137)
  %cmp5.i472 = icmp ugt i32 %163, %mul137
  br i1 %cmp5.i472, label %if.then6.i474, label %if.end.i473.v4l2_rect_set_max_size.exit475_crit_edge

if.end.i473.v4l2_rect_set_max_size.exit475_crit_edge: ; preds = %if.end.i473
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_max_size.exit475

if.then6.i474:                                    ; preds = %if.end.i473
  call void @__sanitizer_cov_trace_pc() #16
  %164 = ptrtoint ptr %height.i451 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %mul137, ptr %height.i451, align 4
  br label %v4l2_rect_set_max_size.exit475

v4l2_rect_set_max_size.exit475:                   ; preds = %if.then6.i474, %if.end.i473.v4l2_rect_set_max_size.exit475_crit_edge
  %165 = ptrtoint ptr %has_crop_cap to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %has_crop_cap, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool140.not = icmp eq i8 %166, 0
  br i1 %tobool140.not, label %v4l2_rect_set_max_size.exit475.if.end195_crit_edge, label %if.then141

v4l2_rect_set_max_size.exit475.if.end195_crit_edge: ; preds = %v4l2_rect_set_max_size.exit475
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end195

if.then141:                                       ; preds = %v4l2_rect_set_max_size.exit475
  %167 = ptrtoint ptr %width.i448 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %width.i448, align 4
  %div148344 = lshr i32 %168, 2
  %169 = ptrtoint ptr %height.i451 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %height.i451, align 4
  %mul152 = mul i32 %170, %8
  %div153345 = lshr i32 %mul152, 2
  %mul160 = shl i32 %168, 2
  %mul165 = shl i32 %mul152, 2
  %width.i476 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239, i32 2
  %171 = ptrtoint ptr %width.i476 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %width.i476, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %172, i32 %div148344)
  %cmp.i478 = icmp ult i32 %172, %div148344
  br i1 %cmp.i478, label %if.then.i479, label %if.then141.if.end.i483_crit_edge

if.then141.if.end.i483_crit_edge:                 ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i483

if.then.i479:                                     ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #16
  %173 = ptrtoint ptr %width.i476 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %div148344, ptr %width.i476, align 4
  br label %if.end.i483

if.end.i483:                                      ; preds = %if.then.i479, %if.then141.if.end.i483_crit_edge
  %height.i480 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239, i32 3
  %174 = ptrtoint ptr %height.i480 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %height.i480, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %div153345)
  %cmp5.i482 = icmp ult i32 %175, %div153345
  br i1 %cmp5.i482, label %if.then6.i484, label %if.end.i483.v4l2_rect_set_min_size.exit485_crit_edge

if.end.i483.v4l2_rect_set_min_size.exit485_crit_edge: ; preds = %if.end.i483
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_min_size.exit485

if.then6.i484:                                    ; preds = %if.end.i483
  call void @__sanitizer_cov_trace_pc() #16
  %176 = ptrtoint ptr %height.i480 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %div153345, ptr %height.i480, align 4
  br label %v4l2_rect_set_min_size.exit485

v4l2_rect_set_min_size.exit485:                   ; preds = %if.then6.i484, %if.end.i483.v4l2_rect_set_min_size.exit485_crit_edge
  %177 = ptrtoint ptr %width.i476 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %width.i476, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %178, i32 %mul160)
  %cmp.i488 = icmp ugt i32 %178, %mul160
  br i1 %cmp.i488, label %if.then.i489, label %v4l2_rect_set_min_size.exit485.if.end.i493_crit_edge

v4l2_rect_set_min_size.exit485.if.end.i493_crit_edge: ; preds = %v4l2_rect_set_min_size.exit485
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i493

if.then.i489:                                     ; preds = %v4l2_rect_set_min_size.exit485
  call void @__sanitizer_cov_trace_pc() #16
  %179 = ptrtoint ptr %width.i476 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %mul160, ptr %width.i476, align 4
  br label %if.end.i493

if.end.i493:                                      ; preds = %if.then.i489, %v4l2_rect_set_min_size.exit485.if.end.i493_crit_edge
  %180 = ptrtoint ptr %height.i480 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %height.i480, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %181, i32 %mul165)
  %cmp5.i492 = icmp ugt i32 %181, %mul165
  br i1 %cmp5.i492, label %if.then6.i494, label %if.end.i493.v4l2_rect_set_max_size.exit495_crit_edge

if.end.i493.v4l2_rect_set_max_size.exit495_crit_edge: ; preds = %if.end.i493
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_max_size.exit495

if.then6.i494:                                    ; preds = %if.end.i493
  call void @__sanitizer_cov_trace_pc() #16
  %182 = ptrtoint ptr %height.i480 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %mul165, ptr %height.i480, align 4
  br label %v4l2_rect_set_max_size.exit495

v4l2_rect_set_max_size.exit495:                   ; preds = %if.then6.i494, %if.end.i493.v4l2_rect_set_max_size.exit495_crit_edge
  %crop_bounds_cap166 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 241
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %crop_cap, ptr noundef %crop_bounds_cap166)
  br label %if.end195

if.else168:                                       ; preds = %v4l2_rect_set_max_size.exit465
  %183 = ptrtoint ptr %has_crop_cap to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %has_crop_cap, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool170.not = icmp eq i8 %184, 0
  br i1 %tobool170.not, label %if.else188, label %if.then171

if.then171:                                       ; preds = %if.else168
  %top173 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %185 = ptrtoint ptr %top173 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %top173, align 4
  %mul174 = mul i32 %186, %8
  store i32 %mul174, ptr %top173, align 4
  %187 = ptrtoint ptr %height.i451 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %height.i451, align 4
  %mul177 = mul i32 %188, %8
  store i32 %mul177, ptr %height.i451, align 4
  %189 = ptrtoint ptr %width.i448 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %width.i448, align 4
  %width1.i497 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 237, i32 2
  %191 = ptrtoint ptr %width1.i497 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %width1.i497, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %190, i32 %192)
  %cmp.i498 = icmp ugt i32 %190, %192
  br i1 %cmp.i498, label %if.then.i499, label %if.then171.if.end.i503_crit_edge

if.then171.if.end.i503_crit_edge:                 ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i503

if.then.i499:                                     ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #16
  %193 = ptrtoint ptr %width.i448 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %width.i448, align 4
  br label %if.end.i503

if.end.i503:                                      ; preds = %if.then.i499, %if.then171.if.end.i503_crit_edge
  %194 = ptrtoint ptr %height.i451 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %height.i451, align 4
  %height4.i501 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 237, i32 3
  %196 = ptrtoint ptr %height4.i501 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %height4.i501, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %195, i32 %197)
  %cmp5.i502 = icmp ugt i32 %195, %197
  br i1 %cmp5.i502, label %if.then6.i504, label %if.end.i503.v4l2_rect_set_max_size.exit505_crit_edge

if.end.i503.v4l2_rect_set_max_size.exit505_crit_edge: ; preds = %if.end.i503
  call void @__sanitizer_cov_trace_pc() #16
  br label %v4l2_rect_set_max_size.exit505

if.then6.i504:                                    ; preds = %if.end.i503
  call void @__sanitizer_cov_trace_pc() #16
  %198 = ptrtoint ptr %height.i451 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %height.i451, align 4
  br label %v4l2_rect_set_max_size.exit505

v4l2_rect_set_max_size.exit505:                   ; preds = %if.then6.i504, %if.end.i503.v4l2_rect_set_max_size.exit505_crit_edge
  %199 = ptrtoint ptr %width.i448 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %width.i448, align 4
  %width1.i507 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239, i32 2
  %201 = ptrtoint ptr %width1.i507 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %width1.i507, align 4
  %202 = ptrtoint ptr %height.i451 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %height.i451, align 4
  %height2.i509 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 239, i32 3
  %204 = ptrtoint ptr %height2.i509 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %height2.i509, align 4
  %crop_bounds_cap181 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 241
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %crop_cap, ptr noundef %crop_bounds_cap181)
  %205 = ptrtoint ptr %top173 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %top173, align 4
  %div184341 = lshr i32 %206, %7
  store i32 %div184341, ptr %top173, align 4
  %207 = ptrtoint ptr %height.i451 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %height.i451, align 4
  %div187342 = lshr i32 %208, %7
  store i32 %div187342, ptr %height.i451, align 4
  br label %if.end195

if.else188:                                       ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #16
  %width.i510 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 237, i32 2
  %209 = ptrtoint ptr %width.i510 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %width.i510, align 4
  %211 = ptrtoint ptr %width.i448 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %width.i448, align 4
  %height.i512 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 237, i32 3
  %212 = ptrtoint ptr %height.i512 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %height.i512, align 4
  %div193340 = lshr i32 %213, %7
  %214 = ptrtoint ptr %height.i451 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %div193340, ptr %height.i451, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.else188, %v4l2_rect_set_max_size.exit505, %v4l2_rect_set_max_size.exit495, %v4l2_rect_set_max_size.exit475.if.end195_crit_edge
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %r115, ptr noundef %fmt_cap_rect122)
  %bitmap_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 195
  %215 = ptrtoint ptr %bitmap_cap to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %bitmap_cap, align 4
  %tobool198.not = icmp eq ptr %216, null
  br i1 %tobool198.not, label %if.end195.if.end212_crit_edge, label %land.lhs.true199

if.end195.if.end212_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end212

land.lhs.true199:                                 ; preds = %if.end195
  %width200 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 2
  %217 = ptrtoint ptr %width200 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %width200, align 4
  %219 = ptrtoint ptr %width.i448 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %width.i448, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %218, i32 %220)
  %cmp203.not = icmp eq i32 %218, %220
  br i1 %cmp203.not, label %lor.lhs.false204, label %land.lhs.true199.if.then209_crit_edge

land.lhs.true199.if.then209_crit_edge:            ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then209

lor.lhs.false204:                                 ; preds = %land.lhs.true199
  %height205 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 3
  %221 = ptrtoint ptr %height205 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %height205, align 4
  %223 = ptrtoint ptr %height.i451 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %height.i451, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %222, i32 %224)
  %cmp208.not = icmp eq i32 %222, %224
  br i1 %cmp208.not, label %lor.lhs.false204.if.end212_crit_edge, label %lor.lhs.false204.if.then209_crit_edge

lor.lhs.false204.if.then209_crit_edge:            ; preds = %lor.lhs.false204
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then209

lor.lhs.false204.if.end212_crit_edge:             ; preds = %lor.lhs.false204
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end212

if.then209:                                       ; preds = %lor.lhs.false204.if.then209_crit_edge, %land.lhs.true199.if.then209_crit_edge
  tail call void @vfree(ptr noundef nonnull %216) #14
  %225 = ptrtoint ptr %bitmap_cap to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr null, ptr %bitmap_cap, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.then209, %lor.lhs.false204.if.end212_crit_edge, %if.end195.if.end212_crit_edge
  %226 = call ptr @memcpy(ptr %compose_cap, ptr %r115, i32 16)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end212, %if.end101
  %tpg214 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231
  tail call void @tpg_s_crop_compose(ptr noundef %tpg214, ptr noundef %crop_cap, ptr noundef %compose_cap) #14
  br label %cleanup215

cleanup215:                                       ; preds = %sw.epilog, %if.end113.cleanup215_crit_edge, %sw.bb109.cleanup215_crit_edge, %land.lhs.true88.cleanup215_crit_edge, %land.lhs.true71.cleanup215_crit_edge, %land.lhs.true51.cleanup215_crit_edge, %if.end15.cleanup215_crit_edge, %sw.bb.cleanup215_crit_edge, %if.end11.cleanup215_crit_edge, %if.end8.cleanup215_crit_edge, %if.end.cleanup215_crit_edge, %land.lhs.true.cleanup215_crit_edge
  %retval.2 = phi i32 [ 0, %sw.epilog ], [ -25, %land.lhs.true.cleanup215_crit_edge ], [ -22, %if.end.cleanup215_crit_edge ], [ -61, %if.end8.cleanup215_crit_edge ], [ -22, %sw.bb.cleanup215_crit_edge ], [ %call16, %if.end15.cleanup215_crit_edge ], [ -16, %land.lhs.true88.cleanup215_crit_edge ], [ -22, %sw.bb109.cleanup215_crit_edge ], [ %call116, %if.end113.cleanup215_crit_edge ], [ -22, %if.end11.cleanup215_crit_edge ], [ -16, %land.lhs.true51.cleanup215_crit_edge ], [ -16, %land.lhs.true71.cleanup215_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_adjust_sel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_g_pixelaspect(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %type, ptr nocapture noundef writeonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %input.i.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %2 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %3
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i.i, align 1
  %6 = add i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %7 = icmp ult i8 %6, 2
  br i1 %7, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 174, i32 %3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.i, align 8
  %and.i = and i64 %9, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.sw.bb2_crit_edge, label %if.then.i.cleanup.sink.split_crit_edge

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then.i.sw.bb2_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp.i.i = icmp eq i8 %5, 3
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %width.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 237, i32 2
  %10 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %11)
  %cmp.i = icmp eq i32 %11, 720
  br i1 %cmp.i, label %land.lhs.true2.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %height.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 237, i32 3
  %12 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 577, i32 %13)
  %cmp4.i = icmp ult i32 %13, 577
  br i1 %cmp4.i, label %if.then5.i, label %land.lhs.true2.i.cleanup_crit_edge

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5.i:                                       ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %13)
  %cmp8.i = icmp eq i32 %13, 480
  br i1 %cmp8.i, label %if.then5.i.cleanup.sink.split_crit_edge, label %if.then5.i.sw.bb2_crit_edge

if.then5.i.sw.bb2_crit_edge:                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2

if.then5.i.cleanup.sink.split_crit_edge:          ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %if.then5.i.sw.bb2_crit_edge, %if.then.i.sw.bb2_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %if.then5.i.cleanup.sink.split_crit_edge, %if.then.i.cleanup.sink.split_crit_edge
  %.sink13 = phi i32 [ 54, %sw.bb2 ], [ 11, %if.then5.i.cleanup.sink.split_crit_edge ], [ 11, %if.then.i.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ 59, %sw.bb2 ], [ 10, %if.then5.i.cleanup.sink.split_crit_edge ], [ 10, %if.then.i.cleanup.sink.split_crit_edge ]
  %14 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink13, ptr %f, align 4
  %denominator = getelementptr inbounds %struct.v4l2_fract, ptr %f, i32 0, i32 1
  %15 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true2.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true2.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_enum_fmt_vid_overlay(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multiplanar, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr [3 x %struct.vivid_fmt], ptr @formats_ovl, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -25, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_vid_overlay(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multiplanar, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %clipcount1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %4 = ptrtoint ptr %clipcount1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clipcount1, align 4
  %overlay_cap_top = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 192
  %6 = ptrtoint ptr %overlay_cap_top to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %overlay_cap_top, align 8
  %top = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %top, align 4
  %overlay_cap_left = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 193
  %9 = ptrtoint ptr %overlay_cap_left to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %overlay_cap_left, align 4
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fmt, align 4
  %width = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 2
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %width4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %width4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %width4, align 4
  %height = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 3
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %height6 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height6, align 4
  %overlay_cap_field = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 194
  %18 = ptrtoint ptr %overlay_cap_field to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %overlay_cap_field, align 8
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %field, align 4
  %clipcount_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 198
  %21 = ptrtoint ptr %clipcount_cap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clipcount_cap, align 8
  store i32 %22, ptr %clipcount1, align 4
  %23 = load i32, ptr %clipcount_cap, align 8
  %24 = tail call i32 @llvm.umin.i32(i32 %5, i32 %23)
  %bitmap_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 195
  %25 = ptrtoint ptr %bitmap_cap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bitmap_cap, align 4
  %cmp12 = icmp eq ptr %26, null
  %bitmap = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %bitmap, align 4
  br label %if.end26

if.else:                                          ; preds = %if.end
  %28 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bitmap, align 4
  %tobool15.not = icmp eq ptr %29, null
  br i1 %tobool15.not, label %if.else.if.end26_crit_edge, label %if.then16

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then16:                                        ; preds = %if.else
  %30 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width, align 4
  %add = add i32 %31, 7
  %div66 = lshr i32 %add, 3
  %32 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height, align 4
  %mul = mul i32 %div66, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then16
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !126

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then16
  tail call void @__check_object_size(ptr noundef nonnull %26, i32 noundef %mul, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.46, i32 noundef 174) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %29, i32 %mul, i32 -1226833920) #18, !srcloc !129
  %asmresult.i.i = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %26, i32 noundef %mul) #14
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %29, ptr noundef nonnull %26, i32 noundef %mul) #14
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %mul, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool22.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool22.not, label %copy_to_user.exit.if.end26_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit.if.end26_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.end26:                                         ; preds = %copy_to_user.exit.if.end26_crit_edge, %if.else.if.end26_crit_edge, %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool27.not = icmp eq i32 %24, 0
  br i1 %tobool27.not, label %if.end26.cleanup_crit_edge, label %land.lhs.true

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end26
  %clips = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %35 = ptrtoint ptr %clips to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clips, align 4
  %tobool28.not = icmp eq ptr %36, null
  br i1 %tobool28.not, label %land.lhs.true.cleanup_crit_edge, label %if.then29

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %clips_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 196
  %mul31 = mul i32 %24, 20
  %37 = call ptr @memcpy(ptr %36, ptr %clips_cap, i32 %mul31)
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %land.lhs.true.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %entry.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ 0, %if.then29 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_try_fmt_vid_overlay(ptr noundef %file, ptr nocapture readnone %priv, ptr nocapture noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multiplanar, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup172_crit_edge

entry.cleanup172_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup172

if.end:                                           ; preds = %entry
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  %fmt1 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 189, i32 3
  %6 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt1, align 4
  %sub = sub i32 0, %7
  %8 = tail call i32 @llvm.smax.i32(i32 %5, i32 %sub)
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 %7)
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fmt, align 4
  %top = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %top, align 4
  %height = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 189, i32 3, i32 1
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %sub16 = sub i32 0, %14
  %15 = tail call i32 @llvm.smax.i32(i32 %12, i32 %sub16)
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 %14)
  %17 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %top, align 4
  %width34 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 2
  %18 = ptrtoint ptr %width34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width34, align 4
  %width36 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %width36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %width36, align 4
  %height37 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 3
  %21 = ptrtoint ptr %height37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height37, align 4
  %height39 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %23 = ptrtoint ptr %height39 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %height39, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %field, align 4
  %26 = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %switch = icmp eq i32 %26, 2
  br i1 %switch, label %if.end.if.end45_crit_edge, label %if.then43

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then43:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %field, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end.if.end45_crit_edge
  %chromakey = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %28 = ptrtoint ptr %chromakey to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %chromakey, align 4
  %global_alpha = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %global_alpha to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %global_alpha, align 4
  %clipcount = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %30 = ptrtoint ptr %clipcount to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %clipcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool46.not = icmp eq i32 %31, 0
  br i1 %tobool46.not, label %if.end45.if.end51.thread_crit_edge, label %land.lhs.true47

if.end45.if.end51.thread_crit_edge:               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51.thread

land.lhs.true47:                                  ; preds = %if.end45
  %clips = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %32 = ptrtoint ptr %clips to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clips, align 4
  %tobool48.not = icmp eq ptr %33, null
  br i1 %tobool48.not, label %if.then49, label %if.end51

if.then49:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %clipcount to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %clipcount, align 4
  br label %if.end51.thread

if.end51.thread:                                  ; preds = %if.then49, %if.end45.if.end51.thread_crit_edge
  %35 = ptrtoint ptr %clipcount to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr269 = load i32, ptr %clipcount, align 4
  br label %if.end56

if.end51:                                         ; preds = %land.lhs.true47
  %36 = ptrtoint ptr %clipcount to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load i32, ptr %clipcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.pr)
  %cmp53 = icmp ugt i32 %.pr, 16
  br i1 %cmp53, label %if.end56.thread, label %if.end51.if.end56_crit_edge

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.end56.thread:                                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %clipcount to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 16, ptr %clipcount, align 4
  br label %if.then59

if.end56:                                         ; preds = %if.end51.if.end56_crit_edge, %if.end51.thread
  %38 = phi i32 [ %.pr269, %if.end51.thread ], [ %.pr, %if.end51.if.end56_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool58.not = icmp eq i32 %38, 0
  br i1 %tobool58.not, label %if.end56.cleanup172_crit_edge, label %if.end56.if.then59_crit_edge

if.end56.if.then59_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then59

if.end56.cleanup172_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup172

if.then59:                                        ; preds = %if.end56.if.then59_crit_edge, %if.end56.thread
  %39 = phi i32 [ 16, %if.end56.thread ], [ %38, %if.end56.if.then59_crit_edge ]
  %try_clips_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 197
  %clips60 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %40 = ptrtoint ptr %clips60 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clips60, align 4
  %mul = mul i32 %39, 20
  %42 = call ptr @memcpy(ptr %try_clips_cap, ptr %41, i32 %mul)
  %43 = ptrtoint ptr %clipcount to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %clipcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp63272.not = icmp eq i32 %44, 0
  br i1 %cmp63272.not, label %if.then59.for.body143.preheader_crit_edge, label %if.then59.for.body_crit_edge

if.then59.for.body_crit_edge:                     ; preds = %if.then59
  br label %for.body

if.then59.for.body143.preheader_crit_edge:        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body143.preheader

for.cond139.preheader:                            ; preds = %for.body
  %sub141 = add i32 %73, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub141)
  %cmp142276.not = icmp eq i32 %sub141, 0
  br i1 %cmp142276.not, label %for.cond139.preheader.for.end165_crit_edge, label %for.cond139.preheader.for.body143.preheader_crit_edge

for.cond139.preheader.for.body143.preheader_crit_edge: ; preds = %for.cond139.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body143.preheader

for.cond139.preheader.for.end165_crit_edge:       ; preds = %for.cond139.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end165

for.body143.preheader:                            ; preds = %for.cond139.preheader.for.body143.preheader_crit_edge, %if.then59.for.body143.preheader_crit_edge
  %sub141285 = phi i32 [ %sub141, %for.cond139.preheader.for.body143.preheader_crit_edge ], [ -1, %if.then59.for.body143.preheader_crit_edge ]
  %.lcssa283 = phi i32 [ %73, %for.cond139.preheader.for.body143.preheader_crit_edge ], [ 0, %if.then59.for.body143.preheader_crit_edge ]
  br label %for.body143

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then59.for.body_crit_edge
  %i.0273 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then59.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 197, i32 %i.0273
  %top65 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx, i32 0, i32 1
  %45 = ptrtoint ptr %top65 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %top65, align 4
  %47 = tail call i32 @llvm.smax.i32(i32 %46, i32 0)
  %48 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height, align 4
  %sub75 = add i32 %49, -1
  %50 = tail call i32 @llvm.smin.i32(i32 %47, i32 %sub75)
  %51 = ptrtoint ptr %top65 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %top65, align 4
  %height83 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx, i32 0, i32 3
  %52 = ptrtoint ptr %height83 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %height83, align 4
  %54 = tail call i32 @llvm.smax.i32(i32 %53, i32 1)
  %55 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %height, align 4
  %sub94 = sub i32 %56, %50
  %57 = tail call i32 @llvm.smin.i32(i32 %54, i32 %sub94)
  %58 = ptrtoint ptr %height83 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %height83, align 4
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx, align 4
  %61 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fmt1, align 4
  %sub112 = add i32 %62, -1
  %63 = tail call i32 @llvm.umin.i32(i32 %60, i32 %sub112)
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx, align 4
  %width120 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx, i32 0, i32 2
  %65 = ptrtoint ptr %width120 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %width120, align 4
  %67 = tail call i32 @llvm.umax.i32(i32 %66, i32 1)
  %68 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fmt1, align 4
  %sub131 = sub i32 %69, %63
  %70 = tail call i32 @llvm.umin.i32(i32 %67, i32 %sub131)
  %71 = ptrtoint ptr %width120 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %width120, align 4
  %inc = add nuw i32 %i.0273, 1
  %72 = ptrtoint ptr %clipcount to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %clipcount, align 4
  %cmp63 = icmp ult i32 %inc, %73
  br i1 %cmp63, label %for.body.for.body_crit_edge, label %for.cond139.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond139.loopexit:                             ; preds = %for.inc157.for.cond139.loopexit_crit_edge, %for.body143.for.cond139.loopexit_crit_edge
  %exitcond279.not = icmp eq i32 %add, %sub141285
  br i1 %exitcond279.not, label %for.cond139.loopexit.for.end165_crit_edge, label %for.cond139.loopexit.for.body143_crit_edge

for.cond139.loopexit.for.body143_crit_edge:       ; preds = %for.cond139.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body143

for.cond139.loopexit.for.end165_crit_edge:        ; preds = %for.cond139.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end165

for.body143:                                      ; preds = %for.cond139.loopexit.for.body143_crit_edge, %for.body143.preheader
  %i.1277 = phi i32 [ %add, %for.cond139.loopexit.for.body143_crit_edge ], [ 0, %for.body143.preheader ]
  %add = add nuw i32 %i.1277, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %.lcssa283)
  %cmp149274 = icmp ult i32 %add, %.lcssa283
  br i1 %cmp149274, label %for.body150.lr.ph, label %for.body143.for.cond139.loopexit_crit_edge

for.body143.for.cond139.loopexit_crit_edge:       ; preds = %for.body143
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond139.loopexit

for.body150.lr.ph:                                ; preds = %for.body143
  %arrayidx145 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 197, i32 %i.1277
  %74 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx145, align 4
  %width4.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx145, i32 0, i32 2
  %top.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx145, i32 0, i32 1
  %height13.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx145, i32 0, i32 3
  br label %for.body150

for.body150:                                      ; preds = %for.inc157.for.body150_crit_edge, %for.body150.lr.ph
  %j.0275 = phi i32 [ %add, %for.body150.lr.ph ], [ %inc158, %for.inc157.for.body150_crit_edge ]
  %arrayidx152 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 197, i32 %j.0275
  %76 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx152, align 4
  %width.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx152, i32 0, i32 2
  %78 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %width.i, align 4
  %add.i = add i32 %79, %77
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %add.i)
  %cmp.not.i = icmp ult i32 %75, %add.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %for.body150.for.inc157_crit_edge

for.body150.for.inc157_crit_edge:                 ; preds = %for.body150
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc157

lor.lhs.false.i:                                  ; preds = %for.body150
  %80 = ptrtoint ptr %width4.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %width4.i, align 4
  %add5.i = add i32 %81, %75
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %add5.i)
  %cmp6.not.i = icmp ult i32 %77, %add5.i
  br i1 %cmp6.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc157_crit_edge

lor.lhs.false.i.for.inc157_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc157

if.end.i:                                         ; preds = %lor.lhs.false.i
  %82 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %top.i, align 4
  %top7.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx152, i32 0, i32 1
  %84 = ptrtoint ptr %top7.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %top7.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx152, i32 0, i32 3
  %86 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %height.i, align 4
  %add8.i = add i32 %87, %85
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %add8.i)
  %cmp9.not.i = icmp ult i32 %83, %add8.i
  br i1 %cmp9.not.i, label %v4l2_rect_overlap.exit, label %if.end.i.for.inc157_crit_edge

if.end.i.for.inc157_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc157

v4l2_rect_overlap.exit:                           ; preds = %if.end.i
  %88 = ptrtoint ptr %height13.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %height13.i, align 4
  %add14.i = add i32 %89, %83
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %add14.i)
  %cmp15.not.i = icmp ult i32 %85, %add14.i
  br i1 %cmp15.not.i, label %v4l2_rect_overlap.exit.cleanup172_crit_edge, label %v4l2_rect_overlap.exit.for.inc157_crit_edge

v4l2_rect_overlap.exit.for.inc157_crit_edge:      ; preds = %v4l2_rect_overlap.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc157

v4l2_rect_overlap.exit.cleanup172_crit_edge:      ; preds = %v4l2_rect_overlap.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup172

for.inc157:                                       ; preds = %v4l2_rect_overlap.exit.for.inc157_crit_edge, %if.end.i.for.inc157_crit_edge, %lor.lhs.false.i.for.inc157_crit_edge, %for.body150.for.inc157_crit_edge
  %inc158 = add i32 %j.0275, 1
  %exitcond.not = icmp eq i32 %inc158, %.lcssa283
  br i1 %exitcond.not, label %for.inc157.for.cond139.loopexit_crit_edge, label %for.inc157.for.body150_crit_edge

for.inc157.for.body150_crit_edge:                 ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body150

for.inc157.for.cond139.loopexit_crit_edge:        ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond139.loopexit

for.end165:                                       ; preds = %for.cond139.loopexit.for.end165_crit_edge, %for.cond139.preheader.for.end165_crit_edge
  %.lcssa284 = phi i32 [ 1, %for.cond139.preheader.for.end165_crit_edge ], [ %.lcssa283, %for.cond139.loopexit.for.end165_crit_edge ]
  %90 = ptrtoint ptr %clips60 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %clips60, align 4
  %mul170 = mul i32 %.lcssa284, 20
  %92 = call ptr @memcpy(ptr %91, ptr %try_clips_cap, i32 %mul170)
  br label %cleanup172

cleanup172:                                       ; preds = %for.end165, %v4l2_rect_overlap.exit.cleanup172_crit_edge, %if.end56.cleanup172_crit_edge, %entry.cleanup172_crit_edge
  %retval.4 = phi i32 [ -25, %entry.cleanup172_crit_edge ], [ 0, %for.end165 ], [ 0, %if.end56.cleanup172_crit_edge ], [ -22, %v4l2_rect_overlap.exit.cleanup172_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_vid_overlay(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %call1 = tail call i32 @vidioc_try_fmt_vid_overlay(ptr noundef %file, ptr undef, ptr noundef %f)
  %width = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %add = add i32 %3, 7
  %div51 = lshr i32 %add, 3
  %height = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 240, i32 3
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %mul = mul i32 %div51, %5
  %clipcount = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %6 = ptrtoint ptr %clipcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clipcount, align 4
  %mul2 = mul i32 %7, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %bitmap = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bitmap, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.end.if.end13_crit_edge, label %if.then4

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then4:                                         ; preds = %if.end
  %call5 = tail call noalias ptr @vzalloc(i32 noundef %mul) #19
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %if.then4.cleanup_crit_edge, label %if.end7

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.then4
  %10 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bitmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end7
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then11_crit_edge, label %if.then27.i.i, !prof !126

land.rhs16.i.i.if.then11_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %if.then11

if.then.i.i.i:                                    ; preds = %if.end7
  tail call void @__check_object_size(ptr noundef nonnull %call5, i32 noundef %mul, i1 noundef zeroext false) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.46, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 %mul, i32 -1226833920) #18, !srcloc !130
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !126

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call5, i32 noundef %mul) #14
  %13 = tail call i32 @llvm.read_register.i32(metadata !114) #14
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #12, !srcloc !131
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !133
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call5, ptr noundef %11, i32 noundef %mul) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #14, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !133
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end13_crit_edge, label %if.then11.i.i, !prof !126

if.end.i.i.if.end13_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %mul, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call5, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.then11

if.then11:                                        ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.then11_crit_edge
  tail call void @vfree(ptr noundef nonnull %call5) #14
  br label %cleanup

if.end13:                                         ; preds = %if.end.i.i.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %new_bitmap.0 = phi ptr [ null, %if.end.if.end13_crit_edge ], [ %call5, %if.end.i.i.if.end13_crit_edge ]
  %top = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %top, align 4
  %overlay_cap_top = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 192
  %19 = ptrtoint ptr %overlay_cap_top to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %overlay_cap_top, align 8
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fmt, align 4
  %overlay_cap_left = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 193
  %22 = ptrtoint ptr %overlay_cap_left to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %overlay_cap_left, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %23 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %field, align 4
  %overlay_cap_field = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 194
  %25 = ptrtoint ptr %overlay_cap_field to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %overlay_cap_field, align 8
  %bitmap_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 195
  %26 = ptrtoint ptr %bitmap_cap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bitmap_cap, align 4
  tail call void @vfree(ptr noundef %27) #14
  %28 = ptrtoint ptr %bitmap_cap to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %new_bitmap.0, ptr %bitmap_cap, align 4
  %29 = ptrtoint ptr %clipcount to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %clipcount, align 4
  %clipcount_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 198
  %31 = ptrtoint ptr %clipcount_cap to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %clipcount_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool18.not = icmp eq i32 %30, 0
  br i1 %tobool18.not, label %if.end13.cleanup_crit_edge, label %if.then19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %clips_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 196
  %try_clips_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 197
  %32 = call ptr @memcpy(ptr %clips_cap, ptr %try_clips_cap, i32 %mul2)
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end13.cleanup_crit_edge, %if.then11, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then11 ], [ %call1, %entry.cleanup_crit_edge ], [ -12, %if.then4.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_overlay(ptr noundef %file, ptr noundef %fh, i32 noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multiplanar, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %tobool1.not = icmp eq i32 %i, 0
  br i1 %tobool1.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %fb_vbase_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 191
  %4 = ptrtoint ptr %fb_vbase_cap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb_vbase_cap, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true5.critedge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true5.critedge:                          ; preds = %land.lhs.true
  %pixelformat = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 189, i32 3, i32 2
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixelformat, align 4
  %fmt_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 234
  %8 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fmt_cap, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp6.not = icmp eq i32 %7, %11
  br i1 %cmp6.not, label %land.lhs.true5.critedge.if.end15_crit_edge, label %do.body

land.lhs.true5.critedge.if.end15_crit_edge:       ; preds = %land.lhs.true5.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

do.body:                                          ; preds = %land.lhs.true5.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %12 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp8.not = icmp eq i32 %12, 0
  br i1 %cmp8.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name) #17
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true5.critedge.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %overlay_cap_owner = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 190
  %13 = ptrtoint ptr %overlay_cap_owner to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %overlay_cap_owner, align 8
  %tobool16.not = icmp eq ptr %14, null
  %cmp19.not = icmp eq ptr %14, %fh
  %or.cond = or i1 %tobool16.not, %cmp19.not
  br i1 %or.cond, label %if.end21, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %spec.select = select i1 %tobool1.not, ptr null, ptr %fh
  %15 = ptrtoint ptr %overlay_cap_owner to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %spec.select, ptr %overlay_cap_owner, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end15.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -25, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -16, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_g_fbuf(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multiplanar, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fb_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 189
  %4 = call ptr @memcpy(ptr %a, ptr %fb_cap, i32 36)
  %5 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 12, ptr %a, align 4
  %flags = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %flags, align 4
  %field = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3, i32 6
  %8 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %colorspace, align 4
  %priv = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3, i32 7
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_s_fbuf(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multiplanar, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call1, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call zeroext i1 @capable(i32 noundef 17) #14
  br i1 %call2, label %land.lhs.true.if.end4_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %overlay_cap_owner = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 190
  %4 = ptrtoint ptr %overlay_cap_owner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %overlay_cap_owner, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %base = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %base9 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 189, i32 2
  %8 = ptrtoint ptr %base9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %base9, align 4
  %fb_vbase_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 191
  %9 = ptrtoint ptr %fb_vbase_cap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %fb_vbase_cap, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %fmt11 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3
  %10 = ptrtoint ptr %fmt11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fmt11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %11)
  %cmp12 = icmp ult i32 %11, 48
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %lor.lhs.false

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end10
  %height = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %13)
  %cmp14 = icmp ult i32 %13, 32
  br i1 %cmp14, label %lor.lhs.false.cleanup_crit_edge, label %if.end16

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %pixelformat = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixelformat, align 4
  %call18 = tail call ptr @vivid_get_format(ptr noundef %1, i32 noundef %15) #14
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end16.cleanup_crit_edge, label %lor.lhs.false20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false20:                                  ; preds = %if.end16
  %can_do_overlay = getelementptr inbounds %struct.vivid_fmt, ptr %call18, i32 0, i32 2
  %16 = ptrtoint ptr %can_do_overlay to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %can_do_overlay, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool21.not = icmp eq i8 %17, 0
  br i1 %tobool21.not, label %lor.lhs.false20.cleanup_crit_edge, label %if.end23

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false20
  %bytesperline = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3, i32 4
  %18 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bytesperline, align 4
  %20 = ptrtoint ptr %fmt11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fmt11, align 4
  %bit_depth = getelementptr inbounds %struct.vivid_fmt, ptr %call18, i32 0, i32 8
  %22 = ptrtoint ptr %bit_depth to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bit_depth, align 4
  %mul = mul i32 %23, %21
  %div116 = lshr i32 %mul, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %div116)
  %cmp27 = icmp ult i32 %19, %div116
  br i1 %cmp27, label %if.end23.cleanup_crit_edge, label %if.end29

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %24 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height, align 4
  %mul34 = mul i32 %25, %19
  %sizeimage = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3, i32 5
  %26 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul34, i32 %27)
  %cmp36 = icmp ult i32 %mul34, %27
  br i1 %cmp36, label %if.end29.cleanup_crit_edge, label %if.end38

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %30, i32 -2130706432, i32 8454144) #18, !srcloc !134
  %32 = inttoptr i32 %31 to ptr
  %fb_vbase_cap41 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 191
  %33 = ptrtoint ptr %fb_vbase_cap41 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %fb_vbase_cap41, align 4
  %fb_cap42 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 189
  %34 = call ptr @memcpy(ptr %fb_cap42, ptr %a, i32 44)
  %overlay_cap_left = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 193
  %35 = ptrtoint ptr %overlay_cap_left to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %overlay_cap_left, align 4
  %fmt44 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 189, i32 3
  %37 = ptrtoint ptr %fmt44 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fmt44, align 4
  %sub = sub i32 0, %38
  %39 = tail call i32 @llvm.smax.i32(i32 %36, i32 %sub)
  %40 = tail call i32 @llvm.smin.i32(i32 %39, i32 %38)
  %41 = ptrtoint ptr %overlay_cap_left to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %overlay_cap_left, align 4
  %overlay_cap_top = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 192
  %42 = ptrtoint ptr %overlay_cap_top to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %overlay_cap_top, align 8
  %height59 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 189, i32 3, i32 1
  %44 = ptrtoint ptr %height59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height59, align 4
  %sub60 = sub i32 0, %45
  %46 = tail call i32 @llvm.smax.i32(i32 %43, i32 %sub60)
  %47 = tail call i32 @llvm.smin.i32(i32 %46, i32 %45)
  %48 = ptrtoint ptr %overlay_cap_top to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %overlay_cap_top, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end29.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %lor.lhs.false20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then8, %if.end4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.end38 ], [ -25, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -16, %if.end4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -22, %lor.lhs.false20.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ], [ -22, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %inp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %inp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inp, align 8
  %num_inputs = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 51
  %4 = ptrtoint ptr %num_inputs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_inputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %type, align 4
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %8, label %if.end.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb6
    i8 2, label %sw.bb18
    i8 3, label %sw.bb33
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 1
  %arrayidx3 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 54, i32 %3
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %11 to i32
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %conv4)
  %capabilities = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 7
  %12 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %capabilities, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %name7 = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 1
  %arrayidx11 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 54, i32 %3
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %14 to i32
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name7, i32 noundef 32, ptr noundef nonnull @.str.11, i32 noundef %conv12)
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %type, align 4
  %std = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 5
  %16 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 16777215, ptr %std, align 8
  %has_audio_inputs = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 59
  %17 = ptrtoint ptr %has_audio_inputs to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_audio_inputs, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %sw.bb6.if.end16_crit_edge, label %if.then15

sw.bb6.if.end16_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then15:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  %audioset = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 3
  %19 = ptrtoint ptr %audioset to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %audioset, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %sw.bb6.if.end16_crit_edge
  %capabilities17 = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 7
  %20 = ptrtoint ptr %capabilities17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %capabilities17, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %name19 = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 1
  %arrayidx23 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 54, i32 %3
  %21 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %22 to i32
  %call25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name19, i32 noundef 32, ptr noundef nonnull @.str.12, i32 noundef %conv24)
  %std26 = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 5
  %23 = ptrtoint ptr %std26 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 16777215, ptr %std26, align 8
  %has_audio_inputs27 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 59
  %24 = ptrtoint ptr %has_audio_inputs27 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %has_audio_inputs27, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool28.not = icmp eq i8 %25, 0
  br i1 %tobool28.not, label %sw.bb18.if.end31_crit_edge, label %if.then29

sw.bb18.if.end31_crit_edge:                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then29:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #16
  %audioset30 = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 3
  %26 = ptrtoint ptr %audioset30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %audioset30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %sw.bb18.if.end31_crit_edge
  %capabilities32 = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 7
  %27 = ptrtoint ptr %capabilities32 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %capabilities32, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end
  %name34 = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 1
  %arrayidx38 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 54, i32 %3
  %28 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %29 to i32
  %call40 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name34, i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef %conv39)
  %capabilities41 = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 7
  %30 = ptrtoint ptr %capabilities41 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %capabilities41, align 4
  %edid_blocks = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 180
  %31 = ptrtoint ptr %edid_blocks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %edid_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp42 = icmp eq i32 %32, 0
  br i1 %cmp42, label %sw.bb33.if.then47_crit_edge, label %lor.lhs.false

sw.bb33.if.then47_crit_edge:                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

lor.lhs.false:                                    ; preds = %sw.bb33
  %input = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %33 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %input, align 4
  %arrayidx44 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 166, i32 %34
  %35 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx44, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %36, label %lor.lhs.false.sw.epilog_crit_edge [
    i32 1, label %lor.lhs.false.if.then47_crit_edge
    i32 2, label %lor.lhs.false.if.then59_crit_edge
    i32 3, label %lor.lhs.false.if.then59_crit_edge167
  ]

lor.lhs.false.if.then59_crit_edge167:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then59

lor.lhs.false.if.then59_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then59

lor.lhs.false.if.then47_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then47:                                        ; preds = %lor.lhs.false.if.then47_crit_edge, %sw.bb33.if.then47_crit_edge
  %status = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 6
  %38 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status, align 8
  %or = or i32 %39, 2
  store i32 %or, ptr %status, align 8
  br label %sw.epilog

if.then59:                                        ; preds = %lor.lhs.false.if.then59_crit_edge, %lor.lhs.false.if.then59_crit_edge167
  %status60 = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 6
  %40 = ptrtoint ptr %status60 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status60, align 8
  %or61 = or i32 %41, 256
  store i32 %or61, ptr %status60, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then59, %if.then47, %lor.lhs.false.sw.epilog_crit_edge, %if.end31, %if.end16, %sw.bb, %if.end.sw.epilog_crit_edge
  %sensor_hflip = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 134
  %42 = ptrtoint ptr %sensor_hflip to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %sensor_hflip, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool64.not = icmp eq i8 %43, 0
  br i1 %tobool64.not, label %sw.epilog.if.end68_crit_edge, label %if.then65

sw.epilog.if.end68_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

if.then65:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %status66 = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 6
  %44 = ptrtoint ptr %status66 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status66, align 8
  %or67 = or i32 %45, 16
  store i32 %or67, ptr %status66, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %sw.epilog.if.end68_crit_edge
  %sensor_vflip = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 135
  %46 = ptrtoint ptr %sensor_vflip to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %sensor_vflip, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool69.not = icmp eq i8 %47, 0
  br i1 %tobool69.not, label %if.end68.if.end73_crit_edge, label %if.then70

if.end68.if.end73_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  %status71 = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 6
  %48 = ptrtoint ptr %status71 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %status71, align 8
  %or72 = or i32 %49, 32
  store i32 %or72, ptr %status71, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end68.if.end73_crit_edge
  %input74 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %50 = ptrtoint ptr %input74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %input74, align 4
  %52 = ptrtoint ptr %inp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %inp, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp76 = icmp eq i32 %51, %53
  br i1 %cmp76, label %land.lhs.true, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end73
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %51
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i.i, align 1
  %56 = add i8 %55, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %57 = icmp ult i8 %56, 2
  br i1 %57, label %if.then80, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then80:                                        ; preds = %land.lhs.true
  %arrayidx82 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 162, i32 %51
  %58 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx82, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %59, label %if.else97 [
    i32 1, label %if.then80.cleanup.sink.split_crit_edge
    i32 2, label %if.then94
  ]

if.then80.cleanup.sink.split_crit_edge:           ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then94:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.else97:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %55)
  %cmp.i = icmp eq i8 %55, 1
  br i1 %cmp.i, label %if.then99, label %if.else97.cleanup_crit_edge

if.else97.cleanup_crit_edge:                      ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then99:                                        ; preds = %if.else97
  %qual.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 10
  %61 = ptrtoint ptr %qual.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %qual.i, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %62, label %if.then99.cleanup_crit_edge [
    i32 1, label %if.then99.cleanup.sink.split_crit_edge
    i32 2, label %sw.bb104
  ]

if.then99.cleanup.sink.split_crit_edge:           ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then99.cleanup_crit_edge:                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb104:                                         ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb104, %if.then99.cleanup.sink.split_crit_edge, %if.then94, %if.then80.cleanup.sink.split_crit_edge
  %.sink165 = phi i32 [ 256, %if.then94 ], [ 256, %sw.bb104 ], [ 2, %if.then80.cleanup.sink.split_crit_edge ], [ 512, %if.then99.cleanup.sink.split_crit_edge ]
  %status86 = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 6
  %64 = ptrtoint ptr %status86 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %status86, align 8
  %or96 = or i32 %65, %.sink165
  store i32 %or96, ptr %status86, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then99.cleanup_crit_edge, %if.else97.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else97.cleanup_crit_edge ], [ 0, %if.then99.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end73.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  %num_inputs = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 51
  %4 = ptrtoint ptr %num_inputs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_inputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %i)
  %cmp.not = icmp ugt i32 %5, %i
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %i)
  %cmp2 = icmp eq i32 %3, %i
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %num_buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 242, i32 21
  %6 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %num_buffers.i187 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 244, i32 21
  %8 = ptrtoint ptr %num_buffers.i187 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_buffers.i187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i188.not = icmp eq i32 %9, 0
  br i1 %cmp.i188.not, label %lor.lhs.false7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %num_buffers.i189 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 246, i32 21
  %10 = ptrtoint ptr %num_buffers.i189 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_buffers.i189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i190.not = icmp eq i32 %11, 0
  br i1 %cmp.i190.not, label %if.end10, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false7
  %12 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %i, ptr %input, align 4
  %tvnorms = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 18, i32 22
  %13 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %tvnorms, align 8
  %arrayidx12 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %i
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12, align 1
  %.off = add i8 %15, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then21, label %if.end10.if.end29_crit_edge

if.end10.if.end29_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then21:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp25 = icmp ne i8 %15, 1
  %cond = zext i1 %cmp25 to i32
  %tv_audio_input = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 187
  %16 = ptrtoint ptr %tv_audio_input to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond, ptr %tv_audio_input, align 4
  %17 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 16777215, ptr %tvnorms, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then21, %if.end10.if.end29_crit_edge
  %18 = ptrtoint ptr %tvnorms to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tvnorms, align 8
  %tvnorms32 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 22, i32 22
  %20 = ptrtoint ptr %tvnorms32 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %tvnorms32, align 8
  %tvnorms35 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 32, i32 22
  %21 = ptrtoint ptr %tvnorms35 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %19, ptr %tvnorms35, align 8
  tail call void @vivid_update_format_cap(ptr noundef %1, i1 noundef zeroext false)
  %colorspace = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 96
  %22 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %colorspace, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end29.if.end63_crit_edge, label %if.then36

if.end29.if.end63_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then36:                                        ; preds = %if.end29
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx12, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %25, label %if.then36.if.end63_crit_edge [
    i8 0, label %if.then36.if.end63.sink.split_crit_edge
    i8 1, label %if.then36.sw.bb42_crit_edge
    i8 2, label %if.then36.sw.bb42_crit_edge209
    i8 3, label %sw.bb45
  ]

if.then36.sw.bb42_crit_edge209:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb42

if.then36.sw.bb42_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb42

if.then36.if.end63.sink.split_crit_edge:          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63.sink.split

if.then36.if.end63_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

sw.bb42:                                          ; preds = %if.then36.sw.bb42_crit_edge, %if.then36.sw.bb42_crit_edge209
  br label %if.end63.sink.split

sw.bb45:                                          ; preds = %if.then36
  %flags = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 175, i32 %3, i32 1, i32 0, i32 16
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %flags, align 1
  %and = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %sw.bb45.if.end63.sink.split_crit_edge, label %if.then47

sw.bb45.if.end63.sink.split_crit_edge:            ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63.sink.split

if.then47:                                        ; preds = %sw.bb45
  %width = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 237, i32 2
  %29 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %30)
  %cmp48 = icmp eq i32 %30, 720
  br i1 %cmp48, label %land.lhs.true, label %if.then47.if.else_crit_edge

if.then47.if.else_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.then47
  %height = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 237, i32 3
  %31 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 577, i32 %32)
  %cmp51 = icmp ult i32 %32, 577
  br i1 %cmp51, label %land.lhs.true.if.end63.sink.split_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true.if.end63.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then47.if.else_crit_edge
  br label %if.end63.sink.split

if.end63.sink.split:                              ; preds = %if.else, %land.lhs.true.if.end63.sink.split_crit_edge, %sw.bb45.if.end63.sink.split_crit_edge, %sw.bb42, %if.then36.if.end63.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb42 ], [ 1, %if.else ], [ 2, %if.then36.if.end63.sink.split_crit_edge ], [ 0, %land.lhs.true.if.end63.sink.split_crit_edge ], [ 2, %sw.bb45.if.end63.sink.split_crit_edge ]
  tail call fastcc void @v4l2_ctrl_s_ctrl(ptr noundef nonnull %23, i32 noundef %.sink)
  br label %if.end63

if.end63:                                         ; preds = %if.end63.sink.split, %if.then36.if.end63_crit_edge, %if.end29.if.end63_crit_edge
  %mul = shl i32 %i, 7
  %arrayidx64 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 131, i32 %i
  %33 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx64, align 4
  %add = add i32 %34, %mul
  %brightness65 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 78
  %35 = ptrtoint ptr %brightness65 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %brightness65, align 8
  %conv67 = zext i32 %mul to i64
  %add69 = add i32 %mul, 255
  %conv70 = zext i32 %add69 to i64
  %add72 = add i32 %mul, 128
  %conv73 = zext i32 %add72 to i64
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %40, i32 noundef 0) #14
  %call.i191 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %36, i64 noundef %conv67, i64 noundef %conv70, i64 noundef 1, i64 noundef %conv73) #14
  %41 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %44) #14
  %45 = ptrtoint ptr %brightness65 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %brightness65, align 8
  %handler.i.i192 = getelementptr inbounds %struct.v4l2_ctrl, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %handler.i.i192 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %handler.i.i192, align 8
  %lock.i.i193 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %lock.i.i193 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lock.i.i193, align 4
  tail call void @mutex_lock_nested(ptr noundef %50, i32 noundef 0) #14
  %call.i194 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %46, i32 noundef %add) #14
  %51 = ptrtoint ptr %handler.i.i192 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %handler.i.i192, align 8
  %lock.i2.i195 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %lock.i2.i195 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lock.i2.i195, align 4
  tail call void @mutex_unlock(ptr noundef %54) #14
  %55 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 100
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %58 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %input, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %59
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %61)
  %cmp.i196 = icmp eq i8 %61, 3
  tail call void @v4l2_ctrl_activate(ptr noundef %57, i1 noundef zeroext %cmp.i196) #14
  %ctrl_dv_timings = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 100, i32 1
  %62 = ptrtoint ptr %ctrl_dv_timings to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctrl_dv_timings, align 4
  %64 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %input, align 4
  %arrayidx.i198 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %65
  %66 = ptrtoint ptr %arrayidx.i198 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i198, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %67)
  %cmp.i199 = icmp eq i8 %67, 3
  br i1 %cmp.i199, label %land.rhs, label %if.end63.land.end_crit_edge

if.end63.land.end_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx81 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 166, i32 %65
  %68 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %69)
  %cmp82 = icmp eq i32 %69, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end63.land.end_crit_edge
  %70 = phi i1 [ false, %if.end63.land.end_crit_edge ], [ %cmp82, %land.rhs ]
  tail call void @v4l2_ctrl_activate(ptr noundef %63, i1 noundef zeroext %70) #14
  %71 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 99
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  %74 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %input, align 4
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %75
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i.i, align 1
  %78 = add i8 %77, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %78)
  %79 = icmp ult i8 %78, 2
  tail call void @v4l2_ctrl_activate(ptr noundef %73, i1 noundef zeroext %79) #14
  %ctrl_standard = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 99, i32 1
  %80 = ptrtoint ptr %ctrl_standard to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ctrl_standard, align 4
  %82 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %input, align 4
  %arrayidx.i.i201 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %83
  %84 = ptrtoint ptr %arrayidx.i.i201 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i.i201, align 1
  %86 = add i8 %85, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %86)
  %87 = icmp ult i8 %86, 2
  br i1 %87, label %land.rhs87, label %land.end.land.end91_crit_edge

land.end.land.end91_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end91

land.rhs87:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx89 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 162, i32 %83
  %88 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool90 = icmp ne i32 %89, 0
  br label %land.end91

land.end91:                                       ; preds = %land.rhs87, %land.end.land.end91_crit_edge
  %90 = phi i1 [ false, %land.end.land.end91_crit_edge ], [ %tobool90, %land.rhs87 ]
  tail call void @v4l2_ctrl_activate(ptr noundef %81, i1 noundef zeroext %90) #14
  %91 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %input, align 4
  %arrayidx.i203 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %92
  %93 = ptrtoint ptr %arrayidx.i203 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i203, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %94)
  %cmp.i204 = icmp eq i8 %94, 3
  br i1 %cmp.i204, label %if.then93, label %if.else103

if.then93:                                        ; preds = %land.end91
  call void @__sanitizer_cov_trace_pc() #16
  %95 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %55, align 8
  %arrayidx97 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 166, i32 %92
  %97 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx97, align 4
  tail call fastcc void @v4l2_ctrl_s_ctrl(ptr noundef %96, i32 noundef %98)
  %99 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %input, align 4
  %arrayidx101 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 171, i32 %100
  br label %cleanup.sink.split

if.else103:                                       ; preds = %land.end91
  %101 = add i8 %94, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %101)
  %102 = icmp ult i8 %101, 2
  br i1 %102, label %if.then105, label %if.else103.cleanup_crit_edge

if.else103.cleanup_crit_edge:                     ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then105:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #16
  %103 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %71, align 8
  %arrayidx109 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 162, i32 %92
  %105 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx109, align 4
  tail call fastcc void @v4l2_ctrl_s_ctrl(ptr noundef %104, i32 noundef %106)
  %107 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %input, align 4
  %arrayidx114 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 162, i32 %108
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then105, %if.then93
  %arrayidx101.sink = phi ptr [ %arrayidx101, %if.then93 ], [ %arrayidx114, %if.then105 ]
  %.sink207.in = phi ptr [ %ctrl_dv_timings, %if.then93 ], [ %ctrl_standard, %if.then105 ]
  %109 = ptrtoint ptr %.sink207.in to i32
  call void @__asan_load4_noabort(i32 %109)
  %.sink207 = load ptr, ptr %.sink207.in, align 4
  %110 = ptrtoint ptr %arrayidx101.sink to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx101.sink, align 4
  tail call fastcc void @v4l2_ctrl_s_ctrl(ptr noundef %.sink207, i32 noundef %111)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else103.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -16, %lor.lhs.false7.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %if.end4.cleanup_crit_edge ], [ 0, %if.else103.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vidioc_enumaudio(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %vin) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr [2 x %struct.v4l2_audio], ptr @vivid_audio_inputs, i32 0, i32 %1
  %2 = call ptr @memcpy(ptr %vin, ptr %arrayidx, i32 52)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_audio(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %vin) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %2 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %6 = add i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %7 = icmp ult i8 %6, 2
  br i1 %7, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %tv_audio_input = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 187
  %8 = ptrtoint ptr %tv_audio_input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tv_audio_input, align 4
  %arrayidx = getelementptr [2 x %struct.v4l2_audio], ptr @vivid_audio_inputs, i32 0, i32 %9
  %10 = call ptr @memcpy(ptr %vin, ptr %arrayidx, i32 52)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_audio(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %vin) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %2 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %6 = add i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %7 = icmp ult i8 %6, 2
  br i1 %7, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp ugt i32 %9, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %tv_audio_input = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 187
  %10 = ptrtoint ptr %tv_audio_input to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tv_audio_input, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_video_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %vf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %tv_freq = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 184
  %4 = ptrtoint ptr %tv_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_freq, align 8
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 2
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_video_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %vf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 2
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frequency, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 704)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 15328)
  %tv_freq = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 184
  %8 = ptrtoint ptr %tv_freq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tv_freq, align 8
  %input.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %9 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %input.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i = icmp eq i8 %12, 1
  br i1 %cmp.i, label %if.then9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @vivid_update_quality(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_video_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %vt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %vt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %4 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1 = icmp ugt i32 %5, 4
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %tv_audmode = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 185
  %6 = ptrtoint ptr %tv_audmode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tv_audmode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_video_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %vt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %vt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 3
  %4 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 114, ptr %capability, align 4
  %tv_audmode = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 185
  %5 = ptrtoint ptr %tv_audmode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tv_audmode, align 4
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %7 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %audmode, align 4
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 4
  %8 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 704, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 5
  %9 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 15328, ptr %rangehigh, align 4
  %afc = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 9
  %tobool.not.i = icmp eq ptr %afc, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %afc to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %afc, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %qual.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 10
  %11 = ptrtoint ptr %qual.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qual.i.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %12, label %if.end7.i [
    i32 0, label %if.else17
    i32 2, label %if.then12
  ]

if.end7.i:                                        ; preds = %if.end.i
  br i1 %tobool.not.i, label %if.end7.i.if.then15_crit_edge, label %if.then9.i

if.end7.i.if.then15_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %tv_freq.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 184
  %14 = ptrtoint ptr %tv_freq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_freq.i, align 8
  %sub.i = add i32 %15, -676
  %rem.i = urem i32 %sub.i, 96
  %sub10.i = add nsw i32 %rem.i, -16
  %16 = ptrtoint ptr %afc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub10.i, ptr %afc, align 4
  br label %if.then15

if.then12:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %signal8 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 8
  %17 = ptrtoint ptr %signal8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %signal8, align 4
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  %18 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %rxsubchans, align 4
  br label %if.end35

if.then15:                                        ; preds = %if.then9.i, %if.end7.i.if.then15_crit_edge
  %signal6 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 8
  %19 = ptrtoint ptr %signal6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 32768, ptr %signal6, align 4
  %rxsubchans16 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  %20 = ptrtoint ptr %rxsubchans16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %rxsubchans16, align 4
  br label %if.end35

if.else17:                                        ; preds = %if.end.i
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 8
  %21 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 65535, ptr %signal, align 4
  %tv_freq = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 184
  %22 = ptrtoint ptr %tv_freq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tv_freq, align 8
  %div = udiv i32 %23, 96
  %input = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %24 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %input, align 4
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 174, i32 %25
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx, align 8
  %and = and i64 %27, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 3, i32 4
  %rem = urem i32 %div, %cond
  %28 = zext i32 %rem to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %rem, label %if.else17.if.end35_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb19
    i32 2, label %sw.bb21
    i32 3, label %sw.bb32
  ]

if.else17.if.end35_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

sw.bb:                                            ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #16
  %rxsubchans18 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  %29 = ptrtoint ptr %rxsubchans18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %rxsubchans18, align 4
  br label %if.end35

sw.bb19:                                          ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #16
  %rxsubchans20 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  %30 = ptrtoint ptr %rxsubchans20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %rxsubchans20, align 4
  br label %if.end35

sw.bb21:                                          ; preds = %if.else17
  %rxsubchans30 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  br i1 %tobool.not, label %if.else29, label %if.then27

if.then27:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %rxsubchans30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 5, ptr %rxsubchans30, align 4
  br label %if.end35

if.else29:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %rxsubchans30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 12, ptr %rxsubchans30, align 4
  br label %if.end35

sw.bb32:                                          ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #16
  %rxsubchans33 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  %33 = ptrtoint ptr %rxsubchans33 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 6, ptr %rxsubchans33, align 4
  br label %if.end35

if.end35:                                         ; preds = %sw.bb32, %if.else29, %if.then27, %sw.bb19, %sw.bb, %if.else17.if.end35_crit_edge, %if.then15, %if.then12
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 1
  %call36 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.14, i32 noundef 32) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_querystd(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 163, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  %8 = add i8 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %9 = icmp ult i8 %8, 2
  br i1 %9, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 162, i32 %3
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3, align 4
  %.off = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %id, align 8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i = icmp eq i8 %7, 1
  br i1 %cmp.i, label %land.lhs.true, label %if.end9.if.else_crit_edge

if.end9.if.else_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end9
  %qual.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231, i32 10
  %13 = ptrtoint ptr %qual.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp12 = icmp eq i32 %14, 2
  br i1 %cmp12, label %if.then13, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %id, align 8
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end9.if.else_crit_edge
  %16 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %11, label %if.else29 [
    i32 0, label %if.then18
    i32 4, label %if.then26
  ]

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx20 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 174, i32 %3
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx20, align 8
  %19 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %id, align 8
  br label %cleanup

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx28 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 164, i32 %3
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx28, align 8
  %22 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %id, align 8
  br label %cleanup

if.else29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx30 = getelementptr [16 x i64], ptr @vivid_standard, i32 0, i32 %5
  %23 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx30, align 8
  %25 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %id, align 8
  %add = add i32 %5, 1
  %rem = and i32 %add, 15
  %26 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %input, align 4
  %arrayidx33 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 163, i32 %27
  %28 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %rem, ptr %arrayidx33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else29, %if.then26, %if.then18, %if.then13, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ -61, %entry.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %if.else29 ], [ 0, %if.then26 ], [ 0, %if.then13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %2 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %6 = add i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %7 = icmp ult i8 %6, 2
  br i1 %7, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 174, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %id)
  %cmp = icmp eq i64 %9, %id
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %num_buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 242, i32 21
  %10 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %num_buffers.i19 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 244, i32 21
  %12 = ptrtoint ptr %num_buffers.i19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_buffers.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i20.not = icmp eq i32 %13, 0
  br i1 %cmp.i20.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %id, ptr %arrayidx, align 8
  tail call void @vivid_update_format_cap(ptr noundef %1, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_s_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %_fh, ptr noundef %timings) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %2 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp.i = icmp eq i8 %5, 3
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef %timings, ptr noundef nonnull @vivid_dv_timings_cap, i32 noundef 0, ptr noundef null, ptr noundef null) #14
  br i1 %call2, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %6 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1
  %call.i24 = tail call zeroext i1 @v4l2_valid_dv_timings(ptr noundef %timings, ptr noundef nonnull @vivid_dv_timings_cap, ptr noundef null, ptr noundef null) #14
  br i1 %call.i24, label %if.end.i, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %6, align 1
  %hfrontporch.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 6
  %9 = ptrtoint ptr %hfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %hfrontporch.i, align 1
  %hsync.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 7
  %11 = ptrtoint ptr %hsync.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %hsync.i, align 1
  %hbackporch.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 8
  %13 = ptrtoint ptr %hbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %hbackporch.i, align 1
  %add.i = add i32 %10, %8
  %add1.i = add i32 %add.i, %12
  %add2.i = add i32 %add1.i, %14
  %height.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %height.i, align 1
  %vfrontporch.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 9
  %17 = ptrtoint ptr %vfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %vfrontporch.i, align 1
  %vsync.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 10
  %19 = ptrtoint ptr %vsync.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %vsync.i, align 1
  %vbackporch.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 11
  %21 = ptrtoint ptr %vbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %vbackporch.i, align 1
  %il_vfrontporch.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 12
  %23 = ptrtoint ptr %il_vfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %il_vfrontporch.i, align 1
  %il_vsync.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 13
  %25 = ptrtoint ptr %il_vsync.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %il_vsync.i, align 1
  %il_vbackporch.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 14
  %27 = ptrtoint ptr %il_vbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %il_vbackporch.i, align 1
  %add3.i = add i32 %18, %16
  %add4.i = add i32 %add3.i, %20
  %add5.i = add i32 %add4.i, %22
  %add6.i = add i32 %add5.i, %24
  %add7.i = add i32 %add6.i, %26
  %add8.i = add i32 %add7.i, %28
  %pixelclock.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 4
  %29 = ptrtoint ptr %pixelclock.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %pixelclock.i, align 1
  %conv.i = trunc i64 %30 to i32
  %div.i = udiv i32 %conv.i, %add2.i
  %standards.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 15
  %31 = ptrtoint ptr %standards.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %standards.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i25 = icmp ne i32 %32, 0
  %and.i = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = and i1 %cmp.i25, %tobool.not.i
  br i1 %or.cond.i, label %if.end.i.if.end18.i_crit_edge, label %if.then11.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.then11.i:                                      ; preds = %if.end.i
  %polarities.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 3
  %33 = ptrtoint ptr %polarities.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %polarities.i, align 1
  %interlaced.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %interlaced.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool14.i = icmp ne i32 %36, 0
  %call15.i = tail call zeroext i1 @v4l2_detect_cvt(i32 noundef %add8.i, i32 noundef %div.i, i32 noundef %20, i32 noundef %8, i32 noundef %34, i1 noundef zeroext %tobool14.i, ptr noundef %timings) #14
  br i1 %call15.i, label %if.then11.i.if.end5_crit_edge, label %if.then11.i.if.end18.i_crit_edge

if.then11.i.if.end18.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.then11.i.if.end5_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end18.i:                                       ; preds = %if.then11.i.if.end18.i_crit_edge, %if.end.i.if.end18.i_crit_edge
  %37 = ptrtoint ptr %standards.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %standards.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp20.i = icmp ne i32 %38, 0
  %and24.i = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %or.cond71.i = and i1 %cmp20.i, %tobool25.not.i
  br i1 %or.cond71.i, label %if.end18.i.cleanup_crit_edge, label %if.then26.i

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then26.i:                                      ; preds = %if.end18.i
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %6, align 1
  %41 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %height.i, align 1
  %rem.i.i = urem i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then26.i.if.else.i.i_crit_edge

if.then26.i.if.else.i.i_crit_edge:                ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.then26.i
  %mul.i.i = shl i32 %42, 2
  %div.i.i = udiv i32 %mul.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %40)
  %cmp.i.i = icmp eq i32 %div.i.i, %40
  br i1 %cmp.i.i, label %land.lhs.true.i.i.find_aspect_ratio.exit.i_crit_edge, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.i

land.lhs.true.i.i.find_aspect_ratio.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_aspect_ratio.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.then26.i.if.else.i.i_crit_edge
  %rem1.i.i = urem i32 %42, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i.i)
  %tobool2.not.i.i = icmp eq i32 %rem1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true3.i.i, label %if.else.i.i.if.else8.i.i_crit_edge

if.else.i.i.if.else8.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else8.i.i

land.lhs.true3.i.i:                               ; preds = %if.else.i.i
  %mul4.i.i = shl i32 %42, 4
  %div5.i.i = udiv i32 %mul4.i.i, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %div5.i.i, i32 %40)
  %cmp6.i.i = icmp eq i32 %div5.i.i, %40
  br i1 %cmp6.i.i, label %land.lhs.true3.i.i.find_aspect_ratio.exit.i_crit_edge, label %land.lhs.true3.i.i.if.else8.i.i_crit_edge

land.lhs.true3.i.i.if.else8.i.i_crit_edge:        ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else8.i.i

land.lhs.true3.i.i.find_aspect_ratio.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_aspect_ratio.exit.i

if.else8.i.i:                                     ; preds = %land.lhs.true3.i.i.if.else8.i.i_crit_edge, %if.else.i.i.if.else8.i.i_crit_edge
  %rem9.i.i = urem i32 %42, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem9.i.i)
  %tobool10.not.i.i = icmp eq i32 %rem9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true11.i.i, label %if.else8.i.i.if.else16.i.i_crit_edge

if.else8.i.i.if.else16.i.i_crit_edge:             ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else16.i.i

land.lhs.true11.i.i:                              ; preds = %if.else8.i.i
  %mul12.i.i = shl i32 %42, 4
  %div13.i.i = udiv i32 %mul12.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %div13.i.i, i32 %40)
  %cmp14.i.i = icmp eq i32 %div13.i.i, %40
  br i1 %cmp14.i.i, label %land.lhs.true11.i.i.find_aspect_ratio.exit.i_crit_edge, label %land.lhs.true11.i.i.if.else16.i.i_crit_edge

land.lhs.true11.i.i.if.else16.i.i_crit_edge:      ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else16.i.i

land.lhs.true11.i.i.find_aspect_ratio.exit.i_crit_edge: ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_aspect_ratio.exit.i

if.else16.i.i:                                    ; preds = %land.lhs.true11.i.i.if.else16.i.i_crit_edge, %if.else8.i.i.if.else16.i.i_crit_edge
  %rem17.i.i = and i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem17.i.i)
  %tobool18.not.i.i = icmp eq i32 %rem17.i.i, 0
  %mul20.i.i = mul i32 %42, 5
  %div2160.i.i = lshr i32 %mul20.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div2160.i.i, i32 %40)
  %cmp22.i.i = icmp eq i32 %div2160.i.i, %40
  %or.cond.i.i = and i1 %tobool18.not.i.i, %cmp22.i.i
  br i1 %or.cond.i.i, label %if.else16.i.i.find_aspect_ratio.exit.i_crit_edge, label %if.else24.i.i

if.else16.i.i.find_aspect_ratio.exit.i_crit_edge: ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_aspect_ratio.exit.i

if.else24.i.i:                                    ; preds = %if.else16.i.i
  br i1 %tobool2.not.i.i, label %land.lhs.true27.i.i, label %if.else24.i.i.if.else32.i.i_crit_edge

if.else24.i.i.if.else32.i.i_crit_edge:            ; preds = %if.else24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else32.i.i

land.lhs.true27.i.i:                              ; preds = %if.else24.i.i
  %mul28.i.i = mul i32 %42, 15
  %div29.i.i = udiv i32 %mul28.i.i, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %div29.i.i, i32 %40)
  %cmp30.i.i = icmp eq i32 %div29.i.i, %40
  br i1 %cmp30.i.i, label %land.lhs.true27.i.i.find_aspect_ratio.exit.i_crit_edge, label %land.lhs.true27.i.i.if.else32.i.i_crit_edge

land.lhs.true27.i.i.if.else32.i.i_crit_edge:      ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else32.i.i

land.lhs.true27.i.i.find_aspect_ratio.exit.i_crit_edge: ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_aspect_ratio.exit.i

if.else32.i.i:                                    ; preds = %land.lhs.true27.i.i.if.else32.i.i_crit_edge, %if.else24.i.i.if.else32.i.i_crit_edge
  br label %find_aspect_ratio.exit.i

find_aspect_ratio.exit.i:                         ; preds = %if.else32.i.i, %land.lhs.true27.i.i.find_aspect_ratio.exit.i_crit_edge, %if.else16.i.i.find_aspect_ratio.exit.i_crit_edge, %land.lhs.true11.i.i.find_aspect_ratio.exit.i_crit_edge, %land.lhs.true3.i.i.find_aspect_ratio.exit.i_crit_edge, %land.lhs.true.i.i.find_aspect_ratio.exit.i_crit_edge
  %.sink61.i.i = phi i32 [ 16, %if.else32.i.i ], [ 4, %land.lhs.true.i.i.find_aspect_ratio.exit.i_crit_edge ], [ 16, %land.lhs.true3.i.i.find_aspect_ratio.exit.i_crit_edge ], [ 16, %land.lhs.true11.i.i.find_aspect_ratio.exit.i_crit_edge ], [ 5, %if.else16.i.i.find_aspect_ratio.exit.i_crit_edge ], [ 15, %land.lhs.true27.i.i.find_aspect_ratio.exit.i_crit_edge ]
  %.sink.i.i = phi i32 [ 9, %if.else32.i.i ], [ 3, %land.lhs.true.i.i.find_aspect_ratio.exit.i_crit_edge ], [ 9, %land.lhs.true3.i.i.find_aspect_ratio.exit.i_crit_edge ], [ 10, %land.lhs.true11.i.i.find_aspect_ratio.exit.i_crit_edge ], [ 4, %if.else16.i.i.find_aspect_ratio.exit.i_crit_edge ], [ 9, %land.lhs.true27.i.i.find_aspect_ratio.exit.i_crit_edge ]
  %43 = ptrtoint ptr %vsync.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %vsync.i, align 1
  %polarities30.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 3
  %45 = ptrtoint ptr %polarities30.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %polarities30.i, align 1
  %interlaced31.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 2
  %47 = ptrtoint ptr %interlaced31.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %interlaced31.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool32.i = icmp ne i32 %48, 0
  %.fca.0.insert.i = insertvalue [2 x i32] poison, i32 %.sink61.i.i, 0
  %.fca.1.insert.i = insertvalue [2 x i32] %.fca.0.insert.i, i32 %.sink.i.i, 1
  %call33.i = tail call zeroext i1 @v4l2_detect_gtf(i32 noundef %add8.i, i32 noundef %div.i, i32 noundef %44, i32 noundef %46, i1 noundef zeroext %tobool32.i, [2 x i32] %.fca.1.insert.i, ptr noundef %timings) #14
  br i1 %call33.i, label %find_aspect_ratio.exit.i.if.end5_crit_edge, label %find_aspect_ratio.exit.i.cleanup_crit_edge

find_aspect_ratio.exit.i.cleanup_crit_edge:       ; preds = %find_aspect_ratio.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

find_aspect_ratio.exit.i.if.end5_crit_edge:       ; preds = %find_aspect_ratio.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end5:                                          ; preds = %find_aspect_ratio.exit.i.if.end5_crit_edge, %if.then11.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %49 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %input.i, align 4
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 175, i32 %50
  %call6 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef %arrayidx, i32 noundef 0, i1 noundef zeroext false) #14
  br i1 %call6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %num_buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 242, i32 21
  %51 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i26.not = icmp eq i32 %52, 0
  br i1 %cmp.i26.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %input.i, align 4
  %arrayidx14 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 175, i32 %54
  %55 = call ptr @memcpy(ptr %arrayidx14, ptr %timings, i32 132)
  tail call void @vivid_update_format_cap(ptr noundef %1, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %find_aspect_ratio.exit.i.cleanup_crit_edge, %if.end18.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ -16, %if.end8.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %find_aspect_ratio.exit.i.cleanup_crit_edge ], [ -22, %if.end18.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_match_dv_timings(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_query_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %_fh, ptr nocapture noundef writeonly %timings) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input1 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input1, align 4
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 170, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp eq i8 %7, 3
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 166, i32 %3
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %edid_blocks = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 180
  %10 = ptrtoint ptr %edid_blocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %edid_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4 = icmp eq i32 %11, 0
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %12 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %9, label %if.else28 [
    i32 2, label %if.end6.cleanup_crit_edge
    i32 3, label %if.then15
    i32 0, label %if.then20
    i32 4, label %if.then25
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_dv_timings_cap, ptr @vivid_dv_timings_cap, i32 0, i32 3, i32 0, i32 5) to i32), i32 8)
  %13 = load i64, ptr getelementptr inbounds (%struct.v4l2_dv_timings_cap, ptr @vivid_dv_timings_cap, i32 0, i32 3, i32 0, i32 5), align 4
  %mul = shl i64 %13, 1
  %pixelclock = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 4
  %14 = ptrtoint ptr %pixelclock to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %mul, ptr %pixelclock, align 1
  br label %cleanup

if.then20:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx21 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 175, i32 %3
  %15 = call ptr @memcpy(ptr %timings, ptr %arrayidx21, i32 132)
  br label %cleanup

if.then25:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx26 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 171, i32 %3
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx26, align 4
  %arrayidx27 = getelementptr [0 x %struct.v4l2_dv_timings], ptr @v4l2_dv_timings_presets, i32 0, i32 %17
  %18 = call ptr @memcpy(ptr %timings, ptr %arrayidx27, i32 132)
  br label %cleanup

if.else28:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx29 = getelementptr [0 x %struct.v4l2_dv_timings], ptr @v4l2_dv_timings_presets, i32 0, i32 %5
  %19 = call ptr @memcpy(ptr %timings, ptr %arrayidx29, i32 132)
  %add = add i32 %5, 1
  %query_dv_timings_size = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 169
  %20 = ptrtoint ptr %query_dv_timings_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %query_dv_timings_size, align 8
  %rem = urem i32 %add, %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %rem, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else28, %if.then25, %if.then20, %if.then15, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %if.then15 ], [ -61, %entry.cleanup_crit_edge ], [ -67, %lor.lhs.false.cleanup_crit_edge ], [ -67, %if.end.cleanup_crit_edge ], [ -37, %if.end6.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %if.else28 ], [ 0, %if.then20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_edid(ptr noundef %file, ptr nocapture noundef readnone %_fh, ptr nocapture noundef %edid) local_unnamed_addr #0 align 64 {
entry:
  %phys_addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phys_addr) #14
  %reserved = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 3
  %2 = call ptr @memset(ptr %reserved, i32 0, i32 20)
  %3 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %edid, align 4
  %num_inputs = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 51
  %5 = ptrtoint ptr %num_inputs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_inputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp ult i32 %4, %6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp2.not = icmp eq i8 %8, 3
  br i1 %cmp2.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %start_block = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 1
  %9 = ptrtoint ptr %start_block to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %blocks = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 2
  %11 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6 = icmp eq i32 %12, 0
  br i1 %cmp6, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %edid_blocks = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 180
  %13 = ptrtoint ptr %edid_blocks to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %edid_blocks, align 8
  %ctrl_tx_edid_present = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 110
  %14 = ptrtoint ptr %ctrl_tx_edid_present to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl_tx_edid_present, align 4
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %19, i32 noundef 0) #14
  %call.i120 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %15, i32 noundef 0) #14
  %20 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %23) #14
  %ctrl_tx_hotplug = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 111
  %24 = ptrtoint ptr %ctrl_tx_hotplug to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl_tx_hotplug, align 8
  %handler.i.i121 = getelementptr inbounds %struct.v4l2_ctrl, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %handler.i.i121 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %handler.i.i121, align 8
  %lock.i.i122 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %lock.i.i122 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lock.i.i122, align 4
  tail call void @mutex_lock_nested(ptr noundef %29, i32 noundef 0) #14
  %call.i123 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %25, i32 noundef 0) #14
  %30 = ptrtoint ptr %handler.i.i121 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %handler.i.i121, align 8
  %lock.i2.i124 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %lock.i2.i124 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lock.i2.i124, align 4
  tail call void @mutex_unlock(ptr noundef %33) #14
  %34 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %phys_addr, align 2
  br label %set_phys_addr

if.end11:                                         ; preds = %if.end5
  %edid_max_blocks = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 181
  %35 = ptrtoint ptr %edid_max_blocks to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %edid_max_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %36)
  %cmp13 = icmp ugt i32 %12, %36
  br i1 %cmp13, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %blocks, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %edid19 = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 4
  %38 = ptrtoint ptr %edid19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %edid19, align 4
  %mul = shl i32 %12, 7
  %call21 = tail call zeroext i16 @cec_get_edid_phys_addr(ptr noundef %39, i32 noundef %mul, ptr noundef null) #14
  %40 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %call21, ptr %phys_addr, align 2
  %call22 = call i32 @v4l2_phys_addr_validate(i16 noundef zeroext %call21, ptr noundef nonnull %phys_addr, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %num_buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 242, i32 21
  %41 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.not = icmp eq i32 %42, 0
  br i1 %cmp.i.not, label %if.end28, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  %43 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %blocks, align 4
  %edid_blocks30 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 180
  %45 = ptrtoint ptr %edid_blocks30 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %edid_blocks30, align 8
  %edid31 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 179
  %46 = ptrtoint ptr %edid31 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %edid31, align 4
  %48 = ptrtoint ptr %edid19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %edid19, align 4
  %50 = load i32, ptr %blocks, align 4
  %mul34 = shl i32 %50, 7
  %51 = call ptr @memcpy(ptr %47, ptr %49, i32 %mul34)
  %num_outputs = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 55
  %52 = ptrtoint ptr %num_outputs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_outputs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp35125.not = icmp eq i32 %53, 0
  br i1 %cmp35125.not, label %if.end28.for.end_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  br label %for.body

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end28.for.body_crit_edge
  %j.0129 = phi i32 [ %j.1, %for.inc.for.body_crit_edge ], [ 0, %if.end28.for.body_crit_edge ]
  %i.0127 = phi i32 [ %inc47, %for.inc.for.body_crit_edge ], [ 0, %if.end28.for.body_crit_edge ]
  %display_present.0126 = phi i32 [ %display_present.1, %for.inc.for.body_crit_edge ], [ 0, %if.end28.for.body_crit_edge ]
  %arrayidx37 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %i.0127
  %54 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %55)
  %cmp39 = icmp eq i8 %55, 3
  br i1 %cmp39, label %if.then41, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then41:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx43 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 219, i32 %i.0127
  %56 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx43, align 1, !range !124
  %58 = zext i8 %57 to i32
  %inc = add i32 %j.0129, 1
  %shl = shl nuw i32 %58, %j.0129
  %or = or i32 %shl, %display_present.0126
  br label %for.inc

for.inc:                                          ; preds = %if.then41, %for.body.for.inc_crit_edge
  %display_present.1 = phi i32 [ %or, %if.then41 ], [ %display_present.0126, %for.body.for.inc_crit_edge ]
  %j.1 = phi i32 [ %inc, %if.then41 ], [ %j.0129, %for.body.for.inc_crit_edge ]
  %inc47 = add nuw i32 %i.0127, 1
  %exitcond.not = icmp eq i32 %inc47, %53
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end28.for.end_crit_edge
  %display_present.0.lcssa = phi i32 [ 0, %if.end28.for.end_crit_edge ], [ %display_present.1, %for.inc.for.end_crit_edge ]
  %ctrl_tx_edid_present48 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 110
  %59 = ptrtoint ptr %ctrl_tx_edid_present48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctrl_tx_edid_present48, align 4
  call fastcc void @v4l2_ctrl_s_ctrl(ptr noundef %60, i32 noundef %display_present.0.lcssa)
  %ctrl_tx_hotplug50 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 111
  %61 = ptrtoint ptr %ctrl_tx_hotplug50 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ctrl_tx_hotplug50, align 8
  call fastcc void @v4l2_ctrl_s_ctrl(ptr noundef %62, i32 noundef %display_present.0.lcssa)
  br label %set_phys_addr

set_phys_addr:                                    ; preds = %for.end, %if.then8
  %cec_rx_adap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 352
  %63 = ptrtoint ptr %cec_rx_adap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cec_rx_adap, align 8
  %65 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %phys_addr, align 2
  call void @cec_s_phys_addr(ptr noundef %64, i16 noundef zeroext %66, i1 noundef zeroext false) #14
  br label %land.rhs

land.rhs:                                         ; preds = %cond.end.land.rhs_crit_edge, %set_phys_addr
  %i.1130 = phi i32 [ 0, %set_phys_addr ], [ %inc69, %cond.end.land.rhs_crit_edge ]
  %arrayidx55 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 353, i32 %i.1130
  %67 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx55, align 4
  %tobool56.not = icmp eq ptr %68, null
  br i1 %tobool56.not, label %land.rhs.cleanup_crit_edge, label %for.body57

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body57:                                       ; preds = %land.rhs
  %arrayidx61 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 219, i32 %i.1130
  %69 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx61, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool62.not = icmp eq i8 %70, 0
  br i1 %tobool62.not, label %for.body57.cond.end_crit_edge, label %cond.true

for.body57.cond.end_crit_edge:                    ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %phys_addr, align 2
  %73 = trunc i32 %i.1130 to i8
  %conv64 = add nuw nsw i8 %73, 1
  %call65 = call zeroext i16 @v4l2_phys_addr_for_input(i16 noundef zeroext %72, i8 noundef zeroext %conv64) #14
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body57.cond.end_crit_edge
  %cond = phi i16 [ %call65, %cond.true ], [ -1, %for.body57.cond.end_crit_edge ]
  call void @cec_s_phys_addr(ptr noundef nonnull %68, i16 noundef zeroext %cond, i1 noundef zeroext false) #14
  %inc69 = add nuw nsw i32 %i.1130, 1
  %exitcond132.not = icmp eq i32 %inc69, 16
  br i1 %exitcond132.not, label %cond.end.cleanup_crit_edge, label %cond.end.land.rhs_crit_edge

cond.end.land.rhs_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %cond.end.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then15, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -7, %if.then15 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call22, %if.end18.cleanup_crit_edge ], [ -16, %if.end25.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phys_addr) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @cec_get_edid_phys_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_phys_addr_validate(i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @v4l2_phys_addr_for_input(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_enum_framesizes(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %2 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %has_scaler_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 325
  %6 = ptrtoint ptr %has_scaler_cap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_scaler_cap, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %8 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixel_format, align 4
  %call2 = tail call ptr @vivid_get_format(ptr noundef %1, i32 noundef %9) #14
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %10 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %input.i, align 4
  %arrayidx.i33 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %11
  %12 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.i34 = icmp eq i8 %13, 0
  %14 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fsize, align 4
  br i1 %cmp.i34, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp7 = icmp ugt i32 %15, 5
  br i1 %cmp7, label %if.then6.cleanup_crit_edge, label %if.end9

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %type, align 4
  %17 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %arrayidx = getelementptr [6 x %struct.v4l2_frmsize_discrete], ptr @webcam_sizes, i32 0, i32 %15
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %17, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool13.not = icmp eq i32 %15, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %type16 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %21 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %type16, align 4
  %22 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %22, align 4
  %max_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %24 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16384, ptr %max_width, align 4
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 2
  %25 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %step_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 3
  %26 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %27 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8640, ptr %max_height, align 4
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 5
  %28 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %step_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11.cleanup_crit_edge, %if.end9, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 0, %if.end15 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then6.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_enum_frameintervals(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fival) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 1
  %2 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixel_format, align 4
  %call1 = tail call ptr @vivid_get_format(ptr noundef %1, i32 noundef %3) #14
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %input.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %4 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i = icmp eq i8 %7, 0
  br i1 %cmp.i, label %for.cond.preheader, label %if.then3

for.cond.preheader:                               ; preds = %if.end
  %width19 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 2
  %8 = ptrtoint ptr %width19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width19, align 4
  %height22 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 3
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %9, label %for.cond.preheader.cleanup_crit_edge [
    i32 320, label %land.lhs.true
    i32 640, label %land.lhs.true.1
    i32 1280, label %land.lhs.true.3
    i32 1920, label %land.lhs.true.4
    i32 3840, label %land.lhs.true.5
  ]

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %11 = ptrtoint ptr %fival to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fival, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not = icmp eq i32 %12, 0
  br i1 %tobool4.not, label %if.end6, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  %width = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 2
  %13 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width, align 4
  %15 = add i32 %14, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16369, i32 %15)
  %16 = icmp ult i32 %15, -16369
  br i1 %16, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %height = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 3
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  %19 = add i32 %18, -8641
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8625, i32 %19)
  %20 = icmp ult i32 %19, -8625
  br i1 %20, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 4
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %type, align 4
  %22 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5
  %timeperframe_vid_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 235
  %23 = ptrtoint ptr %timeperframe_vid_cap to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %timeperframe_vid_cap, align 8
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %22, align 4
  br label %cleanup

land.lhs.true:                                    ; preds = %for.cond.preheader
  %26 = ptrtoint ptr %height22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %27)
  %cmp25 = icmp eq i32 %27, 180
  br i1 %cmp25, label %land.lhs.true.if.end30_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.lhs.true.1:                                  ; preds = %for.cond.preheader
  %28 = ptrtoint ptr %height22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 360, i32 %29)
  %cmp25.1 = icmp eq i32 %29, 360
  br i1 %cmp25.1, label %land.lhs.true.1.if.end30_crit_edge, label %land.lhs.true.2

land.lhs.true.1.if.end30_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.lhs.true.2:                                  ; preds = %land.lhs.true.1
  %30 = ptrtoint ptr %height22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %31)
  %cmp25.2 = icmp eq i32 %31, 480
  br i1 %cmp25.2, label %land.lhs.true.2.if.end30_crit_edge, label %land.lhs.true.2.cleanup_crit_edge

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.2.if.end30_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.lhs.true.3:                                  ; preds = %for.cond.preheader
  %32 = ptrtoint ptr %height22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %33)
  %cmp25.3 = icmp eq i32 %33, 720
  br i1 %cmp25.3, label %land.lhs.true.3.if.end30_crit_edge, label %land.lhs.true.3.cleanup_crit_edge

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.3.if.end30_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.lhs.true.4:                                  ; preds = %for.cond.preheader
  %34 = ptrtoint ptr %height22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1080, i32 %35)
  %cmp25.4 = icmp eq i32 %35, 1080
  br i1 %cmp25.4, label %land.lhs.true.4.if.end30_crit_edge, label %land.lhs.true.4.cleanup_crit_edge

land.lhs.true.4.cleanup_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.4.if.end30_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.lhs.true.5:                                  ; preds = %for.cond.preheader
  %36 = ptrtoint ptr %height22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2160, i32 %37)
  %cmp25.5 = icmp eq i32 %37, 2160
  br i1 %cmp25.5, label %land.lhs.true.5.if.end30_crit_edge, label %land.lhs.true.5.cleanup_crit_edge

land.lhs.true.5.cleanup_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.5.if.end30_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true.5.if.end30_crit_edge, %land.lhs.true.4.if.end30_crit_edge, %land.lhs.true.3.if.end30_crit_edge, %land.lhs.true.2.if.end30_crit_edge, %land.lhs.true.1.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge
  %i.065.lcssa.neg = phi i32 [ 12, %land.lhs.true.if.end30_crit_edge ], [ 10, %land.lhs.true.1.if.end30_crit_edge ], [ 8, %land.lhs.true.2.if.end30_crit_edge ], [ 6, %land.lhs.true.3.if.end30_crit_edge ], [ 4, %land.lhs.true.4.if.end30_crit_edge ], [ 2, %land.lhs.true.5.if.end30_crit_edge ]
  %38 = ptrtoint ptr %fival to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fival, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %i.065.lcssa.neg)
  %cmp32.not = icmp ult i32 %39, %i.065.lcssa.neg
  br i1 %cmp32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %type35 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 4
  %40 = ptrtoint ptr %type35 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %type35, align 4
  %41 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5
  %arrayidx37 = getelementptr [12 x %struct.v4l2_fract], ptr @webcam_intervals, i32 0, i32 %39
  %42 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %arrayidx37, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %43, ptr %41, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end30.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge, %land.lhs.true.4.cleanup_crit_edge, %land.lhs.true.3.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end16, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ 0, %if.end16 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -22, %if.end30.cleanup_crit_edge ], [ -22, %land.lhs.true.5.cleanup_crit_edge ], [ -22, %land.lhs.true.4.cleanup_crit_edge ], [ -22, %land.lhs.true.3.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true.2.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_g_parm(ptr noundef %file, ptr nocapture readnone %priv, ptr nocapture noundef %parm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parm, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %4 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %multiplanar, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool.not, i32 1, i32 9
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cond)
  %cmp.not = icmp eq i32 %3, %cond
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %parm1 = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1
  %6 = ptrtoint ptr %parm1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4096, ptr %parm1, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %timeperframe_vid_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 235
  %7 = ptrtoint ptr %timeperframe_vid_cap to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %timeperframe_vid_cap, align 8
  %9 = ptrtoint ptr %timeperframe to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %timeperframe, align 4
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %readbuffers, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_s_parm(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %parm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %webcam_size_idx = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 182
  %2 = ptrtoint ptr %webcam_size_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %webcam_size_idx, align 8
  %.neg = mul i32 %3, -2
  %mul = add i32 %.neg, 12
  %4 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parm, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %6 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %multiplanar, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool.not, i32 1, i32 9
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cond)
  %cmp.not = icmp eq i32 %5, %cond
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %input.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %8 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %input.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.i = icmp eq i8 %11, 0
  br i1 %cmp.i, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %14 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %parm, align 4
  %multiplanar.i = getelementptr inbounds %struct.vivid_dev, ptr %13, i32 0, i32 50
  %16 = ptrtoint ptr %multiplanar.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %multiplanar.i, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 9
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %cond.i)
  %cmp.not.i = icmp eq i32 %15, %cond.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  %parm1.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1
  %18 = ptrtoint ptr %parm1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4096, ptr %parm1.i, align 4
  %timeperframe.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %timeperframe_vid_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %13, i32 0, i32 235
  %19 = ptrtoint ptr %timeperframe_vid_cap.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %timeperframe_vid_cap.i, align 8
  %21 = ptrtoint ptr %timeperframe.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %timeperframe.i, align 4
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %parm5 = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %tpf.sroa.9.0.timeperframe.sroa_idx = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %tpf.sroa.9.0.timeperframe.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %tpf.sroa.9.0.copyload = load i32, ptr %tpf.sroa.9.0.timeperframe.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tpf.sroa.9.0.copyload)
  %cmp6 = icmp eq i32 %tpf.sroa.9.0.copyload, 0
  br i1 %cmp6, label %if.then7, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %sub8 = add i32 %.neg, 11
  %arrayidx = getelementptr [12 x %struct.v4l2_fract], ptr @webcam_intervals, i32 0, i32 %sub8
  %tpf.sroa.9.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %23 = ptrtoint ptr %tpf.sroa.9.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %tpf.sroa.9.0.copyload48 = load i32, ptr %tpf.sroa.9.0.arrayidx.sroa_idx, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  %tpf.sroa.9.0 = phi i32 [ %tpf.sroa.9.0.copyload48, %if.then7 ], [ %tpf.sroa.9.0.copyload, %if.end4.if.end9_crit_edge ]
  %tpf.sroa.0.0.in = phi ptr [ %arrayidx, %if.then7 ], [ %timeperframe, %if.end4.if.end9_crit_edge ]
  %24 = ptrtoint ptr %tpf.sroa.0.0.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %tpf.sroa.0.0 = load i32, ptr %tpf.sroa.0.0.in, align 4
  %conv = zext i32 %tpf.sroa.0.0 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp1068.not = icmp eq i32 %mul, 0
  br i1 %cmp1068.not, label %if.end9.for.end_crit_edge, label %for.body.lr.ph

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end9
  %conv19 = zext i32 %tpf.sroa.9.0 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx11 = getelementptr [12 x %struct.v4l2_fract], ptr @webcam_intervals, i32 0, i32 %i.069
  %denominator12 = getelementptr [12 x %struct.v4l2_fract], ptr @webcam_intervals, i32 0, i32 %i.069, i32 1
  %25 = ptrtoint ptr %denominator12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %denominator12, align 4
  %conv13 = zext i32 %26 to i64
  %mul14 = mul nuw i64 %conv13, %conv
  %27 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx11, align 4
  %conv17 = zext i32 %28 to i64
  %mul20 = mul nuw i64 %conv17, %conv19
  call void @__sanitizer_cov_trace_cmp8(i64 %mul14, i64 %mul20)
  %cmp21.not = icmp ult i64 %mul14, %mul20
  br i1 %cmp21.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, %mul
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end9.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end9.for.end_crit_edge ], [ %i.069, %for.body.for.end_crit_edge ], [ %mul, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %mul)
  %cmp25 = icmp eq i32 %i.0.lcssa, %mul
  %sub28 = add i32 %.neg, 11
  %spec.select = select i1 %cmp25, i32 %sub28, i32 %i.0.lcssa
  %webcam_ival_idx = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 183
  %29 = ptrtoint ptr %webcam_ival_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select, ptr %webcam_ival_idx, align 4
  %arrayidx31 = getelementptr [12 x %struct.v4l2_fract], ptr @webcam_intervals, i32 0, i32 %spec.select
  %30 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %tpf.sroa.0.0.copyload45 = load i32, ptr %arrayidx31, align 4
  %tpf.sroa.9.0.arrayidx31.sroa_idx = getelementptr inbounds i8, ptr %arrayidx31, i32 4
  %31 = ptrtoint ptr %tpf.sroa.9.0.arrayidx31.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %tpf.sroa.9.0.copyload49 = load i32, ptr %tpf.sroa.9.0.arrayidx31.sroa_idx, align 4
  %cap_seq_resync = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 257
  %32 = ptrtoint ptr %cap_seq_resync to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %cap_seq_resync, align 8
  %timeperframe_vid_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 235
  %33 = ptrtoint ptr %timeperframe_vid_cap to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %tpf.sroa.0.0.copyload45, ptr %timeperframe_vid_cap, align 8
  %tpf.sroa.9.0.timeperframe_vid_cap.sroa_idx = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 235, i32 1
  %34 = ptrtoint ptr %tpf.sroa.9.0.timeperframe_vid_cap.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %tpf.sroa.9.0.copyload49, ptr %tpf.sroa.9.0.timeperframe_vid_cap.sroa_idx, align 4
  %35 = ptrtoint ptr %parm5 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4096, ptr %parm5, align 4
  %36 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %tpf.sroa.0.0.copyload45, ptr %timeperframe, align 4
  %37 = ptrtoint ptr %tpf.sroa.9.0.timeperframe.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %tpf.sroa.9.0.copyload49, ptr %tpf.sroa.9.0.timeperframe.sroa_idx, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end, %if.end.i
  %readbuffers.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 4
  %38 = ptrtoint ptr %readbuffers.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %readbuffers.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then2.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vivid_vid_can_loop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_start_generating_vid_cap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_stop_generating_vid_cap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_valid_dv_timings(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_detect_cvt(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_detect_gtf(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, [2 x i32], ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !103, !105, !107, !108, !110, !112}
!llvm.named.register.sp = !{!114}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @vivid_vid_cap_qops, !1, !"vivid_vid_cap_qops", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 265, i32 22}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 567, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vivid_try_fmt_vid_cap._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @vivid_try_fmt_vid_cap._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 682, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vivid_s_fmt_vid_cap._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @vivid_s_fmt_vid_cap._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 687, i32 3}
!15 = !{ptr @vivid_s_fmt_vid_cap._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @vivid_s_fmt_vid_cap._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1219, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @vivid_vid_cap_overlay._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @vivid_vid_cap_overlay._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1303, i32 42}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1308, i32 42}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1317, i32 42}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1325, i32 42}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1566, i32 20}
!32 = !{ptr @vivid_standard, !33, !"vivid_standard", i1 false, i1 false}
!33 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1571, i32 19}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1592, i32 2}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1593, i32 2}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1594, i32 2}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1595, i32 2}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1596, i32 2}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1597, i32 2}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1598, i32 2}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1599, i32 2}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1600, i32 2}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1601, i32 2}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1602, i32 2}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1603, i32 2}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1604, i32 2}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1605, i32 2}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1606, i32 2}
!64 = !{ptr @vivid_ctrl_standard_strings, !65, !"vivid_ctrl_standard_strings", i1 false, i1 false}
!65 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1591, i32 20}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 132, i32 2}
!68 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @vid_cap_queue_setup._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @vid_cap_queue_setup._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 134, i32 3}
!73 = !{ptr @vid_cap_queue_setup._entry.32, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @vid_cap_queue_setup._entry_ptr.34, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 146, i32 2}
!77 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @vid_cap_buf_prepare._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @vid_cap_buf_prepare._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 166, i32 4}
!82 = !{ptr @vid_cap_buf_prepare._entry.37, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @vid_cap_buf_prepare._entry_ptr.39, !81, !"_entry_ptr", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!86 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 227, i32 2}
!89 = !{ptr @vid_cap_start_streaming._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @vid_cap_start_streaming._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 253, i32 2}
!93 = !{ptr @vid_cap_stop_streaming._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @vid_cap_stop_streaming._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 210, i32 2}
!97 = !{ptr @vid_cap_buf_queue._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @vid_cap_buf_queue._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @webcam_sizes, !100, !"webcam_sizes", i1 false, i1 false}
!100 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 54, i32 43}
!101 = !{ptr @webcam_intervals, !102, !"webcam_intervals", i1 false, i1 false}
!102 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 67, i32 32}
!103 = !{ptr @formats_ovl, !104, !"formats_ovl", i1 false, i1 false}
!104 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 24, i32 31}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!107 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!112 = !{ptr @vivid_audio_inputs, !113, !"vivid_audio_inputs", i1 false, i1 false}
!113 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-cap.c", i32 1287, i32 32}
!114 = !{!"sp"}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{i8 0, i8 2}
!125 = !{!"branch_weights", i32 1, i32 2000}
!126 = !{!"branch_weights", i32 2000, i32 1}
!127 = !{i64 1168911, i64 1168938, i64 1168960, i64 1168988}
!128 = !{i64 1169319, i64 1169346, i64 1169379, i64 1169400, i64 1169427, i64 1169453}
!129 = !{i64 2152517488, i64 2152517513}
!130 = !{i64 2152516807, i64 2152516832}
!131 = !{i64 5012362}
!132 = !{i64 5012559}
!133 = !{i64 2152497792}
!134 = !{i64 2148927995, i64 2148928018, i64 2148928050, i64 2148928082, i64 2148928120, i64 2148928150}
