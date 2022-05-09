; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-vid-out.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-vid-out.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_audioout = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.98 }
%union.anon.98 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
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
%struct.v4l2_dv_timings = type { i32, %union.anon.96 }
%union.anon.96 = type { [32 x i32] }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.106, i32, i32 }
%union.anon.106 = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.vivid_fmt = type { i32, i32, i8, [3 x i8], i32, i8, i8, [3 x i32], [3 x i32] }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.vivid_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.v4l2_format = type { i32, %union.anon.110 }
%union.anon.110 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.111, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.111 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.v4l2_output = type { i32, [32 x i8], i32, i32, i32, i64, i32, [3 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.93, %union.anon.94, i32, ptr, i32, %struct.anon.95, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.93 = type { i64 }
%union.anon.94 = type { ptr }
%struct.anon.95 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_streamparm = type { i32, %union.anon.112 }
%union.anon.112 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@vivid_vid_out_qops = dso_local constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @vid_out_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr @vid_out_buf_out_validate, ptr null, ptr @vid_out_buf_prepare, ptr null, ptr null, ptr @vid_out_start_streaming, ptr @vid_out_stop_streaming, ptr @vid_out_buf_queue, ptr @vid_out_buf_request_complete }, [48 x i8] zeroinitializer }, align 32
@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@vivid_try_fmt_vid_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Fourcc format (0x%08x) unknown.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vivid_try_fmt_vid_out\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/media/test-drivers/vivid/vivid-vid-out.c\00", [47 x i8] zeroinitializer }, align 32
@vivid_try_fmt_vid_out._entry_ptr = internal global ptr @vivid_try_fmt_vid_out._entry, section ".printk_index", align 4
@vivid_min_rect = external dso_local local_unnamed_addr constant %struct.v4l2_rect, align 4
@vivid_max_rect = external dso_local local_unnamed_addr constant %struct.v4l2_rect, align 4
@vivid_s_fmt_vid_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: %s device busy\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vivid_s_fmt_vid_out\00", [44 x i8] zeroinitializer }, align 32
@vivid_s_fmt_vid_out._entry_ptr = internal global ptr @vivid_s_fmt_vid_out._entry, section ".printk_index", align 4
@vivid_vid_out_overlay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: unsupported output format for output overlay\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vivid_vid_out_overlay\00", [42 x i8] zeroinitializer }, align 32
@vivid_vid_out_overlay._entry_ptr = internal global ptr @vivid_vid_out_overlay._entry, section ".printk_index", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"S-Video %u\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HDMI %u\00", [24 x i8] zeroinitializer }, align 32
@vivid_audio_outputs = internal constant { [2 x %struct.v4l2_audioout], [56 x i8] } { [2 x %struct.v4l2_audioout] [%struct.v4l2_audioout { i32 0, [32 x i8] c"Line-Out 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, [2 x i32] zeroinitializer }, %struct.v4l2_audioout { i32 1, [32 x i8] c"Line-Out 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, [2 x i32] zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@vivid_dv_timings_cap = external dso_local constant %struct.v4l2_dv_timings_cap, align 4
@vid_out_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s: count=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vid_out_queue_setup\00", [44 x i8] zeroinitializer }, align 32
@vid_out_queue_setup._entry_ptr = internal global ptr @vid_out_queue_setup._entry, section ".printk_index", align 4
@vid_out_queue_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: %s: size[%u]=%u\0A\00", [41 x i8] zeroinitializer }, align 32
@vid_out_queue_setup._entry_ptr.13 = internal global ptr @vid_out_queue_setup._entry.11, section ".printk_index", align 4
@vid_out_buf_out_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vid_out_buf_out_validate\00", [39 x i8] zeroinitializer }, align 32
@vid_out_buf_out_validate._entry_ptr = internal global ptr @vid_out_buf_out_validate._entry, section ".printk_index", align 4
@vid_out_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.16, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vid_out_buf_prepare\00", [44 x i8] zeroinitializer }, align 32
@vid_out_buf_prepare._entry_ptr = internal global ptr @vid_out_buf_prepare._entry, section ".printk_index", align 4
@vid_out_buf_prepare._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s: %s the payload is too small for plane %u (%lu < %u)\0A\00", [37 x i8] zeroinitializer }, align 32
@vid_out_buf_prepare._entry_ptr.19 = internal global ptr @vid_out_buf_prepare._entry.17, section ".printk_index", align 4
@vid_out_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.20, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vid_out_start_streaming\00", [40 x i8] zeroinitializer }, align 32
@vid_out_start_streaming._entry_ptr = internal global ptr @vid_out_start_streaming._entry, section ".printk_index", align 4
@vid_out_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.21, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vid_out_stop_streaming\00", [41 x i8] zeroinitializer }, align 32
@vid_out_stop_streaming._entry_ptr = internal global ptr @vid_out_stop_streaming._entry, section ".printk_index", align 4
@vid_out_buf_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.22, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vid_out_buf_queue\00", [46 x i8] zeroinitializer }, align 32
@vid_out_buf_queue._entry_ptr = internal global ptr @vid_out_buf_queue._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@switch.table.vivid_try_fmt_vid_out = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2, i32 2, i32 1, i32 1, i32 1, i32 2], [40 x i8] zeroinitializer }, align 32
@switch.table.vivid_s_fmt_vid_out = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2, i32 2, i32 1, i32 1, i32 1, i32 2], [40 x i8] zeroinitializer }, align 32
@switch.table.vivid_vid_out_s_selection = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 1], [40 x i8] zeroinitializer }, align 32
@switch.table.vivid_vid_out_s_selection.26 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2, i32 2, i32 1, i32 1, i32 1, i32 2], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.29 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"vivid_vid_out_qops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 201, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 364, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 468, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 964, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1044, i32 42 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1052, i32 42 }
@___asan_gen_.73 = private unnamed_addr constant [20 x i8] c"vivid_audio_outputs\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1028, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 81, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 83, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 92, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 114, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 134, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 165, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 189, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private constant [52 x i8] c"../drivers/media/test-drivers/vivid/vivid-vid-out.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 149, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 230, i32 6 }
@___asan_gen_.134 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 214, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 174, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [35 x i8] c"switch.table.vivid_try_fmt_vid_out\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [33 x i8] c"switch.table.vivid_s_fmt_vid_out\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [39 x i8] c"switch.table.vivid_vid_out_s_selection\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [42 x i8] c"switch.table.vivid_vid_out_s_selection.26\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @vid_out_buf_out_validate._entry, ptr @vid_out_buf_out_validate._entry_ptr, ptr @vid_out_buf_prepare._entry, ptr @vid_out_buf_prepare._entry.17, ptr @vid_out_buf_prepare._entry_ptr, ptr @vid_out_buf_prepare._entry_ptr.19, ptr @vid_out_buf_queue._entry, ptr @vid_out_buf_queue._entry_ptr, ptr @vid_out_queue_setup._entry, ptr @vid_out_queue_setup._entry.11, ptr @vid_out_queue_setup._entry_ptr, ptr @vid_out_queue_setup._entry_ptr.13, ptr @vid_out_start_streaming._entry, ptr @vid_out_start_streaming._entry_ptr, ptr @vid_out_stop_streaming._entry, ptr @vid_out_stop_streaming._entry_ptr, ptr @vivid_s_fmt_vid_out._entry, ptr @vivid_s_fmt_vid_out._entry_ptr, ptr @vivid_try_fmt_vid_out._entry, ptr @vivid_try_fmt_vid_out._entry_ptr, ptr @vivid_vid_out_overlay._entry, ptr @vivid_vid_out_overlay._entry_ptr, ptr @vivid_vid_out_qops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @vivid_audio_outputs, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @switch.table.vivid_try_fmt_vid_out, ptr @switch.table.vivid_s_fmt_vid_out, ptr @switch.table.vivid_vid_out_s_selection, ptr @switch.table.vivid_vid_out_s_selection.26], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_vid_out_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_try_fmt_vid_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_s_fmt_vid_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_vid_out_overlay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_audio_outputs to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_out_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_out_queue_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_out_buf_out_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_out_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_out_buf_prepare._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_out_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_out_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_out_buf_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vivid_try_fmt_vid_out to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vivid_s_fmt_vid_out to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vivid_vid_out_s_selection to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vivid_vid_out_s_selection.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vid_out_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %fmt_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 278
  %2 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt_out, align 8
  %buffers = getelementptr inbounds %struct.vivid_fmt, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %buffers to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buffers, align 1
  %conv = zext i8 %5 to i32
  %height = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282, i32 3
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %bytesperline_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 208
  %8 = ptrtoint ptr %bytesperline_out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytesperline_out, align 4
  %mul = mul i32 %9, %7
  %data_offset = getelementptr inbounds %struct.vivid_fmt, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %data_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_offset, align 4
  %add = add i32 %mul, %11
  %planes4 = getelementptr inbounds %struct.vivid_fmt, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %planes4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %planes4, align 4
  %conv5 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %13)
  %cmp168 = icmp ult i8 %5, %13
  br i1 %cmp168, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %p.0170 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %conv, %entry.for.body_crit_edge ]
  %size.0169 = phi i32 [ %add15, %for.body.for.body_crit_edge ], [ %add, %entry.for.body_crit_edge ]
  %arrayidx8 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 208, i32 %p.0170
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8, align 4
  %mul9 = mul i32 %15, %7
  %arrayidx10 = getelementptr %struct.vivid_fmt, ptr %3, i32 0, i32 3, i32 %p.0170
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %17 to i32
  %div = udiv i32 %mul9, %conv11
  %arrayidx13 = getelementptr %struct.vivid_fmt, ptr %3, i32 0, i32 7, i32 %p.0170
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx13, align 4
  %add14 = add i32 %div, %size.0169
  %add15 = add i32 %add14, %19
  %inc = add nuw nsw i32 %p.0170, 1
  %exitcond.not = icmp eq i32 %inc, %conv5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %size.0.lcssa = phi i32 [ %add, %entry.for.end_crit_edge ], [ %add15, %for.body.for.end_crit_edge ]
  %field_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 280
  %20 = ptrtoint ptr %field_out to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %field_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %21)
  %cmp16 = icmp eq i32 %21, 7
  br i1 %cmp16, label %if.then, label %for.end.if.end20_crit_edge

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then:                                          ; preds = %for.end
  %fileio.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 29
  %22 = ptrtoint ptr %fileio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fileio.i, align 4
  %tobool.i.not = icmp eq ptr %23, null
  br i1 %tobool.i.not, label %if.then.if.end20_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %if.then.if.end20_crit_edge, %for.end.if.end20_crit_edge
  %queue_setup_error = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 153
  %24 = ptrtoint ptr %queue_setup_error to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %queue_setup_error, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %queue_setup_error to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %queue_setup_error, align 1
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %27 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool24.not = icmp eq i32 %28, 0
  br i1 %tobool24.not, label %for.cond53.preheader, label %if.then25

for.cond53.preheader:                             ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp54173.not = icmp eq i8 %5, 0
  br i1 %cmp54173.not, label %for.cond53.preheader.if.end68_crit_edge, label %cond.end.peel

for.cond53.preheader.if.end68_crit_edge:          ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

cond.end.peel:                                    ; preds = %for.cond53.preheader
  %29 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %size.0.lcssa, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %exitcond182.peel.not = icmp eq i8 %5, 1
  br i1 %exitcond182.peel.not, label %cond.end.peel.if.end68_crit_edge, label %cond.end.peel.cond.end_crit_edge

cond.end.peel.cond.end_crit_edge:                 ; preds = %cond.end.peel
  br label %cond.end

cond.end.peel.if.end68_crit_edge:                 ; preds = %cond.end.peel
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv)
  %cmp26.not = icmp eq i32 %28, %conv
  br i1 %cmp26.not, label %if.end29, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.then25
  %30 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %size.0.lcssa)
  %cmp31 = icmp ult i32 %31, %size.0.lcssa
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %for.cond35.preheader

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond35.preheader:                             ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp36171 = icmp ugt i8 %5, 1
  br i1 %cmp36171, label %for.cond35.preheader.for.body38_crit_edge, label %for.cond35.preheader.if.end68_crit_edge

for.cond35.preheader.if.end68_crit_edge:          ; preds = %for.cond35.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

for.cond35.preheader.for.body38_crit_edge:        ; preds = %for.cond35.preheader
  br label %for.body38

for.cond35:                                       ; preds = %for.body38
  %inc51 = add nuw nsw i32 %p.1172, 1
  %exitcond181.not = icmp eq i32 %inc51, %conv
  br i1 %exitcond181.not, label %for.cond35.if.end68_crit_edge, label %for.cond35.for.body38_crit_edge

for.cond35.for.body38_crit_edge:                  ; preds = %for.cond35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38

for.cond35.if.end68_crit_edge:                    ; preds = %for.cond35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

for.body38:                                       ; preds = %for.cond35.for.body38_crit_edge, %for.cond35.preheader.for.body38_crit_edge
  %p.1172 = phi i32 [ %inc51, %for.cond35.for.body38_crit_edge ], [ 1, %for.cond35.preheader.for.body38_crit_edge ]
  %arrayidx39 = getelementptr i32, ptr %sizes, i32 %p.1172
  %32 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx39, align 4
  %arrayidx41 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 208, i32 %p.1172
  %34 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx41, align 4
  %mul42 = mul i32 %35, %7
  %arrayidx44 = getelementptr %struct.vivid_fmt, ptr %3, i32 0, i32 7, i32 %p.1172
  %36 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %mul42, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add45)
  %cmp46 = icmp ult i32 %33, %add45
  br i1 %cmp46, label %for.body38.cleanup_crit_edge, label %for.cond35

for.body38.cleanup_crit_edge:                     ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %cond.end.peel.cond.end_crit_edge
  %p.2174 = phi i32 [ %inc66, %cond.end.cond.end_crit_edge ], [ 1, %cond.end.peel.cond.end_crit_edge ]
  %arrayidx59 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 208, i32 %p.2174
  %38 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx59, align 4
  %mul60 = mul i32 %39, %7
  %arrayidx62 = getelementptr %struct.vivid_fmt, ptr %3, i32 0, i32 7, i32 %p.2174
  %40 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx62, align 4
  %add63 = add i32 %mul60, %41
  %arrayidx64 = getelementptr i32, ptr %sizes, i32 %p.2174
  %42 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add63, ptr %arrayidx64, align 4
  %inc66 = add nuw nsw i32 %p.2174, 1
  %exitcond182.not = icmp eq i32 %inc66, %conv
  br i1 %exitcond182.not, label %cond.end.if.end68_crit_edge, label %cond.end.cond.end_crit_edge, !llvm.loop !76

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.end.if.end68_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.end68:                                         ; preds = %cond.end.if.end68_crit_edge, %for.cond35.if.end68_crit_edge, %for.cond35.preheader.if.end68_crit_edge, %cond.end.peel.if.end68_crit_edge, %for.cond53.preheader.if.end68_crit_edge
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %43 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_buffers, align 4
  %45 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nbuffers, align 4
  %add69 = add i32 %46, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add69)
  %cmp70 = icmp ult i32 %add69, 2
  br i1 %cmp70, label %if.then72, label %if.end68.if.end74_crit_edge

if.end68.if.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 2, %44
  %47 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end68.if.end74_crit_edge
  %48 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv, ptr %nplanes, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %49 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp75.not = icmp eq i32 %49, 0
  br i1 %cmp75.not, label %if.end74.do.end82_crit_edge, label %do.end

if.end74.do.end82_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end82

do.end:                                           ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %50 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nbuffers, align 4
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name, ptr noundef nonnull @.str.10, i32 noundef %51) #13
  br label %do.end82

do.end82:                                         ; preds = %do.end, %if.end74.do.end82_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp84176.not = icmp eq i8 %5, 0
  br i1 %cmp84176.not, label %do.end82.cleanup_crit_edge, label %do.body87.lr.ph

do.end82.cleanup_crit_edge:                       ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body87.lr.ph:                                  ; preds = %do.end82
  %name96 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  br label %do.body87

do.body87:                                        ; preds = %for.inc103.do.body87_crit_edge, %do.body87.lr.ph
  %p.3177 = phi i32 [ 0, %do.body87.lr.ph ], [ %inc104, %for.inc103.do.body87_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %52 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp88.not = icmp eq i32 %52, 0
  br i1 %cmp88.not, label %do.body87.for.inc103_crit_edge, label %do.end93

do.body87.for.inc103_crit_edge:                   ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103

do.end93:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx98 = getelementptr i32, ptr %sizes, i32 %p.3177
  %53 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx98, align 4
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name96, ptr noundef nonnull @.str.10, i32 noundef %p.3177, i32 noundef %54) #13
  br label %for.inc103

for.inc103:                                       ; preds = %do.end93, %do.body87.for.inc103_crit_edge
  %inc104 = add nuw nsw i32 %p.3177, 1
  %exitcond184.not = icmp eq i32 %inc104, %conv
  br i1 %exitcond184.not, label %for.inc103.cleanup_crit_edge, label %for.inc103.do.body87_crit_edge

for.inc103.do.body87_crit_edge:                   ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body87

for.inc103.cleanup_crit_edge:                     ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc103.cleanup_crit_edge, %do.end82.cleanup_crit_edge, %for.body38.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %if.then21, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then21 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.then25.cleanup_crit_edge ], [ -22, %if.end29.cleanup_crit_edge ], [ 0, %do.end82.cleanup_crit_edge ], [ 0, %for.inc103.cleanup_crit_edge ], [ -22, %for.body38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vid_out_buf_out_validate(ptr nocapture noundef %vb) #0 align 64 {
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %4 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name, ptr noundef nonnull @.str.15) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %field_out = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 280
  %5 = ptrtoint ptr %field_out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %field_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %cmp6.not = icmp eq i32 %6, 7
  %field9 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  br i1 %cmp6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %field9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %field9, align 4
  br label %if.end15

if.else:                                          ; preds = %do.end5
  %8 = ptrtoint ptr %field9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %field9, align 4
  %10 = and i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %switch = icmp eq i32 %10, 2
  br i1 %switch, label %if.else.if.end15_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %if.then7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vid_out_buf_prepare(ptr nocapture noundef readonly %vb) #0 align 64 {
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
  %fmt_out = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 278
  %4 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fmt_out, align 8
  %buffers = getelementptr inbounds %struct.vivid_fmt, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %buffers to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buffers, align 1
  %conv = zext i8 %7 to i32
  %height = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 282, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %bytesperline_out = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 208
  %10 = ptrtoint ptr %bytesperline_out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytesperline_out, align 4
  %mul = mul i32 %11, %9
  %planes3 = getelementptr inbounds %struct.vivid_fmt, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %planes3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %planes3, align 4
  %conv4 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %13)
  %cmp133 = icmp ult i8 %7, %13
  br i1 %cmp133, label %entry.for.body_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %p.0135 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %conv, %entry.for.body_crit_edge ]
  %size.0134 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %mul, %entry.for.body_crit_edge ]
  %arrayidx7 = getelementptr %struct.vivid_dev, ptr %3, i32 0, i32 208, i32 %p.0135
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7, align 4
  %mul8 = mul i32 %15, %9
  %arrayidx9 = getelementptr %struct.vivid_fmt, ptr %5, i32 0, i32 3, i32 %p.0135
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %17 to i32
  %div = udiv i32 %mul8, %conv10
  %add = add i32 %div, %size.0134
  %inc = add nuw nsw i32 %p.0135, 1
  %exitcond.not = icmp eq i32 %inc, %conv4
  br i1 %exitcond.not, label %for.body.do.body_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  %size.0.lcssa = phi i32 [ %mul, %entry.do.body_crit_edge ], [ %add, %for.body.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %18 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp11.not = icmp eq i32 %18, 0
  br i1 %cmp11.not, label %do.body.do.end16_crit_edge, label %do.end

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name, ptr noundef nonnull @.str.16) #13
  br label %do.end16

do.end16:                                         ; preds = %do.end, %do.body.do.end16_crit_edge
  %19 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fmt_out, align 8
  %cmp18 = icmp eq ptr %20, null
  br i1 %cmp18, label %do.end30, label %if.end46, !prof !78

do.end30:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 116, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end46:                                         ; preds = %do.end16
  %buf_prepare_error = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 154
  %21 = ptrtoint ptr %buf_prepare_error to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %buf_prepare_error, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool47.not = icmp eq i8 %22, 0
  br i1 %tobool47.not, label %for.cond51.preheader, label %if.then48

for.cond51.preheader:                             ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp52136.not = icmp eq i8 %7, 0
  br i1 %cmp52136.not, label %for.cond51.preheader.cleanup_crit_edge, label %for.body54.lr.ph

for.cond51.preheader.cleanup_crit_edge:           ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body54.lr.ph:                                 ; preds = %for.cond51.preheader
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %23 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_planes.i, align 8
  br label %for.body54

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %buf_prepare_error to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %buf_prepare_error, align 2
  br label %cleanup

for.body54:                                       ; preds = %for.inc85.for.body54_crit_edge, %for.body54.lr.ph
  %p.1138 = phi i32 [ 0, %for.body54.lr.ph ], [ %inc86, %for.inc85.for.body54_crit_edge ]
  %size.1137 = phi i32 [ %size.0.lcssa, %for.body54.lr.ph ], [ %add63, %for.inc85.for.body54_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p.1138)
  %tobool55.not = icmp eq i32 %p.1138, 0
  br i1 %tobool55.not, label %for.body54.if.end60_crit_edge, label %if.then56

for.body54.if.end60_crit_edge:                    ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then56:                                        ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx58 = getelementptr %struct.vivid_dev, ptr %3, i32 0, i32 208, i32 %p.1138
  %26 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx58, align 4
  %mul59 = mul i32 %27, %9
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %for.body54.if.end60_crit_edge
  %size.2 = phi i32 [ %mul59, %if.then56 ], [ %size.1137, %for.body54.if.end60_crit_edge ]
  %data_offset = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %p.1138, i32 7
  %28 = ptrtoint ptr %data_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_offset, align 4
  %add63 = add i32 %29, %size.2
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %p.1138)
  %cmp.i = icmp ugt i32 %24, %p.1138
  br i1 %cmp.i, label %if.then.i, label %if.end60.vb2_get_plane_payload.exit_crit_edge

if.end60.vb2_get_plane_payload.exit_crit_edge:    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %p.1138, i32 3
  %30 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %if.end60.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i = phi i32 [ %31, %if.then.i ], [ 0, %if.end60.vb2_get_plane_payload.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %add63)
  %cmp65 = icmp ult i32 %retval.0.i, %add63
  br i1 %cmp65, label %do.body68, label %for.inc85

do.body68:                                        ; preds = %vb2_get_plane_payload.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %32 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp69.not = icmp eq i32 %32, 0
  br i1 %cmp69.not, label %do.body68.cleanup_crit_edge, label %do.end74

do.body68.cleanup_crit_edge:                      ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end74:                                         ; preds = %do.body68
  %name77 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  br i1 %cmp.i, label %if.then.i128, label %do.end74.vb2_get_plane_payload.exit130_crit_edge

do.end74.vb2_get_plane_payload.exit130_crit_edge: ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_get_plane_payload.exit130

if.then.i128:                                     ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #12
  %bytesused.i127 = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %p.1138, i32 3
  %33 = ptrtoint ptr %bytesused.i127 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bytesused.i127, align 4
  br label %vb2_get_plane_payload.exit130

vb2_get_plane_payload.exit130:                    ; preds = %if.then.i128, %do.end74.vb2_get_plane_payload.exit130_crit_edge
  %retval.0.i129 = phi i32 [ %34, %if.then.i128 ], [ 0, %do.end74.vb2_get_plane_payload.exit130_crit_edge ]
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name77, ptr noundef nonnull @.str.16, i32 noundef %p.1138, i32 noundef %retval.0.i129, i32 noundef %add63) #13
  br label %cleanup

for.inc85:                                        ; preds = %vb2_get_plane_payload.exit
  %inc86 = add nuw nsw i32 %p.1138, 1
  %exitcond143.not = icmp eq i32 %inc86, %conv
  br i1 %exitcond143.not, label %for.inc85.cleanup_crit_edge, label %for.inc85.for.body54_crit_edge

for.inc85.for.body54_crit_edge:                   ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body54

for.inc85.cleanup_crit_edge:                      ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc85.cleanup_crit_edge, %vb2_get_plane_payload.exit130, %do.body68.cleanup_crit_edge, %if.then48, %for.cond51.preheader.cleanup_crit_edge, %do.end30
  %retval.0 = phi i32 [ -22, %do.end30 ], [ -22, %if.then48 ], [ -22, %vb2_get_plane_payload.exit130 ], [ -22, %do.body68.cleanup_crit_edge ], [ 0, %for.cond51.preheader.cleanup_crit_edge ], [ 0, %for.inc85.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vid_out_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %streaming.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 242, i32 28
  %2 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call zeroext i1 @vivid_vid_can_loop(ptr noundef %1) #10
  %can_loop_video = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 77
  %frombool = zext i1 %call2 to i8
  %3 = ptrtoint ptr %can_loop_video to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %can_loop_video, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vid_out_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 304
  %4 = ptrtoint ptr %vid_out_seq_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %vid_out_seq_count, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %5 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end.do.end8_crit_edge, label %do.end

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name, ptr noundef nonnull @.str.20) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %if.end.do.end8_crit_edge
  %start_streaming_error = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 155
  %6 = ptrtoint ptr %start_streaming_error to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %start_streaming_error, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end12, label %if.end12.thread

if.end12.thread:                                  ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %start_streaming_error to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %start_streaming_error, align 1
  br label %if.then14

if.end12:                                         ; preds = %do.end8
  %vid_out_streaming = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 305
  %call11 = tail call i32 @vivid_start_generating_vid_out(ptr noundef %1, ptr noundef %vid_out_streaming) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool13.not = icmp eq i32 %call11, 0
  br i1 %tobool13.not, label %if.end12.if.end30_crit_edge, label %if.end12.if.then14_crit_edge

if.end12.if.then14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.end12.if.end30_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then14:                                        ; preds = %if.end12.if.then14_crit_edge, %if.end12.thread
  %err.049 = phi i32 [ -22, %if.end12.thread ], [ %call11, %if.end12.if.then14_crit_edge ]
  %vid_out_active = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 287
  %9 = ptrtoint ptr %vid_out_active to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vid_out_active, align 8
  %cmp23.not51 = icmp eq ptr %10, %vid_out_active
  br i1 %cmp23.not51, label %if.then14.if.end30_crit_edge, label %if.then14.for.body_crit_edge

if.then14.for.body_crit_edge:                     ; preds = %if.then14
  br label %for.body

if.then14.if.end30_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.then14.for.body_crit_edge
  %.pn.in52 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %10, %if.then14.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in52, i32 -736
  %11 = ptrtoint ptr %.pn.in52 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn.in52, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in52) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in52, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %.pn.in52 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.pn.in52, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %18 = ptrtoint ptr %.pn.in52 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in52, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in52, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 3) #10
  %cmp23.not = icmp eq ptr %.pn, %vid_out_active
  br i1 %cmp23.not, label %list_del.exit.if.end30_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.if.end30_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end30:                                         ; preds = %list_del.exit.if.end30_crit_edge, %if.then14.if.end30_crit_edge, %if.end12.if.end30_crit_edge
  %err.050 = phi i32 [ 0, %if.end12.if.end30_crit_edge ], [ %err.049, %if.then14.if.end30_crit_edge ], [ %err.049, %list_del.exit.if.end30_crit_edge ]
  ret i32 %err.050
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vid_out_stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name, ptr noundef nonnull @.str.21) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %vid_out_streaming = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 305
  tail call void @vivid_stop_generating_vid_out(ptr noundef %1, ptr noundef %vid_out_streaming) #10
  %can_loop_video = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 77
  %3 = ptrtoint ptr %can_loop_video to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %can_loop_video, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vid_out_buf_queue(ptr noundef %vb) #0 align 64 {
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %4 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name, ptr noundef nonnull @.str.22) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %slock = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %slock) #10
  %list = getelementptr inbounds %struct.vivid_buffer, ptr %vb, i32 0, i32 1
  %vid_out_active = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 287
  %prev.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 287, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %6, ptr noundef %vid_out_active) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end8.list_add_tail.exit_crit_edge

do.end8.list_add_tail.exit_crit_edge:             ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vid_out_active, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.vivid_buffer, ptr %vb, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end8.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %slock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vid_out_buf_request_complete(ptr nocapture noundef readonly %vb) #0 align 64 {
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
  %req = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %ctrl_hdl_vid_out = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 21
  tail call void @v4l2_ctrl_request_complete(ptr noundef %5, ptr noundef %ctrl_hdl_vid_out) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_update_format_out(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %output = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 199
  %0 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %output, align 4
  %arrayidx = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 57, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cond = icmp eq i8 %3, 3
  br i1 %cond, label %sw.bb9, label %sw.default

sw.default:                                       ; preds = %entry
  %tv_field_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 209
  %4 = ptrtoint ptr %tv_field_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_field_out, align 8
  %field_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 280
  %6 = ptrtoint ptr %field_out to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %field_out, align 4
  %width = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 281, i32 2
  %7 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 720, ptr %width, align 8
  %std_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 200
  %8 = ptrtoint ptr %std_out to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %std_out, align 8
  %and = and i64 %9, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %sw.default.if.end_crit_edge

sw.default.if.end_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.default.if.end_crit_edge
  %.sink172 = phi i32 [ 576, %if.else ], [ 480, %sw.default.if.end_crit_edge ]
  %.sink171 = phi i32 [ 1000, %if.else ], [ 1001, %sw.default.if.end_crit_edge ]
  %.sink170 = phi i32 [ 25000, %if.else ], [ 30000, %sw.default.if.end_crit_edge ]
  %.sink = phi i32 [ 16385, %if.else ], [ 4096, %sw.default.if.end_crit_edge ]
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 281, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink172, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 279
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink171, ptr %12, align 4
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 279, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink170, ptr %14, align 4
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 207
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %16, align 8
  %colorspace_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 202
  %18 = ptrtoint ptr %colorspace_out to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %colorspace_out, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %19 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 201, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %19, align 1
  %width12 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 281, i32 2
  %22 = ptrtoint ptr %width12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %width12, align 8
  %height13 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 201, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %height13 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %height13, align 1
  %height15 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 281, i32 3
  %25 = ptrtoint ptr %height15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %height15, align 4
  %hfrontporch = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 201, i32 1, i32 0, i32 6
  %26 = ptrtoint ptr %hfrontporch to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %hfrontporch, align 1
  %hsync = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 201, i32 1, i32 0, i32 7
  %28 = ptrtoint ptr %hsync to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %hsync, align 1
  %hbackporch = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 201, i32 1, i32 0, i32 8
  %30 = ptrtoint ptr %hbackporch to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %hbackporch, align 1
  %add = add i32 %27, %21
  %add17 = add i32 %add, %29
  %add18 = add i32 %add17, %31
  %vfrontporch = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 201, i32 1, i32 0, i32 9
  %32 = ptrtoint ptr %vfrontporch to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %vfrontporch, align 1
  %vsync = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 201, i32 1, i32 0, i32 10
  %34 = ptrtoint ptr %vsync to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %vsync, align 1
  %vbackporch = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 201, i32 1, i32 0, i32 11
  %36 = ptrtoint ptr %vbackporch to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %vbackporch, align 1
  %il_vfrontporch = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 201, i32 1, i32 0, i32 12
  %38 = ptrtoint ptr %il_vfrontporch to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %il_vfrontporch, align 1
  %il_vsync = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 201, i32 1, i32 0, i32 13
  %40 = ptrtoint ptr %il_vsync to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %il_vsync, align 1
  %il_vbackporch = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 201, i32 1, i32 0, i32 14
  %42 = ptrtoint ptr %il_vbackporch to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %il_vbackporch, align 1
  %add20 = add i32 %33, %24
  %add21 = add i32 %add20, %35
  %add22 = add i32 %add21, %37
  %add23 = add i32 %add22, %39
  %add24 = add i32 %add23, %41
  %add25 = add i32 %add24, %43
  %mul = mul i32 %add25, %add18
  %standards.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 201, i32 1, i32 0, i32 15
  %44 = ptrtoint ptr %standards.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %standards.i, align 1
  %and.i = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb9.if.end.i_crit_edge, label %land.lhs.true.i

sw.bb9.if.end.i_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb9
  %46 = ptrtoint ptr %vsync to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %vsync, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %47)
  %cmp.i = icmp eq i32 %47, 8
  br i1 %cmp.i, label %land.lhs.true.i.land.lhs.true_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i.land.lhs.true_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %sw.bb9.if.end.i_crit_edge
  %and2.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.else33_crit_edge, label %land.lhs.true4.i

if.end.i.if.else33_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else33

land.lhs.true4.i:                                 ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 201, i32 1, i32 0, i32 16
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %flags.i, align 1
  %and5.i = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.if.else33_crit_edge, label %land.lhs.true4.i.land.lhs.true_crit_edge

land.lhs.true4.i.land.lhs.true_crit_edge:         ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true4.i.if.else33_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else33

land.lhs.true:                                    ; preds = %land.lhs.true4.i.land.lhs.true_crit_edge, %land.lhs.true.i.land.lhs.true_crit_edge
  %flags = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 201, i32 1, i32 0, i32 16
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %flags, align 1
  %and27 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %land.lhs.true.if.else33_crit_edge, label %if.then29

land.lhs.true.if.else33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else33

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %pixelclock30 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 201, i32 1, i32 0, i32 4
  %52 = ptrtoint ptr %pixelclock30 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %pixelclock30, align 1
  %mul31 = mul i64 %53, 1000
  %54 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9011446405638332408, i64 %mul31, i32 0) #14, !srcloc !79
  %asmresult.i.i.i = extractvalue { i64, i32 } %54, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %54, 1
  %55 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9011446405638332408, i64 %mul31, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #14, !srcloc !80
  %asmresult10.i.i.i = extractvalue { i64, i32 } %55, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 9
  %extract.t178 = trunc i64 %div1581.i.i to i32
  br label %if.end35

if.else33:                                        ; preds = %land.lhs.true.if.else33_crit_edge, %land.lhs.true4.i.if.else33_crit_edge, %if.end.i.if.else33_crit_edge
  %pixelclock34 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 201, i32 1, i32 0, i32 4
  %56 = ptrtoint ptr %pixelclock34 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %57 = load i64, ptr %pixelclock34, align 1
  %extract.t177 = trunc i64 %57 to i32
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then29
  %.sink176.off0 = phi i32 [ %extract.t177, %if.else33 ], [ %extract.t178, %if.then29 ]
  %timeperframe_vid_out36 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 279
  %div = udiv i32 %mul, 100
  %div41 = udiv i32 %.sink176.off0, 100
  %58 = ptrtoint ptr %timeperframe_vid_out36 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %div, ptr %timeperframe_vid_out36, align 4
  %.compoundliteral37.sroa.2.0.timeperframe_vid_out36.sroa_idx = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 279, i32 1
  %59 = ptrtoint ptr %.compoundliteral37.sroa.2.0.timeperframe_vid_out36.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div41, ptr %.compoundliteral37.sroa.2.0.timeperframe_vid_out36.sroa_idx, align 4
  %interlaced = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 201, i32 1, i32 0, i32 2
  %60 = ptrtoint ptr %interlaced to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %interlaced, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool42.not = icmp eq i32 %61, 0
  %.sink173 = select i1 %tobool42.not, i32 1, i32 7
  %62 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 280
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.sink173, ptr %62, align 4
  %dvi_d_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 215
  %64 = ptrtoint ptr %dvi_d_out to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %dvi_d_out, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool48.not = icmp eq i8 %65, 0
  br i1 %tobool48.not, label %land.lhs.true49, label %if.end35.if.else65_crit_edge

if.end35.if.else65_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else65

land.lhs.true49:                                  ; preds = %if.end35
  %flags50 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 201, i32 1, i32 0, i32 16
  %66 = ptrtoint ptr %flags50 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %flags50, align 1
  %and51 = and i32 %67, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %land.lhs.true49.if.else65_crit_edge, label %if.then53

land.lhs.true49.if.else65_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else65

if.then53:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %21)
  %cmp = icmp eq i32 %21, 720
  call void @__sanitizer_cov_trace_const_cmp4(i32 577, i32 %24)
  %cmp58 = icmp ult i32 %24, 577
  %or.cond = select i1 %cmp, i1 %cmp58, i1 false
  %colorspace_out61 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 202
  br i1 %or.cond, label %if.then60, label %if.else62

if.then60:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %colorspace_out61 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %colorspace_out61, align 4
  br label %sw.epilog

if.else62:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %colorspace_out61 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 3, ptr %colorspace_out61, align 4
  br label %sw.epilog

if.else65:                                        ; preds = %land.lhs.true49.if.else65_crit_edge, %if.end35.if.else65_crit_edge
  %colorspace_out66 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 202
  %70 = ptrtoint ptr %colorspace_out66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 8, ptr %colorspace_out66, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else65, %if.else62, %if.then60, %if.end
  %xfer_func_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 206
  %71 = ptrtoint ptr %xfer_func_out to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %xfer_func_out, align 4
  %ycbcr_enc_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 203
  %72 = ptrtoint ptr %ycbcr_enc_out to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %ycbcr_enc_out, align 8
  %hsv_enc_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 204
  %73 = ptrtoint ptr %hsv_enc_out to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 128, ptr %hsv_enc_out, align 4
  %quantization_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 205
  %74 = ptrtoint ptr %quantization_out to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %quantization_out, align 8
  %compose_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 284
  %sink_rect68 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 281
  %75 = call ptr @memcpy(ptr %compose_out, ptr %sink_rect68, i32 16)
  %compose_bounds_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 285
  %76 = call ptr @memcpy(ptr %compose_bounds_out, ptr %sink_rect68, i32 16)
  %crop_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 283
  %77 = call ptr @memcpy(ptr %crop_out, ptr %sink_rect68, i32 16)
  %field_out71 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 280
  %78 = ptrtoint ptr %field_out71 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %field_out71, align 4
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values)
  switch i32 %79, label %sw.epilog.if.end85_crit_edge [
    i32 3, label %sw.epilog.if.then81_crit_edge
    i32 2, label %sw.epilog.if.then81_crit_edge179
    i32 7, label %sw.epilog.if.then81_crit_edge180
  ]

sw.epilog.if.then81_crit_edge180:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then81

sw.epilog.if.then81_crit_edge179:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then81

sw.epilog.if.then81_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then81

sw.epilog.if.end85_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then81:                                        ; preds = %sw.epilog.if.then81_crit_edge, %sw.epilog.if.then81_crit_edge179, %sw.epilog.if.then81_crit_edge180
  %height83 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 283, i32 3
  %81 = ptrtoint ptr %height83 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %height83, align 4
  %div84163 = lshr i32 %82, 1
  store i32 %div84163, ptr %height83, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %sw.epilog.if.end85_crit_edge
  %fmt_out_rect = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 282
  %83 = call ptr @memcpy(ptr %fmt_out_rect, ptr %crop_out, i32 16)
  %fmt_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 278
  %84 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fmt_out, align 8
  %planes166 = getelementptr inbounds %struct.vivid_fmt, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %planes166 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %planes166, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp88168.not = icmp eq i8 %87, 0
  br i1 %cmp88168.not, label %if.end85.for.end_crit_edge, label %for.body.lr.ph

if.end85.for.end_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end85
  %width91 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 281, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %88 = phi ptr [ %85, %for.body.lr.ph ], [ %95, %for.body.for.body_crit_edge ]
  %p.0169 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %89 = ptrtoint ptr %width91 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %width91, align 8
  %arrayidx93 = getelementptr %struct.vivid_fmt, ptr %88, i32 0, i32 8, i32 %p.0169
  %91 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx93, align 4
  %mul94 = mul i32 %92, %90
  %div95162 = lshr i32 %mul94, 3
  %arrayidx96 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 208, i32 %p.0169
  %93 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %div95162, ptr %arrayidx96, align 4
  %inc = add nuw nsw i32 %p.0169, 1
  %94 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fmt_out, align 8
  %planes = getelementptr inbounds %struct.vivid_fmt, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %planes to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %planes, align 4
  %conv87 = zext i8 %97 to i32
  %cmp88 = icmp ult i32 %inc, %conv87
  br i1 %cmp88, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end85.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_g_fmt_vid_out(ptr noundef %file, ptr nocapture readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %fmt_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 278
  %2 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt_out, align 8
  %width = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 8
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %fmt, align 1
  %height = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282, i32 3
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height4 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %height4, align 1
  %field_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 280
  %10 = ptrtoint ptr %field_out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %field_out, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %field, align 1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %pixelformat, align 1
  %colorspace_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 202
  %16 = ptrtoint ptr %colorspace_out to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %colorspace_out, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %colorspace to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %colorspace, align 1
  %xfer_func_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 206
  %19 = ptrtoint ptr %xfer_func_out to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xfer_func_out, align 4
  %conv = trunc i32 %20 to i8
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %21 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %xfer_func, align 1
  %ycbcr_enc_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 203
  %22 = ptrtoint ptr %ycbcr_enc_out to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ycbcr_enc_out, align 8
  %conv5 = trunc i32 %23 to i8
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv5, ptr %24, align 1
  %quantization_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 205
  %26 = ptrtoint ptr %quantization_out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %quantization_out, align 8
  %conv6 = trunc i32 %27 to i8
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %28 = ptrtoint ptr %quantization to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv6, ptr %quantization, align 1
  %buffers = getelementptr inbounds %struct.vivid_fmt, ptr %3, i32 0, i32 6
  %29 = ptrtoint ptr %buffers to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %buffers, align 1
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %31 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp78.not = icmp eq i8 %30, 0
  br i1 %cmp78.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %p.079 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 208, i32 %p.079
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %arrayidx10 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %p.079
  %bytesperline = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %p.079, i32 1
  %34 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %bytesperline, align 1
  %35 = ptrtoint ptr %height4 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %height4, align 1
  %mul = mul i32 %36, %33
  %arrayidx15 = getelementptr %struct.vivid_fmt, ptr %3, i32 0, i32 7, i32 %p.079
  %37 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx15, align 4
  %add = add i32 %mul, %38
  %39 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %add, ptr %arrayidx10, align 1
  %inc = add nuw nsw i32 %p.079, 1
  %40 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_planes, align 1
  %conv8 = zext i8 %41 to i32
  %cmp = icmp ult i32 %inc, %conv8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %42 = ptrtoint ptr %buffers to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %buffers, align 1
  %planes = getelementptr inbounds %struct.vivid_fmt, ptr %3, i32 0, i32 5
  %44 = ptrtoint ptr %planes to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %planes, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp2281 = icmp ult i8 %43, %45
  br i1 %cmp2281, label %for.body24.lr.ph, label %for.end.for.end37_crit_edge

for.end.for.end37_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end37

for.body24.lr.ph:                                 ; preds = %for.end
  %conv19 = zext i8 %43 to i32
  %46 = ptrtoint ptr %height4 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %height4, align 1
  %plane_fmt31 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  br label %for.body24

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.body24.lr.ph
  %p.182 = phi i32 [ %conv19, %for.body24.lr.ph ], [ %inc36, %for.body24.for.body24_crit_edge ]
  %arrayidx26 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 208, i32 %p.182
  %48 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx26, align 4
  %mul28 = mul i32 %47, %49
  %arrayidx29 = getelementptr %struct.vivid_fmt, ptr %3, i32 0, i32 3, i32 %p.182
  %50 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %51 to i32
  %div = udiv i32 %mul28, %conv30
  %52 = ptrtoint ptr %plane_fmt31 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %plane_fmt31, align 1
  %add34 = add i32 %53, %div
  store i32 %add34, ptr %plane_fmt31, align 1
  %inc36 = add nuw nsw i32 %p.182, 1
  %54 = ptrtoint ptr %planes to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %planes, align 4
  %conv21 = zext i8 %55 to i32
  %cmp22 = icmp ult i32 %inc36, %conv21
  br i1 %cmp22, label %for.body24.for.body24_crit_edge, label %for.body24.for.end37_crit_edge

for.body24.for.end37_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end37

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24

for.end37:                                        ; preds = %for.body24.for.end37_crit_edge, %for.end.for.end37_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_try_fmt_vid_out(ptr noundef %file, ptr nocapture readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 201, i32 1
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %pixelformat, align 1
  %call2 = tail call ptr @vivid_get_format(ptr noundef %1, i32 noundef %4) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.body, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %5 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %do.body.do.end9_crit_edge, label %do.end

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %pixelformat, align 1
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %7) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 1448695129, ptr %pixelformat, align 1
  %call12 = tail call ptr @vivid_get_format(ptr noundef %1, i32 noundef 1448695129) #10
  br label %if.end13

if.end13:                                         ; preds = %do.end9, %entry.if.end13_crit_edge
  %fmt1.0 = phi ptr [ %call2, %entry.if.end13_crit_edge ], [ %call12, %do.end9 ]
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %output.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 199
  %9 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %output.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %12, label %if.end13.vivid_field_out.exit_crit_edge [
    i8 2, label %if.then.i
    i8 3, label %if.then3.i
  ]

if.end13.vivid_field_out.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_field_out.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %field, align 1
  %field.off.i = add i32 %15, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %field.off.i)
  %switch.i = icmp ult i32 %field.off.i, 5
  %field..i = select i1 %switch.i, i32 %15, i32 4
  br label %vivid_field_out.exit

if.then3.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %interlaced.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 201, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %interlaced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 7
  br label %vivid_field_out.exit

vivid_field_out.exit:                             ; preds = %if.then3.i, %if.then.i, %if.end13.vivid_field_out.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.then3.i ], [ %field..i, %if.then.i ], [ 1, %if.end13.vivid_field_out.exit_crit_edge ]
  %18 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %retval.0.i, ptr %field, align 1
  %19 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %output.i.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %20
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp.i = icmp eq i8 %22, 2
  br i1 %cmp.i, label %if.then17, label %if.else

if.then17:                                        ; preds = %vivid_field_out.exit
  call void @__sanitizer_cov_trace_pc() #12
  %std_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 200
  %23 = ptrtoint ptr %std_out to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %std_out, align 8
  %and = and i64 %24, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool18.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool18.not, i32 576, i32 480
  br label %if.end20

if.else:                                          ; preds = %vivid_field_out.exit
  call void @__sanitizer_cov_trace_pc() #12
  %width = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 281, i32 2
  %25 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 281, i32 3
  %27 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  %w.0 = phi i32 [ 720, %if.then17 ], [ %26, %if.else ]
  %h.0 = phi i32 [ %cond, %if.then17 ], [ %28, %if.else ]
  %switch.tableidx = add i32 %retval.0.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %29 = icmp ult i32 %switch.tableidx, 6
  br i1 %29, label %switch.lookup, label %if.end20.if.end29_crit_edge

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

switch.lookup:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.vivid_try_fmt_vid_out, i32 0, i32 %switch.tableidx
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end29

if.end29:                                         ; preds = %switch.lookup, %if.end20.if.end29_crit_edge
  %factor.0 = phi i32 [ 1, %if.end20.if.end29_crit_edge ], [ %switch.load, %switch.lookup ]
  %has_scaler_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 328
  %31 = ptrtoint ptr %has_scaler_out to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %has_scaler_out, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool30.not = icmp eq i8 %32, 0
  br i1 %tobool30.not, label %land.lhs.true, label %if.end29.if.else37_crit_edge

if.end29.if.else37_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else37

land.lhs.true:                                    ; preds = %if.end29
  %has_crop_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 326
  %33 = ptrtoint ptr %has_crop_out to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %has_crop_out, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool31.not = icmp eq i8 %34, 0
  br i1 %tobool31.not, label %land.lhs.true32, label %land.lhs.true.if.else37_crit_edge

land.lhs.true.if.else37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else37

land.lhs.true32:                                  ; preds = %land.lhs.true
  %has_compose_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 327
  %35 = ptrtoint ptr %has_compose_out to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %has_compose_out, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool33.not = icmp eq i8 %36, 0
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true32.if.else37_crit_edge

land.lhs.true32.if.else37_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %w.0, ptr %fmt, align 1
  %div = udiv i32 %h.0, %factor.0
  %height36 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %height36 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %div, ptr %height36, align 1
  br label %if.end81

if.else37:                                        ; preds = %land.lhs.true32.if.else37_crit_edge, %land.lhs.true.if.else37_crit_edge, %if.end29.if.else37_crit_edge
  %39 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %fmt, align 1
  %height41 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %41 = ptrtoint ptr %height41 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %height41, align 1
  %mul = mul i32 %42, %factor.0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 2) to i32))
  %43 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 2), align 4
  %44 = tail call i32 @llvm.umax.i32(i32 %40, i32 %43)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 3) to i32))
  %45 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 3), align 4
  %46 = tail call i32 @llvm.umax.i32(i32 %mul, i32 %45)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_max_rect, i32 0, i32 2) to i32))
  %47 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_max_rect, i32 0, i32 2), align 4
  %48 = tail call i32 @llvm.umin.i32(i32 %44, i32 %47)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_max_rect, i32 0, i32 3) to i32))
  %49 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_max_rect, i32 0, i32 3), align 4
  %50 = tail call i32 @llvm.umin.i32(i32 %46, i32 %49)
  br i1 %tobool30.not, label %land.lhs.true57, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %if.else37
  %has_crop_out45 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 326
  %51 = ptrtoint ptr %has_crop_out45 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %has_crop_out45, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool46.not = icmp eq i8 %52, 0
  br i1 %tobool46.not, label %if.then47, label %land.lhs.true44.if.end75_crit_edge

land.lhs.true44.if.end75_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then47:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  %mul51 = shl i32 %w.0, 2
  %mul53 = shl i32 %h.0, 2
  %53 = tail call i32 @llvm.umin.i32(i32 %48, i32 %mul51)
  %54 = tail call i32 @llvm.umin.i32(i32 %50, i32 %mul53)
  br label %if.end75

land.lhs.true57:                                  ; preds = %if.else37
  %has_compose_out58 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 327
  %55 = ptrtoint ptr %has_compose_out58 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %has_compose_out58, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool59.not = icmp eq i8 %56, 0
  br i1 %tobool59.not, label %land.lhs.true57.if.then71_crit_edge, label %land.lhs.true60

land.lhs.true57.if.then71_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71

land.lhs.true60:                                  ; preds = %land.lhs.true57
  %has_crop_out61 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 326
  %57 = ptrtoint ptr %has_crop_out61 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %has_crop_out61, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool62.not = icmp eq i8 %58, 0
  br i1 %tobool62.not, label %if.then63, label %land.lhs.true68

if.then63:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #12
  %width1.i321 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 281, i32 2
  %59 = ptrtoint ptr %width1.i321 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %width1.i321, align 4
  %61 = tail call i32 @llvm.umin.i32(i32 %48, i32 %60)
  %height4.i325 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 281, i32 3
  %62 = ptrtoint ptr %height4.i325 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %height4.i325, align 4
  %64 = tail call i32 @llvm.umin.i32(i32 %50, i32 %63)
  br label %if.end75

land.lhs.true68:                                  ; preds = %land.lhs.true60
  %65 = ptrtoint ptr %has_compose_out58 to i32
  call void @__asan_load1_noabort(i32 %65)
  %.pr = load i8, ptr %has_compose_out58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool70.not = icmp eq i8 %.pr, 0
  br i1 %tobool70.not, label %land.lhs.true68.if.then71_crit_edge, label %land.lhs.true68.if.end75_crit_edge

land.lhs.true68.if.end75_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

land.lhs.true68.if.then71_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71

if.then71:                                        ; preds = %land.lhs.true68.if.then71_crit_edge, %land.lhs.true57.if.then71_crit_edge
  %width1.i331 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 281, i32 2
  %66 = ptrtoint ptr %width1.i331 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %width1.i331, align 4
  %68 = tail call i32 @llvm.umax.i32(i32 %48, i32 %67)
  %height4.i335 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 281, i32 3
  %69 = ptrtoint ptr %height4.i335 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %height4.i335, align 4
  %71 = tail call i32 @llvm.umax.i32(i32 %50, i32 %70)
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %land.lhs.true68.if.end75_crit_edge, %if.then63, %if.then47, %land.lhs.true44.if.end75_crit_edge
  %r.sroa.6.5 = phi i32 [ %48, %land.lhs.true68.if.end75_crit_edge ], [ %48, %land.lhs.true44.if.end75_crit_edge ], [ %53, %if.then47 ], [ %61, %if.then63 ], [ %68, %if.then71 ]
  %r.sroa.19.5 = phi i32 [ %50, %land.lhs.true68.if.end75_crit_edge ], [ %50, %land.lhs.true44.if.end75_crit_edge ], [ %54, %if.then47 ], [ %64, %if.then63 ], [ %71, %if.then71 ]
  %72 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %r.sroa.6.5, ptr %fmt, align 1
  %div79 = udiv i32 %r.sroa.19.5, %factor.0
  %73 = ptrtoint ptr %height41 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %div79, ptr %height41, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.end75, %if.then34
  %buffers = getelementptr inbounds %struct.vivid_fmt, ptr %fmt1.0, i32 0, i32 6
  %74 = ptrtoint ptr %buffers to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %buffers, align 1
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %76 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %num_planes, align 1
  %77 = load i8, ptr %buffers, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp83360.not = icmp eq i8 %77, 0
  br i1 %cmp83360.not, label %if.end81.for.cond120.preheader_crit_edge, label %for.body.lr.ph

if.end81.for.cond120.preheader_crit_edge:         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond120.preheader

for.body.lr.ph:                                   ; preds = %if.end81
  %height109 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  br label %for.body

for.cond120.preheader:                            ; preds = %if.end106.for.cond120.preheader_crit_edge, %if.end81.for.cond120.preheader_crit_edge
  %.lcssa = phi i8 [ 0, %if.end81.for.cond120.preheader_crit_edge ], [ %106, %if.end106.for.cond120.preheader_crit_edge ]
  %planes = getelementptr inbounds %struct.vivid_fmt, ptr %fmt1.0, i32 0, i32 5
  %78 = ptrtoint ptr %planes to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %planes, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %.lcssa, i8 %79)
  %cmp122363 = icmp ult i8 %.lcssa, %79
  br i1 %cmp122363, label %for.body124.lr.ph, label %for.cond120.preheader.for.end148_crit_edge

for.cond120.preheader.for.end148_crit_edge:       ; preds = %for.cond120.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end148

for.body124.lr.ph:                                ; preds = %for.cond120.preheader
  %conv.le = zext i8 %.lcssa to i32
  %bytesperline126 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %80 = ptrtoint ptr %bytesperline126 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %bytesperline126, align 1
  %height127 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %82 = ptrtoint ptr %height127 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %height127, align 1
  %mul128 = mul i32 %83, %81
  %bit_depth129 = getelementptr inbounds %struct.vivid_fmt, ptr %fmt1.0, i32 0, i32 8
  %vdownsampling131 = getelementptr inbounds %struct.vivid_fmt, ptr %fmt1.0, i32 0, i32 3
  br label %for.body124

for.body:                                         ; preds = %if.end106.for.body_crit_edge, %for.body.lr.ph
  %p.0361 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end106.for.body_crit_edge ]
  %84 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %fmt, align 1
  %arrayidx = getelementptr %struct.vivid_fmt, ptr %fmt1.0, i32 0, i32 8, i32 %p.0361
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx, align 4
  %mul86 = mul i32 %87, %85
  %shr = lshr i32 %mul86, 3
  %88 = shl i32 %87, 11
  %shr90 = and i32 %88, 536868864
  %arrayidx91 = getelementptr %struct.v4l2_plane_pix_format, ptr %plane_fmt, i32 %p.0361
  %bytesperline92 = getelementptr %struct.v4l2_plane_pix_format, ptr %plane_fmt, i32 %p.0361, i32 1
  %89 = ptrtoint ptr %bytesperline92 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %bytesperline92, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %shr90)
  %cmp93 = icmp ugt i32 %90, %shr90
  br i1 %cmp93, label %if.then95, label %for.body.if.end98_crit_edge

for.body.if.end98_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then95:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %bytesperline92 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 %shr90, ptr %bytesperline92, align 1
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %for.body.if.end98_crit_edge
  %92 = ptrtoint ptr %bytesperline92 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %bytesperline92, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %shr)
  %cmp101 = icmp ult i32 %93, %shr
  br i1 %cmp101, label %if.then103, label %if.end98.if.end106_crit_edge

if.end98.if.end106_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then103:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %bytesperline92 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %shr, ptr %bytesperline92, align 1
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %if.end98.if.end106_crit_edge
  %95 = ptrtoint ptr %bytesperline92 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %bytesperline92, align 1
  %97 = ptrtoint ptr %height109 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %height109, align 1
  %mul110 = mul i32 %98, %96
  %arrayidx111 = getelementptr %struct.vivid_fmt, ptr %fmt1.0, i32 0, i32 3, i32 %p.0361
  %99 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %100 to i32
  %div113 = udiv i32 %mul110, %conv112
  %arrayidx114 = getelementptr %struct.vivid_fmt, ptr %fmt1.0, i32 0, i32 7, i32 %p.0361
  %101 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx114, align 4
  %add = add i32 %102, %div113
  %103 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 %add, ptr %arrayidx91, align 1
  %reserved = getelementptr %struct.v4l2_plane_pix_format, ptr %plane_fmt, i32 %p.0361, i32 2
  %104 = call ptr @memset(ptr %reserved, i32 0, i32 12)
  %inc = add nuw nsw i32 %p.0361, 1
  %105 = ptrtoint ptr %buffers to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %buffers, align 1
  %conv = zext i8 %106 to i32
  %cmp83 = icmp ult i32 %inc, %conv
  br i1 %cmp83, label %if.end106.for.body_crit_edge, label %if.end106.for.cond120.preheader_crit_edge

if.end106.for.cond120.preheader_crit_edge:        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond120.preheader

if.end106.for.body_crit_edge:                     ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body124:                                      ; preds = %for.body124.for.body124_crit_edge, %for.body124.lr.ph
  %p.1364 = phi i32 [ %conv.le, %for.body124.lr.ph ], [ %inc147, %for.body124.for.body124_crit_edge ]
  %arrayidx130 = getelementptr %struct.vivid_fmt, ptr %fmt1.0, i32 0, i32 8, i32 %p.1364
  %107 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx130, align 4
  %arrayidx132 = getelementptr %struct.vivid_fmt, ptr %fmt1.0, i32 0, i32 3, i32 %p.1364
  %109 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %110 to i32
  %div134 = udiv i32 %108, %conv133
  %mul135 = mul i32 %mul128, %div134
  %111 = ptrtoint ptr %bit_depth129 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bit_depth129, align 4
  %113 = ptrtoint ptr %vdownsampling131 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %vdownsampling131, align 1
  %conv140 = zext i8 %114 to i32
  %div141 = udiv i32 %112, %conv140
  %div142 = udiv i32 %mul135, %div141
  %115 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %plane_fmt, align 1
  %add145 = add i32 %116, %div142
  store i32 %add145, ptr %plane_fmt, align 1
  %inc147 = add nuw nsw i32 %p.1364, 1
  %117 = ptrtoint ptr %planes to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %planes, align 4
  %conv121 = zext i8 %118 to i32
  %cmp122 = icmp ult i32 %inc147, %conv121
  br i1 %cmp122, label %for.body124.for.body124_crit_edge, label %for.body124.for.end148_crit_edge

for.body124.for.end148_crit_edge:                 ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end148

for.body124.for.body124_crit_edge:                ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body124

for.end148:                                       ; preds = %for.body124.for.end148_crit_edge, %for.cond120.preheader.for.end148_crit_edge
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %119 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %xfer_func, align 1
  %120 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %120, align 1
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %122 = ptrtoint ptr %quantization to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %quantization, align 1
  %123 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %output.i.i, align 4
  %arrayidx.i341 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %124
  %125 = ptrtoint ptr %arrayidx.i341 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx.i341, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %126)
  %cmp.i342 = icmp eq i8 %126, 2
  br i1 %cmp.i342, label %if.then150, label %if.else151

if.then150:                                       ; preds = %for.end148
  call void @__sanitizer_cov_trace_pc() #12
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %127 = ptrtoint ptr %colorspace to i32
  call void @__asan_storeN_noabort(i32 %127, i32 4)
  store i32 1, ptr %colorspace, align 1
  br label %if.end199

if.else151:                                       ; preds = %for.end148
  %dvi_d_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 215
  %128 = ptrtoint ptr %dvi_d_out to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %dvi_d_out, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool152.not = icmp eq i8 %129, 0
  br i1 %tobool152.not, label %lor.lhs.false154, label %if.else151.if.then157_crit_edge

if.else151.if.then157_crit_edge:                  ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then157

lor.lhs.false154:                                 ; preds = %if.else151
  %flags = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 201, i32 1, i32 0, i32 16
  %130 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %flags, align 1
  %and155 = and i32 %131, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %lor.lhs.false154.if.then157_crit_edge, label %if.else164

lor.lhs.false154.if.then157_crit_edge:            ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then157

if.then157:                                       ; preds = %lor.lhs.false154.if.then157_crit_edge, %if.else151.if.then157_crit_edge
  %colorspace158 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %132 = ptrtoint ptr %colorspace158 to i32
  call void @__asan_storeN_noabort(i32 %132, i32 4)
  store i32 8, ptr %colorspace158, align 1
  %133 = ptrtoint ptr %dvi_d_out to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %dvi_d_out, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool160.not = icmp eq i8 %134, 0
  br i1 %tobool160.not, label %if.then157.if.end199_crit_edge, label %if.then161

if.then157.if.end199_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199

if.then161:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  %135 = ptrtoint ptr %quantization to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 2, ptr %quantization, align 1
  br label %if.end199

if.else164:                                       ; preds = %lor.lhs.false154
  %136 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %137 = load i32, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %137)
  %cmp166 = icmp eq i32 %137, 720
  br i1 %cmp166, label %land.lhs.true168, label %if.else164.if.else174_crit_edge

if.else164.if.else174_crit_edge:                  ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else174

land.lhs.true168:                                 ; preds = %if.else164
  %height169 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 201, i32 1, i32 0, i32 1
  %138 = ptrtoint ptr %height169 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %height169, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 577, i32 %139)
  %cmp170 = icmp ult i32 %139, 577
  br i1 %cmp170, label %if.then172, label %land.lhs.true168.if.else174_crit_edge

land.lhs.true168.if.else174_crit_edge:            ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else174

if.then172:                                       ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #12
  %colorspace173 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %140 = ptrtoint ptr %colorspace173 to i32
  call void @__asan_storeN_noabort(i32 %140, i32 4)
  store i32 1, ptr %colorspace173, align 1
  br label %if.end199

if.else174:                                       ; preds = %land.lhs.true168.if.else174_crit_edge, %if.else164.if.else174_crit_edge
  %colorspace175 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %141 = ptrtoint ptr %colorspace175 to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %colorspace175, align 1
  %143 = zext i32 %142 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %142, label %if.then194 [
    i32 1, label %if.else174.if.end199_crit_edge
    i32 3, label %if.else174.if.end199_crit_edge371
    i32 9, label %if.else174.if.end199_crit_edge372
    i32 10, label %if.else174.if.end199_crit_edge373
    i32 8, label %if.else174.if.end199_crit_edge374
  ]

if.else174.if.end199_crit_edge374:                ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199

if.else174.if.end199_crit_edge373:                ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199

if.else174.if.end199_crit_edge372:                ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199

if.else174.if.end199_crit_edge371:                ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199

if.else174.if.end199_crit_edge:                   ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199

if.then194:                                       ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %colorspace175 to i32
  call void @__asan_storeN_noabort(i32 %144, i32 4)
  store i32 3, ptr %colorspace175, align 1
  br label %if.end199

if.end199:                                        ; preds = %if.then194, %if.else174.if.end199_crit_edge, %if.else174.if.end199_crit_edge371, %if.else174.if.end199_crit_edge372, %if.else174.if.end199_crit_edge373, %if.else174.if.end199_crit_edge374, %if.then172, %if.then161, %if.then157.if.end199_crit_edge, %if.then150
  %reserved200 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 11
  %145 = call ptr @memset(ptr %reserved200, i32 0, i32 7)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vivid_get_format(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_s_fmt_vid_out(ptr noundef %file, ptr nocapture readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %crop_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283
  %compose_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284
  %call1 = tail call i32 @vivid_try_fmt_vid_out(ptr noundef %file, ptr undef, ptr noundef %f)
  %num_buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 286, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end25, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %output.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 199
  %4 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %output.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.i313 = icmp eq i8 %7, 2
  br i1 %cmp.i313, label %land.lhs.true.do.body_crit_edge, label %lor.lhs.false

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %fmt, align 1
  %width4 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282, i32 2
  %10 = ptrtoint ptr %width4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp5.not = icmp eq i32 %9, %11
  br i1 %cmp5.not, label %lor.lhs.false6, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %height, align 1
  %height8 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282, i32 3
  %14 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp9.not = icmp eq i32 %13, %15
  br i1 %cmp9.not, label %lor.lhs.false10, label %lor.lhs.false6.do.body_crit_edge

lor.lhs.false6.do.body_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %pixelformat, align 1
  %fmt_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 278
  %18 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fmt_out, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %21)
  %cmp11.not = icmp eq i32 %17, %21
  br i1 %cmp11.not, label %lor.lhs.false12, label %lor.lhs.false10.do.body_crit_edge

lor.lhs.false10.do.body_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %field, align 1
  %field_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 280
  %24 = ptrtoint ptr %field_out to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %field_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp13.not = icmp eq i32 %23, %25
  br i1 %cmp13.not, label %lor.lhs.false12.set_colorspace_crit_edge, label %lor.lhs.false12.do.body_crit_edge

lor.lhs.false12.do.body_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false12.set_colorspace_crit_edge:         ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_colorspace

do.body:                                          ; preds = %lor.lhs.false12.do.body_crit_edge, %lor.lhs.false10.do.body_crit_edge, %lor.lhs.false6.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %26 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp15.not = icmp eq i32 %26, 0
  br i1 %cmp15.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end25:                                         ; preds = %entry
  %pixelformat26 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %pixelformat26 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %pixelformat26, align 1
  %call27 = tail call ptr @vivid_get_format(ptr noundef %1, i32 noundef %28) #10
  %fmt_out28 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 278
  %29 = ptrtoint ptr %fmt_out28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call27, ptr %fmt_out28, align 8
  %field29 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %30 = ptrtoint ptr %field29 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %field29, align 1
  %switch.tableidx = add i32 %31, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %32 = icmp ult i32 %switch.tableidx, 6
  br i1 %32, label %switch.lookup, label %if.end25.if.end38_crit_edge

if.end25.if.end38_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

switch.lookup:                                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.vivid_s_fmt_vid_out, i32 0, i32 %switch.tableidx
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end38

if.end38:                                         ; preds = %switch.lookup, %if.end25.if.end38_crit_edge
  %factor.0 = phi i32 [ 1, %if.end25.if.end38_crit_edge ], [ %switch.load, %switch.lookup ]
  %has_scaler_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 328
  %34 = ptrtoint ptr %has_scaler_out to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %has_scaler_out, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not = icmp eq i8 %35, 0
  br i1 %tobool.not, label %lor.lhs.false39, label %if.then50

lor.lhs.false39:                                  ; preds = %if.end38
  %has_crop_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 326
  %36 = ptrtoint ptr %has_crop_out to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %has_crop_out, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool40.not = icmp eq i8 %37, 0
  br i1 %tobool40.not, label %lor.lhs.false41, label %lor.lhs.false39.if.else104_crit_edge

lor.lhs.false39.if.else104_crit_edge:             ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else104

lor.lhs.false41:                                  ; preds = %lor.lhs.false39
  %has_compose_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 327
  %38 = ptrtoint ptr %has_compose_out to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %has_compose_out, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool42.not = icmp eq i8 %39, 0
  br i1 %tobool42.not, label %if.else135, label %lor.lhs.false41.if.else104_crit_edge

lor.lhs.false41.if.else104_crit_edge:             ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else104

if.then50:                                        ; preds = %if.end38
  %40 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %fmt, align 1
  %height47 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %height47 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %height47, align 1
  %has_crop_out51 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 326
  %44 = ptrtoint ptr %has_crop_out51 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %has_crop_out51, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool52.not = icmp eq i8 %45, 0
  br i1 %tobool52.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.then50
  %width.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 2
  %46 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %width.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %41)
  %cmp.i.i = icmp ugt i32 %47, %41
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then53.if.end.i.i_crit_edge

if.then53.if.end.i.i_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %width.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %41, ptr %width.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then53.if.end.i.i_crit_edge
  %height.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 3
  %49 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %43)
  %cmp5.i.i = icmp ugt i32 %50, %43
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end.i.i.v4l2_rect_set_max_size.exit.i_crit_edge

if.end.i.i.v4l2_rect_set_max_size.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %43, ptr %height.i.i, align 4
  br label %v4l2_rect_set_max_size.exit.i

v4l2_rect_set_max_size.exit.i:                    ; preds = %if.then6.i.i, %if.end.i.i.v4l2_rect_set_max_size.exit.i_crit_edge
  %52 = ptrtoint ptr %crop_out to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %crop_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i316 = icmp slt i32 %53, 0
  br i1 %cmp.i316, label %if.then.i, label %v4l2_rect_set_max_size.exit.i.if.end.i_crit_edge

v4l2_rect_set_max_size.exit.i.if.end.i_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %v4l2_rect_set_max_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %crop_out to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %crop_out, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %v4l2_rect_set_max_size.exit.i.if.end.i_crit_edge
  %top.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 1
  %55 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %top.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp5.i = icmp slt i32 %56, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %top.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i.if.end9.i_crit_edge
  %58 = ptrtoint ptr %crop_out to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %crop_out, align 4
  %60 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %width.i.i, align 4
  %add.i = add i32 %61, %59
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %41)
  %cmp14.i = icmp ugt i32 %add.i, %41
  br i1 %cmp14.i, label %if.then15.i, label %if.end9.i.if.end21.i_crit_edge

if.end9.i.if.end21.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then15.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %41, %61
  %62 = ptrtoint ptr %crop_out to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub.i, ptr %crop_out, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then15.i, %if.end9.i.if.end21.i_crit_edge
  %63 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %top.i, align 4
  %65 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %height.i.i, align 4
  %add23.i = add i32 %66, %64
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i, i32 %43)
  %cmp27.i = icmp ugt i32 %add23.i, %43
  br i1 %cmp27.i, label %if.then28.i, label %if.end21.i.if.end54_crit_edge

if.end21.i.if.end54_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then28.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub33.i = sub i32 %43, %66
  %67 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub33.i, ptr %top.i, align 4
  br label %if.end54

if.else:                                          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %crop_out to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %crop_out, align 4
  %r.sroa.11.0.crop_out.sroa_idx = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 1
  %69 = ptrtoint ptr %r.sroa.11.0.crop_out.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %r.sroa.11.0.crop_out.sroa_idx, align 4
  %r.sroa.19.0.crop_out.sroa_idx = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 2
  %70 = ptrtoint ptr %r.sroa.19.0.crop_out.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %41, ptr %r.sroa.19.0.crop_out.sroa_idx, align 4
  %r.sroa.33.0.crop_out.sroa_idx = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 3
  %71 = ptrtoint ptr %r.sroa.33.0.crop_out.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %43, ptr %r.sroa.33.0.crop_out.sroa_idx, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then28.i, %if.end21.i.if.end54_crit_edge
  %has_compose_out55 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 327
  %72 = ptrtoint ptr %has_compose_out55 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %has_compose_out55, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool56.not = icmp eq i8 %73, 0
  br i1 %tobool56.not, label %if.end54.if.end145_crit_edge, label %land.lhs.true57

if.end54.if.end145_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

land.lhs.true57:                                  ; preds = %if.end54
  %74 = ptrtoint ptr %has_crop_out51 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %has_crop_out51, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool59.not = icmp eq i8 %75, 0
  br i1 %tobool59.not, label %if.then60, label %if.then80

if.then60:                                        ; preds = %land.lhs.true57
  %div311 = lshr i32 %41, 2
  %mul = mul i32 %43, %factor.0
  %div67312 = lshr i32 %mul, 2
  %mul72 = shl i32 %41, 2
  %mul76 = shl i32 %mul, 2
  %width.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 2
  %76 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %div311)
  %cmp.i317 = icmp ult i32 %77, %div311
  br i1 %cmp.i317, label %if.then.i318, label %if.then60.if.end.i320_crit_edge

if.then60.if.end.i320_crit_edge:                  ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i320

if.then.i318:                                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %div311, ptr %width.i, align 4
  br label %if.end.i320

if.end.i320:                                      ; preds = %if.then.i318, %if.then60.if.end.i320_crit_edge
  %height.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 3
  %79 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %div67312)
  %cmp5.i319 = icmp ult i32 %80, %div67312
  br i1 %cmp5.i319, label %if.then6.i321, label %if.end.i320.v4l2_rect_set_min_size.exit_crit_edge

if.end.i320.v4l2_rect_set_min_size.exit_crit_edge: ; preds = %if.end.i320
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_min_size.exit

if.then6.i321:                                    ; preds = %if.end.i320
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %div67312, ptr %height.i, align 4
  br label %v4l2_rect_set_min_size.exit

v4l2_rect_set_min_size.exit:                      ; preds = %if.then6.i321, %if.end.i320.v4l2_rect_set_min_size.exit_crit_edge
  %82 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %mul72)
  %cmp.i325 = icmp ugt i32 %83, %mul72
  br i1 %cmp.i325, label %if.then.i326, label %v4l2_rect_set_min_size.exit.if.end.i330_crit_edge

v4l2_rect_set_min_size.exit.if.end.i330_crit_edge: ; preds = %v4l2_rect_set_min_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i330

if.then.i326:                                     ; preds = %v4l2_rect_set_min_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %mul72, ptr %width.i, align 4
  br label %if.end.i330

if.end.i330:                                      ; preds = %if.then.i326, %v4l2_rect_set_min_size.exit.if.end.i330_crit_edge
  %85 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %mul76)
  %cmp5.i329 = icmp ugt i32 %86, %mul76
  br i1 %cmp5.i329, label %if.then6.i331, label %if.end.i330.v4l2_rect_set_max_size.exit_crit_edge

if.end.i330.v4l2_rect_set_max_size.exit_crit_edge: ; preds = %if.end.i330
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit

if.then6.i331:                                    ; preds = %if.end.i330
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %mul76, ptr %height.i, align 4
  br label %v4l2_rect_set_max_size.exit

v4l2_rect_set_max_size.exit:                      ; preds = %if.then6.i331, %if.end.i330.v4l2_rect_set_max_size.exit_crit_edge
  %compose_bounds_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285
  %88 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %width.i, align 4
  %width1.i.i334 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285, i32 2
  %90 = ptrtoint ptr %width1.i.i334 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %width1.i.i334, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp.i.i335 = icmp ugt i32 %89, %91
  br i1 %cmp.i.i335, label %if.then.i.i336, label %v4l2_rect_set_max_size.exit.if.end.i.i340_crit_edge

v4l2_rect_set_max_size.exit.if.end.i.i340_crit_edge: ; preds = %v4l2_rect_set_max_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i340

if.then.i.i336:                                   ; preds = %v4l2_rect_set_max_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %width.i, align 4
  br label %if.end.i.i340

if.end.i.i340:                                    ; preds = %if.then.i.i336, %v4l2_rect_set_max_size.exit.if.end.i.i340_crit_edge
  %93 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %height.i, align 4
  %height4.i.i338 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285, i32 3
  %95 = ptrtoint ptr %height4.i.i338 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %height4.i.i338, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %96)
  %cmp5.i.i339 = icmp ugt i32 %94, %96
  br i1 %cmp5.i.i339, label %if.then6.i.i341, label %if.end.i.i340.v4l2_rect_set_max_size.exit.i343_crit_edge

if.end.i.i340.v4l2_rect_set_max_size.exit.i343_crit_edge: ; preds = %if.end.i.i340
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit.i343

if.then6.i.i341:                                  ; preds = %if.end.i.i340
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %height.i, align 4
  br label %v4l2_rect_set_max_size.exit.i343

v4l2_rect_set_max_size.exit.i343:                 ; preds = %if.then6.i.i341, %if.end.i.i340.v4l2_rect_set_max_size.exit.i343_crit_edge
  %98 = ptrtoint ptr %compose_out to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %compose_out, align 4
  %100 = ptrtoint ptr %compose_bounds_out to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %compose_bounds_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %101)
  %cmp.i342 = icmp slt i32 %99, %101
  br i1 %cmp.i342, label %if.then.i344, label %v4l2_rect_set_max_size.exit.i343.if.end.i348_crit_edge

v4l2_rect_set_max_size.exit.i343.if.end.i348_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i343
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i348

if.then.i344:                                     ; preds = %v4l2_rect_set_max_size.exit.i343
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %compose_out to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %compose_out, align 4
  br label %if.end.i348

if.end.i348:                                      ; preds = %if.then.i344, %v4l2_rect_set_max_size.exit.i343.if.end.i348_crit_edge
  %top.i345 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 1
  %103 = ptrtoint ptr %top.i345 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %top.i345, align 4
  %top4.i346 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285, i32 1
  %105 = ptrtoint ptr %top4.i346 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %top4.i346, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %106)
  %cmp5.i347 = icmp slt i32 %104, %106
  br i1 %cmp5.i347, label %if.then6.i349, label %if.end.i348.if.end9.i353_crit_edge

if.end.i348.if.end9.i353_crit_edge:               ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i353

if.then6.i349:                                    ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %top.i345 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %top.i345, align 4
  br label %if.end9.i353

if.end9.i353:                                     ; preds = %if.then6.i349, %if.end.i348.if.end9.i353_crit_edge
  %108 = ptrtoint ptr %compose_out to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %compose_out, align 4
  %110 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %width.i, align 4
  %add.i350 = add i32 %111, %109
  %112 = ptrtoint ptr %compose_bounds_out to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %compose_bounds_out, align 4
  %114 = ptrtoint ptr %width1.i.i334 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %width1.i.i334, align 4
  %add13.i351 = add i32 %115, %113
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i350, i32 %add13.i351)
  %cmp14.i352 = icmp ugt i32 %add.i350, %add13.i351
  br i1 %cmp14.i352, label %if.then15.i355, label %if.end9.i353.if.end21.i359_crit_edge

if.end9.i353.if.end21.i359_crit_edge:             ; preds = %if.end9.i353
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i359

if.then15.i355:                                   ; preds = %if.end9.i353
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i354 = sub i32 %add13.i351, %111
  %116 = ptrtoint ptr %compose_out to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %sub.i354, ptr %compose_out, align 4
  br label %if.end21.i359

if.end21.i359:                                    ; preds = %if.then15.i355, %if.end9.i353.if.end21.i359_crit_edge
  %117 = ptrtoint ptr %top.i345 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %top.i345, align 4
  %119 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %height.i, align 4
  %add23.i356 = add i32 %120, %118
  %121 = ptrtoint ptr %top4.i346 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %top4.i346, align 4
  %123 = ptrtoint ptr %height4.i.i338 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %height4.i.i338, align 4
  %add26.i357 = add i32 %124, %122
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i356, i32 %add26.i357)
  %cmp27.i358 = icmp ugt i32 %add23.i356, %add26.i357
  br i1 %cmp27.i358, label %if.then28.i361, label %if.end21.i359.if.end145_crit_edge

if.end21.i359.if.end145_crit_edge:                ; preds = %if.end21.i359
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

if.then28.i361:                                   ; preds = %if.end21.i359
  call void @__sanitizer_cov_trace_pc() #12
  %sub33.i360 = sub i32 %add26.i357, %120
  %125 = ptrtoint ptr %top.i345 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %sub33.i360, ptr %top.i345, align 4
  br label %if.end145

if.then80:                                        ; preds = %land.lhs.true57
  %width85 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 2
  %126 = ptrtoint ptr %width85 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %width85, align 4
  %div86309 = lshr i32 %127, 2
  %height88 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 3
  %128 = ptrtoint ptr %height88 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %height88, align 4
  %mul89 = mul i32 %129, %factor.0
  %div90310 = lshr i32 %mul89, 2
  %mul96 = shl i32 %127, 2
  %mul100 = shl i32 %mul89, 2
  %width.i363 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 2
  %130 = ptrtoint ptr %width.i363 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %width.i363, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %div86309)
  %cmp.i365 = icmp ult i32 %131, %div86309
  br i1 %cmp.i365, label %if.then.i366, label %if.then80.if.end.i370_crit_edge

if.then80.if.end.i370_crit_edge:                  ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i370

if.then.i366:                                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %width.i363 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %div86309, ptr %width.i363, align 4
  br label %if.end.i370

if.end.i370:                                      ; preds = %if.then.i366, %if.then80.if.end.i370_crit_edge
  %height.i367 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 3
  %133 = ptrtoint ptr %height.i367 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %height.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %div90310)
  %cmp5.i369 = icmp ult i32 %134, %div90310
  br i1 %cmp5.i369, label %if.then6.i371, label %if.end.i370.v4l2_rect_set_min_size.exit373_crit_edge

if.end.i370.v4l2_rect_set_min_size.exit373_crit_edge: ; preds = %if.end.i370
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_min_size.exit373

if.then6.i371:                                    ; preds = %if.end.i370
  call void @__sanitizer_cov_trace_pc() #12
  %135 = ptrtoint ptr %height.i367 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %div90310, ptr %height.i367, align 4
  br label %v4l2_rect_set_min_size.exit373

v4l2_rect_set_min_size.exit373:                   ; preds = %if.then6.i371, %if.end.i370.v4l2_rect_set_min_size.exit373_crit_edge
  %136 = ptrtoint ptr %width.i363 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %width.i363, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %mul96)
  %cmp.i376 = icmp ugt i32 %137, %mul96
  br i1 %cmp.i376, label %if.then.i377, label %v4l2_rect_set_min_size.exit373.if.end.i381_crit_edge

v4l2_rect_set_min_size.exit373.if.end.i381_crit_edge: ; preds = %v4l2_rect_set_min_size.exit373
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i381

if.then.i377:                                     ; preds = %v4l2_rect_set_min_size.exit373
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %width.i363 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %mul96, ptr %width.i363, align 4
  br label %if.end.i381

if.end.i381:                                      ; preds = %if.then.i377, %v4l2_rect_set_min_size.exit373.if.end.i381_crit_edge
  %139 = ptrtoint ptr %height.i367 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %height.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %mul100)
  %cmp5.i380 = icmp ugt i32 %140, %mul100
  br i1 %cmp5.i380, label %if.then6.i382, label %if.end.i381.v4l2_rect_set_max_size.exit384_crit_edge

if.end.i381.v4l2_rect_set_max_size.exit384_crit_edge: ; preds = %if.end.i381
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit384

if.then6.i382:                                    ; preds = %if.end.i381
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %height.i367 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %mul100, ptr %height.i367, align 4
  br label %v4l2_rect_set_max_size.exit384

v4l2_rect_set_max_size.exit384:                   ; preds = %if.then6.i382, %if.end.i381.v4l2_rect_set_max_size.exit384_crit_edge
  %compose_bounds_out101 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285
  %142 = ptrtoint ptr %width.i363 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %width.i363, align 4
  %width1.i.i386 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285, i32 2
  %144 = ptrtoint ptr %width1.i.i386 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %width1.i.i386, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %145)
  %cmp.i.i387 = icmp ugt i32 %143, %145
  br i1 %cmp.i.i387, label %if.then.i.i388, label %v4l2_rect_set_max_size.exit384.if.end.i.i392_crit_edge

v4l2_rect_set_max_size.exit384.if.end.i.i392_crit_edge: ; preds = %v4l2_rect_set_max_size.exit384
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i392

if.then.i.i388:                                   ; preds = %v4l2_rect_set_max_size.exit384
  call void @__sanitizer_cov_trace_pc() #12
  %146 = ptrtoint ptr %width.i363 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %width.i363, align 4
  br label %if.end.i.i392

if.end.i.i392:                                    ; preds = %if.then.i.i388, %v4l2_rect_set_max_size.exit384.if.end.i.i392_crit_edge
  %147 = ptrtoint ptr %height.i367 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %height.i367, align 4
  %height4.i.i390 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285, i32 3
  %149 = ptrtoint ptr %height4.i.i390 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %height4.i.i390, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %150)
  %cmp5.i.i391 = icmp ugt i32 %148, %150
  br i1 %cmp5.i.i391, label %if.then6.i.i393, label %if.end.i.i392.v4l2_rect_set_max_size.exit.i395_crit_edge

if.end.i.i392.v4l2_rect_set_max_size.exit.i395_crit_edge: ; preds = %if.end.i.i392
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit.i395

if.then6.i.i393:                                  ; preds = %if.end.i.i392
  call void @__sanitizer_cov_trace_pc() #12
  %151 = ptrtoint ptr %height.i367 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %height.i367, align 4
  br label %v4l2_rect_set_max_size.exit.i395

v4l2_rect_set_max_size.exit.i395:                 ; preds = %if.then6.i.i393, %if.end.i.i392.v4l2_rect_set_max_size.exit.i395_crit_edge
  %152 = ptrtoint ptr %compose_out to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %compose_out, align 4
  %154 = ptrtoint ptr %compose_bounds_out101 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %compose_bounds_out101, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %155)
  %cmp.i394 = icmp slt i32 %153, %155
  br i1 %cmp.i394, label %if.then.i396, label %v4l2_rect_set_max_size.exit.i395.if.end.i400_crit_edge

v4l2_rect_set_max_size.exit.i395.if.end.i400_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i395
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i400

if.then.i396:                                     ; preds = %v4l2_rect_set_max_size.exit.i395
  call void @__sanitizer_cov_trace_pc() #12
  %156 = ptrtoint ptr %compose_out to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %compose_out, align 4
  br label %if.end.i400

if.end.i400:                                      ; preds = %if.then.i396, %v4l2_rect_set_max_size.exit.i395.if.end.i400_crit_edge
  %top.i397 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 1
  %157 = ptrtoint ptr %top.i397 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %top.i397, align 4
  %top4.i398 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285, i32 1
  %159 = ptrtoint ptr %top4.i398 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %top4.i398, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %160)
  %cmp5.i399 = icmp slt i32 %158, %160
  br i1 %cmp5.i399, label %if.then6.i401, label %if.end.i400.if.end9.i405_crit_edge

if.end.i400.if.end9.i405_crit_edge:               ; preds = %if.end.i400
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i405

if.then6.i401:                                    ; preds = %if.end.i400
  call void @__sanitizer_cov_trace_pc() #12
  %161 = ptrtoint ptr %top.i397 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %top.i397, align 4
  br label %if.end9.i405

if.end9.i405:                                     ; preds = %if.then6.i401, %if.end.i400.if.end9.i405_crit_edge
  %162 = ptrtoint ptr %compose_out to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %compose_out, align 4
  %164 = ptrtoint ptr %width.i363 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %width.i363, align 4
  %add.i402 = add i32 %165, %163
  %166 = ptrtoint ptr %compose_bounds_out101 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %compose_bounds_out101, align 4
  %168 = ptrtoint ptr %width1.i.i386 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %width1.i.i386, align 4
  %add13.i403 = add i32 %169, %167
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i402, i32 %add13.i403)
  %cmp14.i404 = icmp ugt i32 %add.i402, %add13.i403
  br i1 %cmp14.i404, label %if.then15.i407, label %if.end9.i405.if.end21.i411_crit_edge

if.end9.i405.if.end21.i411_crit_edge:             ; preds = %if.end9.i405
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i411

if.then15.i407:                                   ; preds = %if.end9.i405
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i406 = sub i32 %add13.i403, %165
  %170 = ptrtoint ptr %compose_out to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %sub.i406, ptr %compose_out, align 4
  br label %if.end21.i411

if.end21.i411:                                    ; preds = %if.then15.i407, %if.end9.i405.if.end21.i411_crit_edge
  %171 = ptrtoint ptr %top.i397 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %top.i397, align 4
  %173 = ptrtoint ptr %height.i367 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %height.i367, align 4
  %add23.i408 = add i32 %174, %172
  %175 = ptrtoint ptr %top4.i398 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %top4.i398, align 4
  %177 = ptrtoint ptr %height4.i.i390 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %height4.i.i390, align 4
  %add26.i409 = add i32 %178, %176
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i408, i32 %add26.i409)
  %cmp27.i410 = icmp ugt i32 %add23.i408, %add26.i409
  br i1 %cmp27.i410, label %if.then28.i413, label %if.end21.i411.if.end145_crit_edge

if.end21.i411.if.end145_crit_edge:                ; preds = %if.end21.i411
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

if.then28.i413:                                   ; preds = %if.end21.i411
  call void @__sanitizer_cov_trace_pc() #12
  %sub33.i412 = sub i32 %add26.i409, %174
  %179 = ptrtoint ptr %top.i397 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %sub33.i412, ptr %top.i397, align 4
  br label %if.end145

if.else104:                                       ; preds = %lor.lhs.false41.if.else104_crit_edge, %lor.lhs.false39.if.else104_crit_edge
  %180 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %180, i32 4)
  %181 = load i32, ptr %fmt, align 1
  %height47610 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %182 = ptrtoint ptr %height47610 to i32
  call void @__asan_loadN_noabort(i32 %182, i32 4)
  %183 = load i32, ptr %height47610, align 1
  %has_compose_out105 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 327
  %184 = ptrtoint ptr %has_compose_out105 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %has_compose_out105, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool106.not = icmp eq i8 %185, 0
  br i1 %tobool106.not, label %if.then117, label %land.lhs.true107

land.lhs.true107:                                 ; preds = %if.else104
  %186 = ptrtoint ptr %has_crop_out to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %has_crop_out, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool109.not = icmp eq i8 %187, 0
  br i1 %tobool109.not, label %if.then110, label %if.else120

if.then110:                                       ; preds = %land.lhs.true107
  %width1.i416 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 2
  %188 = ptrtoint ptr %width1.i416 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %181, ptr %width1.i416, align 4
  %height2.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 3
  %189 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %183, ptr %height2.i, align 4
  %mul112 = mul i32 %183, %factor.0
  %width1.i419 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 2
  %190 = ptrtoint ptr %width1.i419 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %181, ptr %width1.i419, align 4
  %height2.i421 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 3
  %191 = ptrtoint ptr %height2.i421 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %mul112, ptr %height2.i421, align 4
  %compose_bounds_out113 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285
  %width1.i.i423 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285, i32 2
  %192 = ptrtoint ptr %width1.i.i423 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %width1.i.i423, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %181, i32 %193)
  %cmp.i.i424 = icmp ugt i32 %181, %193
  br i1 %cmp.i.i424, label %if.then.i.i425, label %if.then110.if.end.i.i429_crit_edge

if.then110.if.end.i.i429_crit_edge:               ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i429

if.then.i.i425:                                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #12
  %194 = ptrtoint ptr %width1.i419 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %width1.i419, align 4
  br label %if.end.i.i429

if.end.i.i429:                                    ; preds = %if.then.i.i425, %if.then110.if.end.i.i429_crit_edge
  %195 = ptrtoint ptr %height2.i421 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %height2.i421, align 4
  %height4.i.i427 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285, i32 3
  %197 = ptrtoint ptr %height4.i.i427 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %height4.i.i427, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %196, i32 %198)
  %cmp5.i.i428 = icmp ugt i32 %196, %198
  br i1 %cmp5.i.i428, label %if.then6.i.i430, label %if.end.i.i429.v4l2_rect_set_max_size.exit.i432_crit_edge

if.end.i.i429.v4l2_rect_set_max_size.exit.i432_crit_edge: ; preds = %if.end.i.i429
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit.i432

if.then6.i.i430:                                  ; preds = %if.end.i.i429
  call void @__sanitizer_cov_trace_pc() #12
  %199 = ptrtoint ptr %height2.i421 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %height2.i421, align 4
  br label %v4l2_rect_set_max_size.exit.i432

v4l2_rect_set_max_size.exit.i432:                 ; preds = %if.then6.i.i430, %if.end.i.i429.v4l2_rect_set_max_size.exit.i432_crit_edge
  %200 = ptrtoint ptr %compose_out to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %compose_out, align 4
  %202 = ptrtoint ptr %compose_bounds_out113 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %compose_bounds_out113, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %201, i32 %203)
  %cmp.i431 = icmp slt i32 %201, %203
  br i1 %cmp.i431, label %if.then.i433, label %v4l2_rect_set_max_size.exit.i432.if.end.i437_crit_edge

v4l2_rect_set_max_size.exit.i432.if.end.i437_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i432
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i437

if.then.i433:                                     ; preds = %v4l2_rect_set_max_size.exit.i432
  call void @__sanitizer_cov_trace_pc() #12
  %204 = ptrtoint ptr %compose_out to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %compose_out, align 4
  br label %if.end.i437

if.end.i437:                                      ; preds = %if.then.i433, %v4l2_rect_set_max_size.exit.i432.if.end.i437_crit_edge
  %top.i434 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 1
  %205 = ptrtoint ptr %top.i434 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %top.i434, align 4
  %top4.i435 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285, i32 1
  %207 = ptrtoint ptr %top4.i435 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %top4.i435, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %208)
  %cmp5.i436 = icmp slt i32 %206, %208
  br i1 %cmp5.i436, label %if.then6.i438, label %if.end.i437.if.end9.i442_crit_edge

if.end.i437.if.end9.i442_crit_edge:               ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i442

if.then6.i438:                                    ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #12
  %209 = ptrtoint ptr %top.i434 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %top.i434, align 4
  br label %if.end9.i442

if.end9.i442:                                     ; preds = %if.then6.i438, %if.end.i437.if.end9.i442_crit_edge
  %210 = ptrtoint ptr %compose_out to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %compose_out, align 4
  %212 = ptrtoint ptr %width1.i419 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %width1.i419, align 4
  %add.i439 = add i32 %213, %211
  %214 = ptrtoint ptr %compose_bounds_out113 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %compose_bounds_out113, align 4
  %216 = ptrtoint ptr %width1.i.i423 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %width1.i.i423, align 4
  %add13.i440 = add i32 %217, %215
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i439, i32 %add13.i440)
  %cmp14.i441 = icmp ugt i32 %add.i439, %add13.i440
  br i1 %cmp14.i441, label %if.then15.i444, label %if.end9.i442.if.end21.i448_crit_edge

if.end9.i442.if.end21.i448_crit_edge:             ; preds = %if.end9.i442
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i448

if.then15.i444:                                   ; preds = %if.end9.i442
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i443 = sub i32 %add13.i440, %213
  %218 = ptrtoint ptr %compose_out to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %sub.i443, ptr %compose_out, align 4
  br label %if.end21.i448

if.end21.i448:                                    ; preds = %if.then15.i444, %if.end9.i442.if.end21.i448_crit_edge
  %219 = ptrtoint ptr %top.i434 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %top.i434, align 4
  %221 = ptrtoint ptr %height2.i421 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %height2.i421, align 4
  %add23.i445 = add i32 %222, %220
  %223 = ptrtoint ptr %top4.i435 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %top4.i435, align 4
  %225 = ptrtoint ptr %height4.i.i427 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %height4.i.i427, align 4
  %add26.i446 = add i32 %226, %224
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i445, i32 %add26.i446)
  %cmp27.i447 = icmp ugt i32 %add23.i445, %add26.i446
  br i1 %cmp27.i447, label %if.then28.i450, label %if.end21.i448.if.end145_crit_edge

if.end21.i448.if.end145_crit_edge:                ; preds = %if.end21.i448
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

if.then28.i450:                                   ; preds = %if.end21.i448
  call void @__sanitizer_cov_trace_pc() #12
  %sub33.i449 = sub i32 %add26.i446, %222
  %227 = ptrtoint ptr %top.i434 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %sub33.i449, ptr %top.i434, align 4
  br label %if.end145

if.then117:                                       ; preds = %if.else104
  %width.i.i452 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 2
  %228 = ptrtoint ptr %width.i.i452 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %width.i.i452, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %229, i32 %181)
  %cmp.i.i454 = icmp ugt i32 %229, %181
  br i1 %cmp.i.i454, label %if.then.i.i455, label %if.then117.if.end.i.i459_crit_edge

if.then117.if.end.i.i459_crit_edge:               ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i459

if.then.i.i455:                                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #12
  %230 = ptrtoint ptr %width.i.i452 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %181, ptr %width.i.i452, align 4
  br label %if.end.i.i459

if.end.i.i459:                                    ; preds = %if.then.i.i455, %if.then117.if.end.i.i459_crit_edge
  %height.i.i456 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 3
  %231 = ptrtoint ptr %height.i.i456 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %height.i.i456, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %232, i32 %183)
  %cmp5.i.i458 = icmp ugt i32 %232, %183
  br i1 %cmp5.i.i458, label %if.then6.i.i460, label %if.end.i.i459.v4l2_rect_set_max_size.exit.i462_crit_edge

if.end.i.i459.v4l2_rect_set_max_size.exit.i462_crit_edge: ; preds = %if.end.i.i459
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit.i462

if.then6.i.i460:                                  ; preds = %if.end.i.i459
  call void @__sanitizer_cov_trace_pc() #12
  %233 = ptrtoint ptr %height.i.i456 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %183, ptr %height.i.i456, align 4
  br label %v4l2_rect_set_max_size.exit.i462

v4l2_rect_set_max_size.exit.i462:                 ; preds = %if.then6.i.i460, %if.end.i.i459.v4l2_rect_set_max_size.exit.i462_crit_edge
  %234 = ptrtoint ptr %crop_out to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %crop_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %cmp.i461 = icmp slt i32 %235, 0
  br i1 %cmp.i461, label %if.then.i463, label %v4l2_rect_set_max_size.exit.i462.if.end.i467_crit_edge

v4l2_rect_set_max_size.exit.i462.if.end.i467_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i462
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i467

if.then.i463:                                     ; preds = %v4l2_rect_set_max_size.exit.i462
  call void @__sanitizer_cov_trace_pc() #12
  %236 = ptrtoint ptr %crop_out to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 0, ptr %crop_out, align 4
  br label %if.end.i467

if.end.i467:                                      ; preds = %if.then.i463, %v4l2_rect_set_max_size.exit.i462.if.end.i467_crit_edge
  %top.i464 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 1
  %237 = ptrtoint ptr %top.i464 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %top.i464, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %cmp5.i466 = icmp slt i32 %238, 0
  br i1 %cmp5.i466, label %if.then6.i468, label %if.end.i467.if.end9.i472_crit_edge

if.end.i467.if.end9.i472_crit_edge:               ; preds = %if.end.i467
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i472

if.then6.i468:                                    ; preds = %if.end.i467
  call void @__sanitizer_cov_trace_pc() #12
  %239 = ptrtoint ptr %top.i464 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 0, ptr %top.i464, align 4
  br label %if.end9.i472

if.end9.i472:                                     ; preds = %if.then6.i468, %if.end.i467.if.end9.i472_crit_edge
  %240 = ptrtoint ptr %crop_out to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %crop_out, align 4
  %242 = ptrtoint ptr %width.i.i452 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %width.i.i452, align 4
  %add.i469 = add i32 %243, %241
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i469, i32 %181)
  %cmp14.i471 = icmp ugt i32 %add.i469, %181
  br i1 %cmp14.i471, label %if.then15.i474, label %if.end9.i472.if.end21.i478_crit_edge

if.end9.i472.if.end21.i478_crit_edge:             ; preds = %if.end9.i472
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i478

if.then15.i474:                                   ; preds = %if.end9.i472
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i473 = sub i32 %181, %243
  %244 = ptrtoint ptr %crop_out to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %sub.i473, ptr %crop_out, align 4
  br label %if.end21.i478

if.end21.i478:                                    ; preds = %if.then15.i474, %if.end9.i472.if.end21.i478_crit_edge
  %245 = ptrtoint ptr %top.i464 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %top.i464, align 4
  %247 = ptrtoint ptr %height.i.i456 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %height.i.i456, align 4
  %add23.i475 = add i32 %248, %246
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i475, i32 %183)
  %cmp27.i477 = icmp ugt i32 %add23.i475, %183
  br i1 %cmp27.i477, label %if.then28.i480, label %if.end21.i478.v4l2_rect_map_inside.exit481_crit_edge

if.end21.i478.v4l2_rect_map_inside.exit481_crit_edge: ; preds = %if.end21.i478
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_map_inside.exit481

if.then28.i480:                                   ; preds = %if.end21.i478
  call void @__sanitizer_cov_trace_pc() #12
  %sub33.i479 = sub i32 %183, %248
  %249 = ptrtoint ptr %top.i464 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %sub33.i479, ptr %top.i464, align 4
  br label %v4l2_rect_map_inside.exit481

v4l2_rect_map_inside.exit481:                     ; preds = %if.then28.i480, %if.end21.i478.v4l2_rect_map_inside.exit481_crit_edge
  %div119 = udiv i32 %183, %factor.0
  %width1.i483 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 2
  %250 = ptrtoint ptr %width1.i483 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %181, ptr %width1.i483, align 4
  %height2.i485 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 3
  %251 = ptrtoint ptr %height2.i485 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %div119, ptr %height2.i485, align 4
  br label %if.end145

if.else120:                                       ; preds = %land.lhs.true107
  %mul122 = mul i32 %183, %factor.0
  %width.i486 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 2
  %252 = ptrtoint ptr %width.i486 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %width.i486, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %253, i32 %181)
  %cmp.i488 = icmp ugt i32 %253, %181
  br i1 %cmp.i488, label %if.then.i489, label %if.else120.if.end.i493_crit_edge

if.else120.if.end.i493_crit_edge:                 ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i493

if.then.i489:                                     ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #12
  %254 = ptrtoint ptr %width.i486 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %181, ptr %width.i486, align 4
  br label %if.end.i493

if.end.i493:                                      ; preds = %if.then.i489, %if.else120.if.end.i493_crit_edge
  %height.i490 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 3
  %255 = ptrtoint ptr %height.i490 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %height.i490, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %256, i32 %mul122)
  %cmp5.i492 = icmp ugt i32 %256, %mul122
  br i1 %cmp5.i492, label %if.then6.i494, label %if.end.i493.v4l2_rect_set_max_size.exit496_crit_edge

if.end.i493.v4l2_rect_set_max_size.exit496_crit_edge: ; preds = %if.end.i493
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit496

if.then6.i494:                                    ; preds = %if.end.i493
  call void @__sanitizer_cov_trace_pc() #12
  %257 = ptrtoint ptr %height.i490 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %mul122, ptr %height.i490, align 4
  br label %v4l2_rect_set_max_size.exit496

v4l2_rect_set_max_size.exit496:                   ; preds = %if.then6.i494, %if.end.i493.v4l2_rect_set_max_size.exit496_crit_edge
  %compose_bounds_out123 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285
  %258 = ptrtoint ptr %width.i486 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %width.i486, align 4
  %width1.i.i498 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285, i32 2
  %260 = ptrtoint ptr %width1.i.i498 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %width1.i.i498, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %259, i32 %261)
  %cmp.i.i499 = icmp ugt i32 %259, %261
  br i1 %cmp.i.i499, label %if.then.i.i500, label %v4l2_rect_set_max_size.exit496.if.end.i.i504_crit_edge

v4l2_rect_set_max_size.exit496.if.end.i.i504_crit_edge: ; preds = %v4l2_rect_set_max_size.exit496
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i504

if.then.i.i500:                                   ; preds = %v4l2_rect_set_max_size.exit496
  call void @__sanitizer_cov_trace_pc() #12
  %262 = ptrtoint ptr %width.i486 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %width.i486, align 4
  br label %if.end.i.i504

if.end.i.i504:                                    ; preds = %if.then.i.i500, %v4l2_rect_set_max_size.exit496.if.end.i.i504_crit_edge
  %263 = ptrtoint ptr %height.i490 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %height.i490, align 4
  %height4.i.i502 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285, i32 3
  %265 = ptrtoint ptr %height4.i.i502 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %height4.i.i502, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %264, i32 %266)
  %cmp5.i.i503 = icmp ugt i32 %264, %266
  br i1 %cmp5.i.i503, label %if.then6.i.i505, label %if.end.i.i504.v4l2_rect_set_max_size.exit.i507_crit_edge

if.end.i.i504.v4l2_rect_set_max_size.exit.i507_crit_edge: ; preds = %if.end.i.i504
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit.i507

if.then6.i.i505:                                  ; preds = %if.end.i.i504
  call void @__sanitizer_cov_trace_pc() #12
  %267 = ptrtoint ptr %height.i490 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %266, ptr %height.i490, align 4
  br label %v4l2_rect_set_max_size.exit.i507

v4l2_rect_set_max_size.exit.i507:                 ; preds = %if.then6.i.i505, %if.end.i.i504.v4l2_rect_set_max_size.exit.i507_crit_edge
  %268 = ptrtoint ptr %compose_out to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %compose_out, align 4
  %270 = ptrtoint ptr %compose_bounds_out123 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %compose_bounds_out123, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %269, i32 %271)
  %cmp.i506 = icmp slt i32 %269, %271
  br i1 %cmp.i506, label %if.then.i508, label %v4l2_rect_set_max_size.exit.i507.if.end.i512_crit_edge

v4l2_rect_set_max_size.exit.i507.if.end.i512_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i507
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i512

if.then.i508:                                     ; preds = %v4l2_rect_set_max_size.exit.i507
  call void @__sanitizer_cov_trace_pc() #12
  %272 = ptrtoint ptr %compose_out to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %271, ptr %compose_out, align 4
  br label %if.end.i512

if.end.i512:                                      ; preds = %if.then.i508, %v4l2_rect_set_max_size.exit.i507.if.end.i512_crit_edge
  %top.i509 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 1
  %273 = ptrtoint ptr %top.i509 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %top.i509, align 4
  %top4.i510 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285, i32 1
  %275 = ptrtoint ptr %top4.i510 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %top4.i510, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %274, i32 %276)
  %cmp5.i511 = icmp slt i32 %274, %276
  br i1 %cmp5.i511, label %if.then6.i513, label %if.end.i512.if.end9.i517_crit_edge

if.end.i512.if.end9.i517_crit_edge:               ; preds = %if.end.i512
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i517

if.then6.i513:                                    ; preds = %if.end.i512
  call void @__sanitizer_cov_trace_pc() #12
  %277 = ptrtoint ptr %top.i509 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %276, ptr %top.i509, align 4
  br label %if.end9.i517

if.end9.i517:                                     ; preds = %if.then6.i513, %if.end.i512.if.end9.i517_crit_edge
  %278 = ptrtoint ptr %compose_out to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %compose_out, align 4
  %280 = ptrtoint ptr %width.i486 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %width.i486, align 4
  %add.i514 = add i32 %281, %279
  %282 = ptrtoint ptr %compose_bounds_out123 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %compose_bounds_out123, align 4
  %284 = ptrtoint ptr %width1.i.i498 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %width1.i.i498, align 4
  %add13.i515 = add i32 %285, %283
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i514, i32 %add13.i515)
  %cmp14.i516 = icmp ugt i32 %add.i514, %add13.i515
  br i1 %cmp14.i516, label %if.then15.i519, label %if.end9.i517.if.end21.i523_crit_edge

if.end9.i517.if.end21.i523_crit_edge:             ; preds = %if.end9.i517
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i523

if.then15.i519:                                   ; preds = %if.end9.i517
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i518 = sub i32 %add13.i515, %281
  %286 = ptrtoint ptr %compose_out to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %sub.i518, ptr %compose_out, align 4
  br label %if.end21.i523

if.end21.i523:                                    ; preds = %if.then15.i519, %if.end9.i517.if.end21.i523_crit_edge
  %287 = ptrtoint ptr %top.i509 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %top.i509, align 4
  %289 = ptrtoint ptr %height.i490 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %height.i490, align 4
  %add23.i520 = add i32 %290, %288
  %291 = ptrtoint ptr %top4.i510 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %top4.i510, align 4
  %293 = ptrtoint ptr %height4.i.i502 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %height4.i.i502, align 4
  %add26.i521 = add i32 %294, %292
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i520, i32 %add26.i521)
  %cmp27.i522 = icmp ugt i32 %add23.i520, %add26.i521
  br i1 %cmp27.i522, label %if.then28.i525, label %if.end21.i523.v4l2_rect_map_inside.exit526_crit_edge

if.end21.i523.v4l2_rect_map_inside.exit526_crit_edge: ; preds = %if.end21.i523
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_map_inside.exit526

if.then28.i525:                                   ; preds = %if.end21.i523
  call void @__sanitizer_cov_trace_pc() #12
  %sub33.i524 = sub i32 %add26.i521, %290
  %295 = ptrtoint ptr %top.i509 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %sub33.i524, ptr %top.i509, align 4
  br label %v4l2_rect_map_inside.exit526

v4l2_rect_map_inside.exit526:                     ; preds = %if.then28.i525, %if.end21.i523.v4l2_rect_map_inside.exit526_crit_edge
  %top124 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 1
  %296 = ptrtoint ptr %top124 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %top124, align 4
  %mul125 = mul i32 %297, %factor.0
  store i32 %mul125, ptr %top124, align 4
  %height126 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 3
  %298 = ptrtoint ptr %width.i486 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %width.i486, align 4
  %width1.i528 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 2
  %300 = ptrtoint ptr %width1.i528 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %299, ptr %width1.i528, align 4
  %301 = ptrtoint ptr %height.i490 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %height.i490, align 4
  %303 = ptrtoint ptr %height126 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %302, ptr %height126, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %299, i32 %181)
  %cmp.i.i533 = icmp ugt i32 %299, %181
  br i1 %cmp.i.i533, label %if.then.i.i534, label %v4l2_rect_map_inside.exit526.if.end.i.i538_crit_edge

v4l2_rect_map_inside.exit526.if.end.i.i538_crit_edge: ; preds = %v4l2_rect_map_inside.exit526
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i538

if.then.i.i534:                                   ; preds = %v4l2_rect_map_inside.exit526
  call void @__sanitizer_cov_trace_pc() #12
  %304 = ptrtoint ptr %width1.i528 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %181, ptr %width1.i528, align 4
  br label %if.end.i.i538

if.end.i.i538:                                    ; preds = %if.then.i.i534, %v4l2_rect_map_inside.exit526.if.end.i.i538_crit_edge
  %305 = ptrtoint ptr %height126 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %height126, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %306, i32 %mul122)
  %cmp5.i.i537 = icmp ugt i32 %306, %mul122
  br i1 %cmp5.i.i537, label %if.then6.i.i539, label %if.end.i.i538.v4l2_rect_set_max_size.exit.i541_crit_edge

if.end.i.i538.v4l2_rect_set_max_size.exit.i541_crit_edge: ; preds = %if.end.i.i538
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit.i541

if.then6.i.i539:                                  ; preds = %if.end.i.i538
  call void @__sanitizer_cov_trace_pc() #12
  %307 = ptrtoint ptr %height126 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %mul122, ptr %height126, align 4
  br label %v4l2_rect_set_max_size.exit.i541

v4l2_rect_set_max_size.exit.i541:                 ; preds = %if.then6.i.i539, %if.end.i.i538.v4l2_rect_set_max_size.exit.i541_crit_edge
  %308 = ptrtoint ptr %crop_out to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %crop_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %309)
  %cmp.i540 = icmp slt i32 %309, 0
  br i1 %cmp.i540, label %if.then.i542, label %v4l2_rect_set_max_size.exit.i541.if.end.i546_crit_edge

v4l2_rect_set_max_size.exit.i541.if.end.i546_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i541
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i546

if.then.i542:                                     ; preds = %v4l2_rect_set_max_size.exit.i541
  call void @__sanitizer_cov_trace_pc() #12
  %310 = ptrtoint ptr %crop_out to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 0, ptr %crop_out, align 4
  br label %if.end.i546

if.end.i546:                                      ; preds = %if.then.i542, %v4l2_rect_set_max_size.exit.i541.if.end.i546_crit_edge
  %311 = ptrtoint ptr %top124 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %top124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %312)
  %cmp5.i545 = icmp slt i32 %312, 0
  br i1 %cmp5.i545, label %if.then6.i547, label %if.end.i546.if.end9.i551_crit_edge

if.end.i546.if.end9.i551_crit_edge:               ; preds = %if.end.i546
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i551

if.then6.i547:                                    ; preds = %if.end.i546
  call void @__sanitizer_cov_trace_pc() #12
  %313 = ptrtoint ptr %top124 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 0, ptr %top124, align 4
  br label %if.end9.i551

if.end9.i551:                                     ; preds = %if.then6.i547, %if.end.i546.if.end9.i551_crit_edge
  %314 = ptrtoint ptr %crop_out to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %crop_out, align 4
  %316 = ptrtoint ptr %width1.i528 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %width1.i528, align 4
  %add.i548 = add i32 %317, %315
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i548, i32 %181)
  %cmp14.i550 = icmp ugt i32 %add.i548, %181
  br i1 %cmp14.i550, label %if.then15.i553, label %if.end9.i551.if.end21.i557_crit_edge

if.end9.i551.if.end21.i557_crit_edge:             ; preds = %if.end9.i551
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i557

if.then15.i553:                                   ; preds = %if.end9.i551
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i552 = sub i32 %181, %317
  %318 = ptrtoint ptr %crop_out to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %sub.i552, ptr %crop_out, align 4
  br label %if.end21.i557

if.end21.i557:                                    ; preds = %if.then15.i553, %if.end9.i551.if.end21.i557_crit_edge
  %319 = ptrtoint ptr %top124 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %top124, align 4
  %321 = ptrtoint ptr %height126 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %height126, align 4
  %add23.i554 = add i32 %322, %320
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i554, i32 %mul122)
  %cmp27.i556 = icmp ugt i32 %add23.i554, %mul122
  br i1 %cmp27.i556, label %if.then28.i559, label %if.end21.i557.v4l2_rect_map_inside.exit560_crit_edge

if.end21.i557.v4l2_rect_map_inside.exit560_crit_edge: ; preds = %if.end21.i557
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_map_inside.exit560

if.then28.i559:                                   ; preds = %if.end21.i557
  call void @__sanitizer_cov_trace_pc() #12
  %sub33.i558 = sub i32 %mul122, %322
  %323 = ptrtoint ptr %top124 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %sub33.i558, ptr %top124, align 4
  br label %v4l2_rect_map_inside.exit560

v4l2_rect_map_inside.exit560:                     ; preds = %if.then28.i559, %if.end21.i557.v4l2_rect_map_inside.exit560_crit_edge
  %324 = ptrtoint ptr %top124 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %top124, align 4
  %div129 = udiv i32 %325, %factor.0
  store i32 %div129, ptr %top124, align 4
  %326 = ptrtoint ptr %height126 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %height126, align 4
  %div131 = udiv i32 %327, %factor.0
  store i32 %div131, ptr %height126, align 4
  br label %if.end145

if.else135:                                       ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #12
  %328 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %328, i32 4)
  %329 = load i32, ptr %fmt, align 1
  %height142 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %330 = ptrtoint ptr %height142 to i32
  call void @__asan_loadN_noabort(i32 %330, i32 4)
  %331 = load i32, ptr %height142, align 1
  %width1.i562 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 2
  %332 = ptrtoint ptr %width1.i562 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %329, ptr %width1.i562, align 4
  %height2.i564 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 3
  %333 = ptrtoint ptr %height2.i564 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %331, ptr %height2.i564, align 4
  %div144 = udiv i32 %331, %factor.0
  %width1.i566 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 2
  %334 = ptrtoint ptr %width1.i566 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %329, ptr %width1.i566, align 4
  %height2.i568 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 3
  %335 = ptrtoint ptr %height2.i568 to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %div144, ptr %height2.i568, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.else135, %v4l2_rect_map_inside.exit560, %v4l2_rect_map_inside.exit481, %if.then28.i450, %if.end21.i448.if.end145_crit_edge, %if.then28.i413, %if.end21.i411.if.end145_crit_edge, %if.then28.i361, %if.end21.i359.if.end145_crit_edge, %if.end54.if.end145_crit_edge
  %336 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %336, i32 4)
  %337 = load i32, ptr %fmt, align 1
  %width148 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282, i32 2
  %338 = ptrtoint ptr %width148 to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %337, ptr %width148, align 8
  %height149 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %339 = ptrtoint ptr %height149 to i32
  call void @__asan_loadN_noabort(i32 %339, i32 4)
  %340 = load i32, ptr %height149, align 1
  %height151 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282, i32 3
  %341 = ptrtoint ptr %height151 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %340, ptr %height151, align 4
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %342 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %343)
  %cmp152612.not = icmp eq i8 %343, 0
  br i1 %cmp152612.not, label %if.end145.for.end_crit_edge, label %if.end145.for.body_crit_edge

if.end145.for.body_crit_edge:                     ; preds = %if.end145
  br label %for.body

if.end145.for.end_crit_edge:                      ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end145.for.body_crit_edge
  %p.0613 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end145.for.body_crit_edge ]
  %bytesperline = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %p.0613, i32 1
  %344 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %344, i32 4)
  %345 = load i32, ptr %bytesperline, align 1
  %arrayidx154 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 208, i32 %p.0613
  %346 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %345, ptr %arrayidx154, align 4
  %inc = add nuw nsw i32 %p.0613, 1
  %347 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %348 to i32
  %cmp152 = icmp ult i32 %inc, %conv
  br i1 %cmp152, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end145.for.end_crit_edge
  %349 = ptrtoint ptr %fmt_out28 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %fmt_out28, align 8
  %buffers = getelementptr inbounds %struct.vivid_fmt, ptr %350, i32 0, i32 6
  %351 = ptrtoint ptr %buffers to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %buffers, align 1
  %planes614 = getelementptr inbounds %struct.vivid_fmt, ptr %350, i32 0, i32 5
  %353 = ptrtoint ptr %planes614 to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %planes614, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %352, i8 %354)
  %cmp160616 = icmp ult i8 %352, %354
  br i1 %cmp160616, label %for.body162.lr.ph, label %for.end.for.end176_crit_edge

for.end.for.end176_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end176

for.body162.lr.ph:                                ; preds = %for.end
  %conv156 = zext i8 %352 to i32
  %bytesperline_out163 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 208
  br label %for.body162

for.body162:                                      ; preds = %for.body162.for.body162_crit_edge, %for.body162.lr.ph
  %355 = phi ptr [ %350, %for.body162.lr.ph ], [ %364, %for.body162.for.body162_crit_edge ]
  %p.1617 = phi i32 [ %conv156, %for.body162.lr.ph ], [ %inc175, %for.body162.for.body162_crit_edge ]
  %356 = ptrtoint ptr %bytesperline_out163 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %bytesperline_out163, align 4
  %bit_depth = getelementptr inbounds %struct.vivid_fmt, ptr %355, i32 0, i32 8
  %arrayidx166 = getelementptr %struct.vivid_fmt, ptr %355, i32 0, i32 8, i32 %p.1617
  %358 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %arrayidx166, align 4
  %mul167 = mul i32 %359, %357
  %360 = ptrtoint ptr %bit_depth to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %bit_depth, align 4
  %div171 = udiv i32 %mul167, %361
  %arrayidx173 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 208, i32 %p.1617
  %362 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 %div171, ptr %arrayidx173, align 4
  %inc175 = add nuw nsw i32 %p.1617, 1
  %363 = ptrtoint ptr %fmt_out28 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %fmt_out28, align 8
  %planes = getelementptr inbounds %struct.vivid_fmt, ptr %364, i32 0, i32 5
  %365 = ptrtoint ptr %planes to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %planes, align 4
  %conv159 = zext i8 %366 to i32
  %cmp160 = icmp ult i32 %inc175, %conv159
  br i1 %cmp160, label %for.body162.for.body162_crit_edge, label %for.body162.for.end176_crit_edge

for.body162.for.end176_crit_edge:                 ; preds = %for.body162
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end176

for.body162.for.body162_crit_edge:                ; preds = %for.body162
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body162

for.end176:                                       ; preds = %for.body162.for.end176_crit_edge, %for.end.for.end176_crit_edge
  %367 = ptrtoint ptr %field29 to i32
  call void @__asan_loadN_noabort(i32 %367, i32 4)
  %368 = load i32, ptr %field29, align 1
  %field_out178 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 280
  %369 = ptrtoint ptr %field_out178 to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %368, ptr %field_out178, align 4
  %output.i569 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 199
  %370 = ptrtoint ptr %output.i569 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %output.i569, align 4
  %arrayidx.i570 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %371
  %372 = ptrtoint ptr %arrayidx.i570 to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %arrayidx.i570, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %373)
  %cmp.i571 = icmp eq i8 %373, 2
  br i1 %cmp.i571, label %if.then180, label %for.end176.set_colorspace_crit_edge

for.end176.set_colorspace_crit_edge:              ; preds = %for.end176
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_colorspace

if.then180:                                       ; preds = %for.end176
  call void @__sanitizer_cov_trace_pc() #12
  %374 = ptrtoint ptr %field29 to i32
  call void @__asan_loadN_noabort(i32 %374, i32 4)
  %375 = load i32, ptr %field29, align 1
  %tv_field_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 209
  %376 = ptrtoint ptr %tv_field_out to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %375, ptr %tv_field_out, align 8
  br label %set_colorspace

set_colorspace:                                   ; preds = %if.then180, %for.end176.set_colorspace_crit_edge, %lor.lhs.false12.set_colorspace_crit_edge
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %377 = ptrtoint ptr %colorspace to i32
  call void @__asan_loadN_noabort(i32 %377, i32 4)
  %378 = load i32, ptr %colorspace, align 1
  %colorspace_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 202
  %379 = ptrtoint ptr %colorspace_out to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %378, ptr %colorspace_out, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %380 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %xfer_func, align 1
  %conv183 = zext i8 %381 to i32
  %xfer_func_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 206
  %382 = ptrtoint ptr %xfer_func_out to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %conv183, ptr %xfer_func_out, align 4
  %383 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %384 = ptrtoint ptr %383 to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %383, align 1
  %conv184 = zext i8 %385 to i32
  %ycbcr_enc_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 203
  %386 = ptrtoint ptr %ycbcr_enc_out to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 %conv184, ptr %ycbcr_enc_out, align 8
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %387 = ptrtoint ptr %quantization to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %quantization, align 1
  %conv185 = zext i8 %388 to i32
  %quantization_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 205
  %389 = ptrtoint ptr %quantization_out to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 %conv185, ptr %quantization_out, align 8
  %loop_video = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 139
  %390 = ptrtoint ptr %loop_video to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %loop_video, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %391)
  %tobool186.not = icmp eq i8 %391, 0
  br i1 %tobool186.not, label %set_colorspace.cleanup_crit_edge, label %if.then187

set_colorspace.cleanup_crit_edge:                 ; preds = %set_colorspace
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then187:                                       ; preds = %set_colorspace
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vivid_send_source_change(ptr noundef %1, i32 noundef 2) #10
  tail call void @vivid_send_source_change(ptr noundef %1, i32 noundef 3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then187, %set_colorspace.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ], [ 0, %if.then187 ], [ 0, %set_colorspace.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @v4l2_rect_map_inside(ptr nocapture noundef %r, ptr nocapture noundef readonly %boundary) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %v4l2_rect_set_max_size.exit
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %sub33 = sub i32 %add26, %32
  %37 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub33, ptr %top, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %if.end21.if.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_send_source_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_vid_out_mplane(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multiplanar, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_g_fmt_vid_out(ptr noundef %file, ptr undef, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_try_fmt_vid_out_mplane(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multiplanar, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_try_fmt_vid_out(ptr noundef %file, ptr undef, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_vid_out_mplane(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multiplanar, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_s_fmt_vid_out(ptr noundef %file, ptr undef, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_vid_out(ptr noundef %file, ptr noundef %priv, ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multiplanar, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @fmt_sp2mp_func(ptr noundef %file, ptr noundef %priv, ptr noundef %f, ptr noundef nonnull @vivid_g_fmt_vid_out) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fmt_sp2mp_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_try_fmt_vid_out(ptr noundef %file, ptr noundef %priv, ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multiplanar, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @fmt_sp2mp_func(ptr noundef %file, ptr noundef %priv, ptr noundef %f, ptr noundef nonnull @vivid_try_fmt_vid_out) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_vid_out(ptr noundef %file, ptr noundef %priv, ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multiplanar, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @fmt_sp2mp_func(ptr noundef %file, ptr noundef %priv, ptr noundef %f, ptr noundef nonnull @vivid_s_fmt_vid_out) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_out_g_selection(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %sel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %has_crop_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 326
  %2 = ptrtoint ptr %has_crop_out to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_crop_out, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %has_compose_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 327
  %4 = ptrtoint ptr %has_compose_out to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_compose_out, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %top, align 4
  %9 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %r, align 4
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %10 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %target, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %11, label %if.end3.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb16
    i32 256, label %sw.bb22
    i32 257, label %if.end3.sw.bb28_crit_edge
    i32 258, label %if.end3.sw.bb28_crit_edge52
  ]

if.end3.sw.bb28_crit_edge52:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb28

if.end3.sw.bb28_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb28

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  %13 = ptrtoint ptr %has_crop_out to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_crop_out, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  br i1 %tobool6.not, label %sw.bb.cleanup_crit_edge, label %if.end8

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %crop_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283
  %15 = call ptr @memcpy(ptr %r, ptr %crop_out, i32 16)
  br label %cleanup

sw.bb10:                                          ; preds = %if.end3
  %16 = ptrtoint ptr %has_crop_out to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_crop_out, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool12.not = icmp eq i8 %17, 0
  br i1 %tobool12.not, label %sw.bb10.cleanup_crit_edge, label %if.end14

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  %fmt_out_rect = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282
  %18 = call ptr @memcpy(ptr %r, ptr %fmt_out_rect, i32 16)
  br label %cleanup

sw.bb16:                                          ; preds = %if.end3
  %19 = ptrtoint ptr %has_crop_out to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %has_crop_out, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool18.not = icmp eq i8 %20, 0
  br i1 %tobool18.not, label %sw.bb16.cleanup_crit_edge, label %if.end20

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  %21 = call ptr @memcpy(ptr %r, ptr @vivid_max_rect, i32 16)
  br label %cleanup

sw.bb22:                                          ; preds = %if.end3
  %has_compose_out23 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 327
  %22 = ptrtoint ptr %has_compose_out23 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_compose_out23, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool24.not = icmp eq i8 %23, 0
  br i1 %tobool24.not, label %sw.bb22.cleanup_crit_edge, label %if.end26

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  %compose_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284
  %24 = call ptr @memcpy(ptr %r, ptr %compose_out, i32 16)
  br label %cleanup

sw.bb28:                                          ; preds = %if.end3.sw.bb28_crit_edge, %if.end3.sw.bb28_crit_edge52
  %has_compose_out29 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 327
  %25 = ptrtoint ptr %has_compose_out29 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %has_compose_out29, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool30.not = icmp eq i8 %26, 0
  br i1 %tobool30.not, label %sw.bb28.cleanup_crit_edge, label %if.end32

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  %sink_rect = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 281
  %27 = call ptr @memcpy(ptr %r, ptr %sink_rect, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %sw.bb28.cleanup_crit_edge, %if.end26, %sw.bb22.cleanup_crit_edge, %if.end20, %sw.bb16.cleanup_crit_edge, %if.end14, %sw.bb10.cleanup_crit_edge, %if.end8, %sw.bb.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb10.cleanup_crit_edge ], [ -22, %sw.bb16.cleanup_crit_edge ], [ -22, %sw.bb22.cleanup_crit_edge ], [ -22, %sw.bb28.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ 0, %if.end32 ], [ 0, %if.end26 ], [ 0, %if.end20 ], [ 0, %if.end14 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_out_s_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %crop_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283
  %compose_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284
  %field_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 280
  %2 = ptrtoint ptr %field_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %field_out, align 4
  %switch.tableidx = add i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 6
  br i1 %4, label %switch.lookup, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.vivid_vid_out_s_selection, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep567 = getelementptr inbounds [6 x i32], ptr @switch.table.vivid_vid_out_s_selection.26, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep567 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load568 = load i32, ptr %switch.gep567, align 4
  br label %lor.end

lor.end:                                          ; preds = %switch.lookup, %entry.lor.end_crit_edge
  %7 = phi i32 [ 0, %entry.lor.end_crit_edge ], [ %switch.load, %switch.lookup ]
  %8 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %switch.load568, %switch.lookup ]
  %has_crop_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 326
  %9 = ptrtoint ptr %has_crop_out to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %has_crop_out, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.end.if.end_crit_edge

lor.end.if.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %lor.end
  %has_compose_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 327
  %11 = ptrtoint ptr %has_compose_out to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %has_compose_out, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not = icmp eq i8 %12, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup207_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup207_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup207

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.end.if.end_crit_edge
  %13 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp6.not = icmp eq i32 %14, 2
  br i1 %cmp6.not, label %if.end8, label %if.end.cleanup207_crit_edge

if.end.cleanup207_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup207

if.end8:                                          ; preds = %if.end
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %15 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %target, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %16, label %if.end8.cleanup207_crit_edge [
    i32 0, label %sw.bb
    i32 256, label %sw.bb83
  ]

if.end8.cleanup207_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup207

sw.bb:                                            ; preds = %if.end8
  br i1 %tobool.not, label %sw.bb.cleanup207_crit_edge, label %if.end12

sw.bb.cleanup207_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup207

if.end12:                                         ; preds = %sw.bb
  %flags = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %call13 = tail call i32 @vivid_vid_adjust_sel(i32 noundef %19, ptr noundef %r) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup207_crit_edge

if.end12.cleanup207_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup207

if.end16:                                         ; preds = %if.end12
  %width.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 2) to i32))
  %22 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %22)
  %cmp.i = icmp ult i32 %21, %22
  br i1 %cmp.i, label %if.then.i, label %if.end16.if.end.i_crit_edge

if.end16.if.end.i_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %width.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end16.if.end.i_crit_edge
  %height.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 3) to i32))
  %26 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %26)
  %cmp5.i = icmp ult i32 %25, %26
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i.v4l2_rect_set_min_size.exit_crit_edge

if.end.i.v4l2_rect_set_min_size.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_min_size.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %height.i, align 4
  br label %v4l2_rect_set_min_size.exit

v4l2_rect_set_min_size.exit:                      ; preds = %if.then6.i, %if.end.i.v4l2_rect_set_min_size.exit_crit_edge
  %fmt_out_rect = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282
  %28 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width.i, align 4
  %width1.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282, i32 2
  %30 = ptrtoint ptr %width1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.i339 = icmp ugt i32 %29, %31
  br i1 %cmp.i339, label %if.then.i340, label %v4l2_rect_set_min_size.exit.if.end.i343_crit_edge

v4l2_rect_set_min_size.exit.if.end.i343_crit_edge: ; preds = %v4l2_rect_set_min_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i343

if.then.i340:                                     ; preds = %v4l2_rect_set_min_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %width.i, align 4
  br label %if.end.i343

if.end.i343:                                      ; preds = %if.then.i340, %v4l2_rect_set_min_size.exit.if.end.i343_crit_edge
  %33 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height.i, align 4
  %height4.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282, i32 3
  %35 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp5.i342 = icmp ugt i32 %34, %36
  br i1 %cmp5.i342, label %if.then6.i344, label %if.end.i343.v4l2_rect_set_max_size.exit_crit_edge

if.end.i343.v4l2_rect_set_max_size.exit_crit_edge: ; preds = %if.end.i343
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit

if.then6.i344:                                    ; preds = %if.end.i343
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %height.i, align 4
  br label %v4l2_rect_set_max_size.exit

v4l2_rect_set_max_size.exit:                      ; preds = %if.then6.i344, %if.end.i343.v4l2_rect_set_max_size.exit_crit_edge
  %has_scaler_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 328
  %38 = ptrtoint ptr %has_scaler_out to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %has_scaler_out, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool19.not = icmp eq i8 %39, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %v4l2_rect_set_max_size.exit
  %width21 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 281, i32 2
  %40 = ptrtoint ptr %width21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %width21, align 8
  %mul = shl i32 %41, 2
  %height23 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 281, i32 3
  %42 = ptrtoint ptr %height23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height23, align 4
  %div334 = lshr i32 %43, %7
  %mul24 = shl i32 %div334, 2
  %44 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %mul)
  %cmp.i347 = icmp ugt i32 %45, %mul
  br i1 %cmp.i347, label %if.then.i348, label %if.then20.if.end.i352_crit_edge

if.then20.if.end.i352_crit_edge:                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i352

if.then.i348:                                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul, ptr %width.i, align 4
  br label %if.end.i352

if.end.i352:                                      ; preds = %if.then.i348, %if.then20.if.end.i352_crit_edge
  %47 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %mul24)
  %cmp5.i351 = icmp ugt i32 %48, %mul24
  br i1 %cmp5.i351, label %if.then6.i353, label %if.end.i352.v4l2_rect_set_max_size.exit354_crit_edge

if.end.i352.v4l2_rect_set_max_size.exit354_crit_edge: ; preds = %if.end.i352
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit354

if.then6.i353:                                    ; preds = %if.end.i352
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul24, ptr %height.i, align 4
  br label %v4l2_rect_set_max_size.exit354

v4l2_rect_set_max_size.exit354:                   ; preds = %if.then6.i353, %if.end.i352.v4l2_rect_set_max_size.exit354_crit_edge
  %has_compose_out26 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 327
  %50 = ptrtoint ptr %has_compose_out26 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %has_compose_out26, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool27.not = icmp eq i8 %51, 0
  br i1 %tobool27.not, label %v4l2_rect_set_max_size.exit354.if.end79_crit_edge, label %if.then28

v4l2_rect_set_max_size.exit354.if.end79_crit_edge: ; preds = %v4l2_rect_set_max_size.exit354
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then28:                                        ; preds = %v4l2_rect_set_max_size.exit354
  %52 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %width.i, align 4
  %div34335 = lshr i32 %53, 2
  %54 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height.i, align 4
  %mul38 = mul i32 %55, %8
  %div39336 = lshr i32 %mul38, 2
  %mul46 = shl i32 %53, 2
  %mul51 = shl i32 %mul38, 2
  %width.i355 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 2
  %56 = ptrtoint ptr %width.i355 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %width.i355, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %div34335)
  %cmp.i357 = icmp ult i32 %57, %div34335
  br i1 %cmp.i357, label %if.then.i358, label %if.then28.if.end.i362_crit_edge

if.then28.if.end.i362_crit_edge:                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i362

if.then.i358:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %width.i355 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %div34335, ptr %width.i355, align 4
  br label %if.end.i362

if.end.i362:                                      ; preds = %if.then.i358, %if.then28.if.end.i362_crit_edge
  %height.i359 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 3
  %59 = ptrtoint ptr %height.i359 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %height.i359, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %div39336)
  %cmp5.i361 = icmp ult i32 %60, %div39336
  br i1 %cmp5.i361, label %if.then6.i363, label %if.end.i362.v4l2_rect_set_min_size.exit364_crit_edge

if.end.i362.v4l2_rect_set_min_size.exit364_crit_edge: ; preds = %if.end.i362
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_min_size.exit364

if.then6.i363:                                    ; preds = %if.end.i362
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %height.i359 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div39336, ptr %height.i359, align 4
  br label %v4l2_rect_set_min_size.exit364

v4l2_rect_set_min_size.exit364:                   ; preds = %if.then6.i363, %if.end.i362.v4l2_rect_set_min_size.exit364_crit_edge
  %62 = ptrtoint ptr %width.i355 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %width.i355, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %mul46)
  %cmp.i367 = icmp ugt i32 %63, %mul46
  br i1 %cmp.i367, label %if.then.i368, label %v4l2_rect_set_min_size.exit364.if.end.i372_crit_edge

v4l2_rect_set_min_size.exit364.if.end.i372_crit_edge: ; preds = %v4l2_rect_set_min_size.exit364
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i372

if.then.i368:                                     ; preds = %v4l2_rect_set_min_size.exit364
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %width.i355 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %mul46, ptr %width.i355, align 4
  br label %if.end.i372

if.end.i372:                                      ; preds = %if.then.i368, %v4l2_rect_set_min_size.exit364.if.end.i372_crit_edge
  %65 = ptrtoint ptr %height.i359 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %height.i359, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %mul51)
  %cmp5.i371 = icmp ugt i32 %66, %mul51
  br i1 %cmp5.i371, label %if.then6.i373, label %if.end.i372.v4l2_rect_set_max_size.exit374_crit_edge

if.end.i372.v4l2_rect_set_max_size.exit374_crit_edge: ; preds = %if.end.i372
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit374

if.then6.i373:                                    ; preds = %if.end.i372
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %height.i359 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %mul51, ptr %height.i359, align 4
  br label %v4l2_rect_set_max_size.exit374

v4l2_rect_set_max_size.exit374:                   ; preds = %if.then6.i373, %if.end.i372.v4l2_rect_set_max_size.exit374_crit_edge
  %compose_bounds_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %compose_out, ptr noundef %compose_bounds_out)
  br label %if.end79

if.else:                                          ; preds = %v4l2_rect_set_max_size.exit
  %has_compose_out53 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 327
  %68 = ptrtoint ptr %has_compose_out53 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %has_compose_out53, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool54.not = icmp eq i8 %69, 0
  br i1 %tobool54.not, label %if.else72, label %if.then55

if.then55:                                        ; preds = %if.else
  %top57 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %top57 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %top57, align 4
  %mul58 = mul i32 %71, %8
  store i32 %mul58, ptr %top57, align 4
  %72 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %height.i, align 4
  %mul61 = mul i32 %73, %8
  store i32 %mul61, ptr %height.i, align 4
  %74 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %width.i, align 4
  %width1.i376 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 281, i32 2
  %76 = ptrtoint ptr %width1.i376 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %width1.i376, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp.i377 = icmp ugt i32 %75, %77
  br i1 %cmp.i377, label %if.then.i378, label %if.then55.if.end.i382_crit_edge

if.then55.if.end.i382_crit_edge:                  ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i382

if.then.i378:                                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %width.i, align 4
  br label %if.end.i382

if.end.i382:                                      ; preds = %if.then.i378, %if.then55.if.end.i382_crit_edge
  %79 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %height.i, align 4
  %height4.i380 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 281, i32 3
  %81 = ptrtoint ptr %height4.i380 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %height4.i380, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp5.i381 = icmp ugt i32 %80, %82
  br i1 %cmp5.i381, label %if.then6.i383, label %if.end.i382.v4l2_rect_set_max_size.exit384_crit_edge

if.end.i382.v4l2_rect_set_max_size.exit384_crit_edge: ; preds = %if.end.i382
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit384

if.then6.i383:                                    ; preds = %if.end.i382
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %height.i, align 4
  br label %v4l2_rect_set_max_size.exit384

v4l2_rect_set_max_size.exit384:                   ; preds = %if.then6.i383, %if.end.i382.v4l2_rect_set_max_size.exit384_crit_edge
  %84 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %width.i, align 4
  %width1.i386 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 2
  %86 = ptrtoint ptr %width1.i386 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %width1.i386, align 4
  %87 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 3
  %89 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %height2.i, align 4
  %compose_bounds_out65 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %compose_out, ptr noundef %compose_bounds_out65)
  %90 = ptrtoint ptr %top57 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %top57, align 4
  %div68332 = lshr i32 %91, %7
  store i32 %div68332, ptr %top57, align 4
  %92 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %height.i, align 4
  %div71333 = lshr i32 %93, %7
  store i32 %div71333, ptr %height.i, align 4
  br label %if.end79

if.else72:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %width.i388 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 281, i32 2
  %94 = ptrtoint ptr %width.i388 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %width.i388, align 4
  %96 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %width.i, align 4
  %height.i390 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 281, i32 3
  %97 = ptrtoint ptr %height.i390 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %height.i390, align 4
  %div77331 = lshr i32 %98, %7
  %99 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %div77331, ptr %height.i, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.else72, %v4l2_rect_set_max_size.exit384, %v4l2_rect_set_max_size.exit374, %v4l2_rect_set_max_size.exit354.if.end79_crit_edge
  %100 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %width.i, align 4
  %102 = ptrtoint ptr %width1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %width1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %103)
  %cmp.i.i = icmp ugt i32 %101, %103
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end79.if.end.i.i_crit_edge

if.end79.if.end.i.i_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %width.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end79.if.end.i.i_crit_edge
  %105 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %height.i, align 4
  %107 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %height4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp5.i.i = icmp ugt i32 %106, %108
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end.i.i.v4l2_rect_set_max_size.exit.i_crit_edge

if.end.i.i.v4l2_rect_set_max_size.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %height.i, align 4
  br label %v4l2_rect_set_max_size.exit.i

v4l2_rect_set_max_size.exit.i:                    ; preds = %if.then6.i.i, %if.end.i.i.v4l2_rect_set_max_size.exit.i_crit_edge
  %110 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %r, align 4
  %112 = ptrtoint ptr %fmt_out_rect to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %fmt_out_rect, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %113)
  %cmp.i392 = icmp slt i32 %111, %113
  br i1 %cmp.i392, label %if.then.i393, label %v4l2_rect_set_max_size.exit.i.if.end.i395_crit_edge

v4l2_rect_set_max_size.exit.i.if.end.i395_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i395

if.then.i393:                                     ; preds = %v4l2_rect_set_max_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %r, align 4
  br label %if.end.i395

if.end.i395:                                      ; preds = %if.then.i393, %v4l2_rect_set_max_size.exit.i.if.end.i395_crit_edge
  %top.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %115 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %top.i, align 4
  %top4.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282, i32 1
  %117 = ptrtoint ptr %top4.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %top4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %118)
  %cmp5.i394 = icmp slt i32 %116, %118
  br i1 %cmp5.i394, label %if.then6.i396, label %if.end.i395.if.end9.i_crit_edge

if.end.i395.if.end9.i_crit_edge:                  ; preds = %if.end.i395
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then6.i396:                                    ; preds = %if.end.i395
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %top.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i396, %if.end.i395.if.end9.i_crit_edge
  %120 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %r, align 4
  %122 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %width.i, align 4
  %add.i = add i32 %123, %121
  %124 = ptrtoint ptr %fmt_out_rect to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %fmt_out_rect, align 4
  %126 = ptrtoint ptr %width1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %width1.i, align 4
  %add13.i = add i32 %127, %125
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add13.i)
  %cmp14.i = icmp ugt i32 %add.i, %add13.i
  br i1 %cmp14.i, label %if.then15.i, label %if.end9.i.if.end21.i_crit_edge

if.end9.i.if.end21.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then15.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %add13.i, %123
  %128 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %sub.i, ptr %r, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then15.i, %if.end9.i.if.end21.i_crit_edge
  %129 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %top.i, align 4
  %131 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %height.i, align 4
  %add23.i = add i32 %132, %130
  %133 = ptrtoint ptr %top4.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %top4.i, align 4
  %135 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %height4.i, align 4
  %add26.i = add i32 %136, %134
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i, i32 %add26.i)
  %cmp27.i = icmp ugt i32 %add23.i, %add26.i
  br i1 %cmp27.i, label %if.then28.i, label %if.end21.i.v4l2_rect_map_inside.exit_crit_edge

if.end21.i.v4l2_rect_map_inside.exit_crit_edge:   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_map_inside.exit

if.then28.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub33.i = sub i32 %add26.i, %132
  %137 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %sub33.i, ptr %top.i, align 4
  br label %v4l2_rect_map_inside.exit

v4l2_rect_map_inside.exit:                        ; preds = %if.then28.i, %if.end21.i.v4l2_rect_map_inside.exit_crit_edge
  %138 = call ptr @memcpy(ptr %crop_out, ptr %r, i32 16)
  br label %cleanup207

sw.bb83:                                          ; preds = %if.end8
  %has_compose_out84 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 327
  %139 = ptrtoint ptr %has_compose_out84 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %has_compose_out84, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool85.not = icmp eq i8 %140, 0
  br i1 %tobool85.not, label %sw.bb83.cleanup207_crit_edge, label %if.end87

sw.bb83.cleanup207_crit_edge:                     ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup207

if.end87:                                         ; preds = %sw.bb83
  %flags88 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 2
  %141 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %flags88, align 4
  %r89 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %call90 = tail call i32 @vivid_vid_adjust_sel(i32 noundef %142, ptr noundef %r89) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end87.cleanup207_crit_edge

if.end87.cleanup207_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup207

if.end93:                                         ; preds = %if.end87
  %width.i397 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %143 = ptrtoint ptr %width.i397 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %width.i397, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 2) to i32))
  %145 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %145)
  %cmp.i398 = icmp ult i32 %144, %145
  br i1 %cmp.i398, label %if.then.i399, label %if.end93.if.end.i402_crit_edge

if.end93.if.end.i402_crit_edge:                   ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i402

if.then.i399:                                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  %146 = ptrtoint ptr %width.i397 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %width.i397, align 4
  br label %if.end.i402

if.end.i402:                                      ; preds = %if.then.i399, %if.end93.if.end.i402_crit_edge
  %height.i400 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %147 = ptrtoint ptr %height.i400 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %height.i400, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 3) to i32))
  %149 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %149)
  %cmp5.i401 = icmp ult i32 %148, %149
  br i1 %cmp5.i401, label %if.then6.i403, label %if.end.i402.v4l2_rect_set_min_size.exit405_crit_edge

if.end.i402.v4l2_rect_set_min_size.exit405_crit_edge: ; preds = %if.end.i402
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_min_size.exit405

if.then6.i403:                                    ; preds = %if.end.i402
  call void @__sanitizer_cov_trace_pc() #12
  %150 = ptrtoint ptr %height.i400 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %height.i400, align 4
  br label %v4l2_rect_set_min_size.exit405

v4l2_rect_set_min_size.exit405:                   ; preds = %if.then6.i403, %if.end.i402.v4l2_rect_set_min_size.exit405_crit_edge
  %151 = ptrtoint ptr %width.i397 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %width.i397, align 4
  %width1.i407 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 281, i32 2
  %153 = ptrtoint ptr %width1.i407 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %width1.i407, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %154)
  %cmp.i408 = icmp ugt i32 %152, %154
  br i1 %cmp.i408, label %if.then.i409, label %v4l2_rect_set_min_size.exit405.if.end.i413_crit_edge

v4l2_rect_set_min_size.exit405.if.end.i413_crit_edge: ; preds = %v4l2_rect_set_min_size.exit405
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i413

if.then.i409:                                     ; preds = %v4l2_rect_set_min_size.exit405
  call void @__sanitizer_cov_trace_pc() #12
  %155 = ptrtoint ptr %width.i397 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %width.i397, align 4
  br label %if.end.i413

if.end.i413:                                      ; preds = %if.then.i409, %v4l2_rect_set_min_size.exit405.if.end.i413_crit_edge
  %156 = ptrtoint ptr %height.i400 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %height.i400, align 4
  %height4.i411 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 281, i32 3
  %158 = ptrtoint ptr %height4.i411 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %height4.i411, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %159)
  %cmp5.i412 = icmp ugt i32 %157, %159
  br i1 %cmp5.i412, label %if.then6.i414, label %if.end.i413.v4l2_rect_set_max_size.exit416_crit_edge

if.end.i413.v4l2_rect_set_max_size.exit416_crit_edge: ; preds = %if.end.i413
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit416

if.then6.i414:                                    ; preds = %if.end.i413
  call void @__sanitizer_cov_trace_pc() #12
  %160 = ptrtoint ptr %height.i400 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %height.i400, align 4
  br label %v4l2_rect_set_max_size.exit416

v4l2_rect_set_max_size.exit416:                   ; preds = %if.then6.i414, %if.end.i413.v4l2_rect_set_max_size.exit416_crit_edge
  %compose_bounds_out98 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285
  %161 = ptrtoint ptr %width.i397 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %width.i397, align 4
  %width1.i.i418 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285, i32 2
  %163 = ptrtoint ptr %width1.i.i418 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %width1.i.i418, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %164)
  %cmp.i.i419 = icmp ugt i32 %162, %164
  br i1 %cmp.i.i419, label %if.then.i.i420, label %v4l2_rect_set_max_size.exit416.if.end.i.i424_crit_edge

v4l2_rect_set_max_size.exit416.if.end.i.i424_crit_edge: ; preds = %v4l2_rect_set_max_size.exit416
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i424

if.then.i.i420:                                   ; preds = %v4l2_rect_set_max_size.exit416
  call void @__sanitizer_cov_trace_pc() #12
  %165 = ptrtoint ptr %width.i397 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %width.i397, align 4
  br label %if.end.i.i424

if.end.i.i424:                                    ; preds = %if.then.i.i420, %v4l2_rect_set_max_size.exit416.if.end.i.i424_crit_edge
  %166 = ptrtoint ptr %height.i400 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %height.i400, align 4
  %height4.i.i422 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285, i32 3
  %168 = ptrtoint ptr %height4.i.i422 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %height4.i.i422, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %169)
  %cmp5.i.i423 = icmp ugt i32 %167, %169
  br i1 %cmp5.i.i423, label %if.then6.i.i425, label %if.end.i.i424.v4l2_rect_set_max_size.exit.i427_crit_edge

if.end.i.i424.v4l2_rect_set_max_size.exit.i427_crit_edge: ; preds = %if.end.i.i424
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit.i427

if.then6.i.i425:                                  ; preds = %if.end.i.i424
  call void @__sanitizer_cov_trace_pc() #12
  %170 = ptrtoint ptr %height.i400 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %height.i400, align 4
  br label %v4l2_rect_set_max_size.exit.i427

v4l2_rect_set_max_size.exit.i427:                 ; preds = %if.then6.i.i425, %if.end.i.i424.v4l2_rect_set_max_size.exit.i427_crit_edge
  %171 = ptrtoint ptr %r89 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %r89, align 4
  %173 = ptrtoint ptr %compose_bounds_out98 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %compose_bounds_out98, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %172, i32 %174)
  %cmp.i426 = icmp slt i32 %172, %174
  br i1 %cmp.i426, label %if.then.i428, label %v4l2_rect_set_max_size.exit.i427.if.end.i432_crit_edge

v4l2_rect_set_max_size.exit.i427.if.end.i432_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i427
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i432

if.then.i428:                                     ; preds = %v4l2_rect_set_max_size.exit.i427
  call void @__sanitizer_cov_trace_pc() #12
  %175 = ptrtoint ptr %r89 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %r89, align 4
  br label %if.end.i432

if.end.i432:                                      ; preds = %if.then.i428, %v4l2_rect_set_max_size.exit.i427.if.end.i432_crit_edge
  %top.i429 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %176 = ptrtoint ptr %top.i429 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %top.i429, align 4
  %top4.i430 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 285, i32 1
  %178 = ptrtoint ptr %top4.i430 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %top4.i430, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %179)
  %cmp5.i431 = icmp slt i32 %177, %179
  br i1 %cmp5.i431, label %if.then6.i433, label %if.end.i432.if.end9.i437_crit_edge

if.end.i432.if.end9.i437_crit_edge:               ; preds = %if.end.i432
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i437

if.then6.i433:                                    ; preds = %if.end.i432
  call void @__sanitizer_cov_trace_pc() #12
  %180 = ptrtoint ptr %top.i429 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %top.i429, align 4
  br label %if.end9.i437

if.end9.i437:                                     ; preds = %if.then6.i433, %if.end.i432.if.end9.i437_crit_edge
  %181 = ptrtoint ptr %r89 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %r89, align 4
  %183 = ptrtoint ptr %width.i397 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %width.i397, align 4
  %add.i434 = add i32 %184, %182
  %185 = ptrtoint ptr %compose_bounds_out98 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %compose_bounds_out98, align 4
  %187 = ptrtoint ptr %width1.i.i418 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %width1.i.i418, align 4
  %add13.i435 = add i32 %188, %186
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i434, i32 %add13.i435)
  %cmp14.i436 = icmp ugt i32 %add.i434, %add13.i435
  br i1 %cmp14.i436, label %if.then15.i439, label %if.end9.i437.if.end21.i443_crit_edge

if.end9.i437.if.end21.i443_crit_edge:             ; preds = %if.end9.i437
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i443

if.then15.i439:                                   ; preds = %if.end9.i437
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i438 = sub i32 %add13.i435, %184
  %189 = ptrtoint ptr %r89 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %sub.i438, ptr %r89, align 4
  br label %if.end21.i443

if.end21.i443:                                    ; preds = %if.then15.i439, %if.end9.i437.if.end21.i443_crit_edge
  %190 = ptrtoint ptr %top.i429 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %top.i429, align 4
  %192 = ptrtoint ptr %height.i400 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %height.i400, align 4
  %add23.i440 = add i32 %193, %191
  %194 = ptrtoint ptr %top4.i430 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %top4.i430, align 4
  %196 = ptrtoint ptr %height4.i.i422 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %height4.i.i422, align 4
  %add26.i441 = add i32 %197, %195
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i440, i32 %add26.i441)
  %cmp27.i442 = icmp ugt i32 %add23.i440, %add26.i441
  br i1 %cmp27.i442, label %if.then28.i445, label %if.end21.i443.v4l2_rect_map_inside.exit446_crit_edge

if.end21.i443.v4l2_rect_map_inside.exit446_crit_edge: ; preds = %if.end21.i443
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_map_inside.exit446

if.then28.i445:                                   ; preds = %if.end21.i443
  call void @__sanitizer_cov_trace_pc() #12
  %sub33.i444 = sub i32 %add26.i441, %193
  %198 = ptrtoint ptr %top.i429 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %sub33.i444, ptr %top.i429, align 4
  br label %v4l2_rect_map_inside.exit446

v4l2_rect_map_inside.exit446:                     ; preds = %if.then28.i445, %if.end21.i443.v4l2_rect_map_inside.exit446_crit_edge
  %199 = ptrtoint ptr %top.i429 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %top.i429, align 4
  %div101326 = lshr i32 %200, %7
  store i32 %div101326, ptr %top.i429, align 4
  %201 = ptrtoint ptr %height.i400 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %height.i400, align 4
  %div104327 = lshr i32 %202, %7
  store i32 %div104327, ptr %height.i400, align 4
  %has_scaler_out105 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 328
  %203 = ptrtoint ptr %has_scaler_out105 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %has_scaler_out105, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool106.not = icmp eq i8 %204, 0
  br i1 %tobool106.not, label %if.else148, label %if.then107

if.then107:                                       ; preds = %v4l2_rect_map_inside.exit446
  %fmt_out_rect108 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282
  %205 = ptrtoint ptr %fmt_out_rect108 to i32
  call void @__asan_load4_noabort(i32 %205)
  %fmt.sroa.0.0.copyload = load i32, ptr %fmt_out_rect108, align 8
  %fmt.sroa.6.0.fmt_out_rect108.sroa_idx = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282, i32 1
  %206 = ptrtoint ptr %fmt.sroa.6.0.fmt_out_rect108.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %206)
  %fmt.sroa.6.0.copyload = load i32, ptr %fmt.sroa.6.0.fmt_out_rect108.sroa_idx, align 4
  %fmt.sroa.7.0.fmt_out_rect108.sroa_idx = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282, i32 2
  %207 = ptrtoint ptr %fmt.sroa.7.0.fmt_out_rect108.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %207)
  %fmt.sroa.7.0.copyload = load i32, ptr %fmt.sroa.7.0.fmt_out_rect108.sroa_idx, align 8
  %fmt.sroa.13.0.fmt_out_rect108.sroa_idx = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282, i32 3
  %208 = ptrtoint ptr %fmt.sroa.13.0.fmt_out_rect108.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %208)
  %fmt.sroa.13.0.copyload = load i32, ptr %fmt.sroa.13.0.fmt_out_rect108.sroa_idx, align 4
  %209 = ptrtoint ptr %width.i397 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %width.i397, align 4
  %mul115 = shl i32 %210, 2
  %mul119 = shl i32 %div104327, 2
  %div126329 = lshr i32 %210, 2
  %div130330 = lshr i32 %div104327, 2
  %211 = tail call i32 @llvm.umax.i32(i32 %fmt.sroa.7.0.copyload, i32 %div126329)
  %212 = tail call i32 @llvm.umax.i32(i32 %fmt.sroa.13.0.copyload, i32 %div130330)
  %213 = ptrtoint ptr %has_crop_out to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %has_crop_out, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool132.not = icmp eq i8 %214, 0
  %215 = tail call i32 @llvm.umin.i32(i32 %211, i32 %mul115)
  %216 = tail call i32 @llvm.umin.i32(i32 %212, i32 %mul119)
  %fmt.sroa.13.2 = select i1 %tobool132.not, i32 %216, i32 %212
  %fmt.sroa.7.2 = select i1 %tobool132.not, i32 %215, i32 %211
  call void @__sanitizer_cov_trace_cmp4(i32 %fmt.sroa.7.0.copyload, i32 %fmt.sroa.7.2)
  %cmp.i471 = icmp eq i32 %fmt.sroa.7.0.copyload, %fmt.sroa.7.2
  br i1 %cmp.i471, label %v4l2_rect_same_size.exit, label %if.then107.land.lhs.true137_crit_edge

if.then107.land.lhs.true137_crit_edge:            ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true137

v4l2_rect_same_size.exit:                         ; preds = %if.then107
  %217 = ptrtoint ptr %fmt.sroa.13.0.fmt_out_rect108.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %fmt.sroa.13.0.fmt_out_rect108.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %218, i32 %fmt.sroa.13.2)
  %cmp3.i = icmp eq i32 %218, %fmt.sroa.13.2
  br i1 %cmp3.i, label %v4l2_rect_same_size.exit.if.end140_crit_edge, label %v4l2_rect_same_size.exit.land.lhs.true137_crit_edge

v4l2_rect_same_size.exit.land.lhs.true137_crit_edge: ; preds = %v4l2_rect_same_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true137

v4l2_rect_same_size.exit.if.end140_crit_edge:     ; preds = %v4l2_rect_same_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

land.lhs.true137:                                 ; preds = %v4l2_rect_same_size.exit.land.lhs.true137_crit_edge, %if.then107.land.lhs.true137_crit_edge
  %num_buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 286, i32 21
  %219 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %cmp.i474.not = icmp eq i32 %220, 0
  br i1 %cmp.i474.not, label %land.lhs.true137.if.end140_crit_edge, label %land.lhs.true137.cleanup207_crit_edge

land.lhs.true137.cleanup207_crit_edge:            ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup207

land.lhs.true137.if.end140_crit_edge:             ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

if.end140:                                        ; preds = %land.lhs.true137.if.end140_crit_edge, %v4l2_rect_same_size.exit.if.end140_crit_edge
  br i1 %tobool132.not, label %if.end140.if.end144_crit_edge, label %if.then143

if.end140.if.end144_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

if.then143:                                       ; preds = %if.end140
  %width.i475 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 2
  %221 = ptrtoint ptr %width.i475 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %width.i475, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %222, i32 %div126329)
  %cmp.i477 = icmp ult i32 %222, %div126329
  br i1 %cmp.i477, label %if.then.i478, label %if.then143.if.end.i482_crit_edge

if.then143.if.end.i482_crit_edge:                 ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i482

if.then.i478:                                     ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #12
  %223 = ptrtoint ptr %width.i475 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %div126329, ptr %width.i475, align 4
  br label %if.end.i482

if.end.i482:                                      ; preds = %if.then.i478, %if.then143.if.end.i482_crit_edge
  %height.i479 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 3
  %224 = ptrtoint ptr %height.i479 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %height.i479, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %225, i32 %div130330)
  %cmp5.i481 = icmp ult i32 %225, %div130330
  br i1 %cmp5.i481, label %if.then6.i483, label %if.end.i482.v4l2_rect_set_min_size.exit485_crit_edge

if.end.i482.v4l2_rect_set_min_size.exit485_crit_edge: ; preds = %if.end.i482
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_min_size.exit485

if.then6.i483:                                    ; preds = %if.end.i482
  call void @__sanitizer_cov_trace_pc() #12
  %226 = ptrtoint ptr %height.i479 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %div130330, ptr %height.i479, align 4
  br label %v4l2_rect_set_min_size.exit485

v4l2_rect_set_min_size.exit485:                   ; preds = %if.then6.i483, %if.end.i482.v4l2_rect_set_min_size.exit485_crit_edge
  %227 = ptrtoint ptr %width.i475 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %width.i475, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %228, i32 %mul115)
  %cmp.i488 = icmp ugt i32 %228, %mul115
  br i1 %cmp.i488, label %if.then.i489, label %v4l2_rect_set_min_size.exit485.if.end.i493_crit_edge

v4l2_rect_set_min_size.exit485.if.end.i493_crit_edge: ; preds = %v4l2_rect_set_min_size.exit485
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i493

if.then.i489:                                     ; preds = %v4l2_rect_set_min_size.exit485
  call void @__sanitizer_cov_trace_pc() #12
  %229 = ptrtoint ptr %width.i475 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %mul115, ptr %width.i475, align 4
  br label %if.end.i493

if.end.i493:                                      ; preds = %if.then.i489, %v4l2_rect_set_min_size.exit485.if.end.i493_crit_edge
  %230 = ptrtoint ptr %height.i479 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %height.i479, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %231, i32 %mul119)
  %cmp5.i492 = icmp ugt i32 %231, %mul119
  br i1 %cmp5.i492, label %if.then6.i494, label %if.end.i493.if.end144_crit_edge

if.end.i493.if.end144_crit_edge:                  ; preds = %if.end.i493
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

if.then6.i494:                                    ; preds = %if.end.i493
  call void @__sanitizer_cov_trace_pc() #12
  %232 = ptrtoint ptr %height.i479 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %mul119, ptr %height.i479, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then6.i494, %if.end.i493.if.end144_crit_edge, %if.end140.if.end144_crit_edge
  %233 = ptrtoint ptr %fmt_out_rect108 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %fmt.sroa.0.0.copyload, ptr %fmt_out_rect108, align 8
  %234 = ptrtoint ptr %fmt.sroa.6.0.fmt_out_rect108.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %fmt.sroa.6.0.copyload, ptr %fmt.sroa.6.0.fmt_out_rect108.sroa_idx, align 4
  %235 = ptrtoint ptr %fmt.sroa.7.0.fmt_out_rect108.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %fmt.sroa.7.2, ptr %fmt.sroa.7.0.fmt_out_rect108.sroa_idx, align 8
  %236 = ptrtoint ptr %fmt.sroa.13.0.fmt_out_rect108.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %fmt.sroa.13.2, ptr %fmt.sroa.13.0.fmt_out_rect108.sroa_idx, align 4
  br label %if.end184

if.else148:                                       ; preds = %v4l2_rect_map_inside.exit446
  %237 = ptrtoint ptr %has_crop_out to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %has_crop_out, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238)
  %tobool150.not = icmp eq i8 %238, 0
  %fmt_out_rect170 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282
  br i1 %tobool150.not, label %if.else168, label %if.then151

if.then151:                                       ; preds = %if.else148
  %fmt152.sroa.7.0.fmt_out_rect153.sroa_idx = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282, i32 2
  %239 = ptrtoint ptr %fmt152.sroa.7.0.fmt_out_rect153.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %239)
  %fmt152.sroa.7.0.copyload = load i32, ptr %fmt152.sroa.7.0.fmt_out_rect153.sroa_idx, align 8
  %fmt152.sroa.11.0.fmt_out_rect153.sroa_idx = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282, i32 3
  %240 = ptrtoint ptr %fmt152.sroa.11.0.fmt_out_rect153.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %240)
  %fmt152.sroa.11.0.copyload = load i32, ptr %fmt152.sroa.11.0.fmt_out_rect153.sroa_idx, align 4
  %241 = ptrtoint ptr %width.i397 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %width.i397, align 4
  %243 = tail call i32 @llvm.umax.i32(i32 %fmt152.sroa.7.0.copyload, i32 %242)
  %244 = ptrtoint ptr %height.i400 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %height.i400, align 4
  %246 = tail call i32 @llvm.umax.i32(i32 %fmt152.sroa.11.0.copyload, i32 %245)
  call void @__sanitizer_cov_trace_cmp4(i32 %fmt152.sroa.7.0.copyload, i32 %242)
  %cmp.i510.not = icmp ult i32 %fmt152.sroa.7.0.copyload, %242
  br i1 %cmp.i510.not, label %if.then151.land.lhs.true157_crit_edge, label %v4l2_rect_same_size.exit515

if.then151.land.lhs.true157_crit_edge:            ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true157

v4l2_rect_same_size.exit515:                      ; preds = %if.then151
  %247 = ptrtoint ptr %fmt152.sroa.11.0.fmt_out_rect153.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %fmt152.sroa.11.0.fmt_out_rect153.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %248, i32 %246)
  %cmp3.i513 = icmp eq i32 %248, %246
  br i1 %cmp3.i513, label %v4l2_rect_same_size.exit515.if.end161_crit_edge, label %v4l2_rect_same_size.exit515.land.lhs.true157_crit_edge

v4l2_rect_same_size.exit515.land.lhs.true157_crit_edge: ; preds = %v4l2_rect_same_size.exit515
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true157

v4l2_rect_same_size.exit515.if.end161_crit_edge:  ; preds = %v4l2_rect_same_size.exit515
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

land.lhs.true157:                                 ; preds = %v4l2_rect_same_size.exit515.land.lhs.true157_crit_edge, %if.then151.land.lhs.true157_crit_edge
  %num_buffers.i516 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 286, i32 21
  %249 = ptrtoint ptr %num_buffers.i516 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %num_buffers.i516, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %cmp.i517.not = icmp eq i32 %250, 0
  br i1 %cmp.i517.not, label %land.lhs.true157.if.end161_crit_edge, label %land.lhs.true157.cleanup207_crit_edge

land.lhs.true157.cleanup207_crit_edge:            ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup207

land.lhs.true157.if.end161_crit_edge:             ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

if.end161:                                        ; preds = %land.lhs.true157.if.end161_crit_edge, %v4l2_rect_same_size.exit515.if.end161_crit_edge
  %251 = ptrtoint ptr %fmt152.sroa.7.0.fmt_out_rect153.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %243, ptr %fmt152.sroa.7.0.fmt_out_rect153.sroa_idx, align 8
  %252 = ptrtoint ptr %fmt152.sroa.11.0.fmt_out_rect153.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %246, ptr %fmt152.sroa.11.0.fmt_out_rect153.sroa_idx, align 4
  %253 = ptrtoint ptr %width.i397 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %width.i397, align 4
  %width1.i519 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 2
  %255 = ptrtoint ptr %width1.i519 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %254, ptr %width1.i519, align 4
  %256 = ptrtoint ptr %height.i400 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %height.i400, align 4
  %height2.i521 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 3
  %258 = ptrtoint ptr %height2.i521 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %257, ptr %height2.i521, align 4
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %crop_out, ptr noundef %fmt_out_rect170)
  br label %if.end184

if.else168:                                       ; preds = %if.else148
  %259 = ptrtoint ptr %width.i397 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %width.i397, align 4
  %width1.i523 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282, i32 2
  %261 = ptrtoint ptr %width1.i523 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %width1.i523, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %260, i32 %262)
  %cmp.i524 = icmp eq i32 %260, %262
  br i1 %cmp.i524, label %v4l2_rect_same_size.exit529, label %if.else168.land.lhs.true172_crit_edge

if.else168.land.lhs.true172_crit_edge:            ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true172

v4l2_rect_same_size.exit529:                      ; preds = %if.else168
  %263 = ptrtoint ptr %height.i400 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %height.i400, align 4
  %height2.i526 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282, i32 3
  %265 = ptrtoint ptr %height2.i526 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %height2.i526, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %264, i32 %266)
  %cmp3.i527 = icmp eq i32 %264, %266
  br i1 %cmp3.i527, label %v4l2_rect_same_size.exit529.if.end176_crit_edge, label %v4l2_rect_same_size.exit529.land.lhs.true172_crit_edge

v4l2_rect_same_size.exit529.land.lhs.true172_crit_edge: ; preds = %v4l2_rect_same_size.exit529
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true172

v4l2_rect_same_size.exit529.if.end176_crit_edge:  ; preds = %v4l2_rect_same_size.exit529
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end176

land.lhs.true172:                                 ; preds = %v4l2_rect_same_size.exit529.land.lhs.true172_crit_edge, %if.else168.land.lhs.true172_crit_edge
  %num_buffers.i530 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 286, i32 21
  %267 = ptrtoint ptr %num_buffers.i530 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %num_buffers.i530, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %cmp.i531.not = icmp eq i32 %268, 0
  br i1 %cmp.i531.not, label %land.lhs.true172.if.end176_crit_edge, label %land.lhs.true172.cleanup207_crit_edge

land.lhs.true172.cleanup207_crit_edge:            ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup207

land.lhs.true172.if.end176_crit_edge:             ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end176

if.end176:                                        ; preds = %land.lhs.true172.if.end176_crit_edge, %v4l2_rect_same_size.exit529.if.end176_crit_edge
  %269 = ptrtoint ptr %width1.i523 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %260, ptr %width1.i523, align 4
  %270 = ptrtoint ptr %height.i400 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %height.i400, align 4
  %height2.i535 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 282, i32 3
  %272 = ptrtoint ptr %height2.i535 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %271, ptr %height2.i535, align 4
  %273 = ptrtoint ptr %width.i397 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %width.i397, align 4
  %width1.i537 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 2
  %275 = ptrtoint ptr %width1.i537 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %274, ptr %width1.i537, align 4
  %276 = load i32, ptr %height.i400, align 4
  %height180 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 283, i32 3
  %div181328 = lshr i32 %276, %7
  %277 = ptrtoint ptr %height180 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %div181328, ptr %height180, align 4
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %crop_out, ptr noundef %fmt_out_rect170)
  br label %if.end184

if.end184:                                        ; preds = %if.end176, %if.end161, %if.end144
  %278 = ptrtoint ptr %top.i429 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %top.i429, align 4
  %mul187 = mul i32 %279, %8
  store i32 %mul187, ptr %top.i429, align 4
  %280 = ptrtoint ptr %height.i400 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %height.i400, align 4
  %mul190 = mul i32 %281, %8
  store i32 %mul190, ptr %height.i400, align 4
  %bitmap_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 224
  %282 = ptrtoint ptr %bitmap_out to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %bitmap_out, align 8
  %tobool191.not = icmp eq ptr %283, null
  br i1 %tobool191.not, label %if.end184.if.end205_crit_edge, label %land.lhs.true192

if.end184.if.end205_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end205

land.lhs.true192:                                 ; preds = %if.end184
  %width193 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 2
  %284 = ptrtoint ptr %width193 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %width193, align 4
  %286 = ptrtoint ptr %width.i397 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %width.i397, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %285, i32 %287)
  %cmp196.not = icmp eq i32 %285, %287
  br i1 %cmp196.not, label %lor.lhs.false197, label %land.lhs.true192.if.then202_crit_edge

land.lhs.true192.if.then202_crit_edge:            ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then202

lor.lhs.false197:                                 ; preds = %land.lhs.true192
  %height198 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 3
  %288 = ptrtoint ptr %height198 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %height198, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %289, i32 %mul190)
  %cmp201.not = icmp eq i32 %289, %mul190
  br i1 %cmp201.not, label %lor.lhs.false197.if.end205_crit_edge, label %lor.lhs.false197.if.then202_crit_edge

lor.lhs.false197.if.then202_crit_edge:            ; preds = %lor.lhs.false197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then202

lor.lhs.false197.if.end205_crit_edge:             ; preds = %lor.lhs.false197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end205

if.then202:                                       ; preds = %lor.lhs.false197.if.then202_crit_edge, %land.lhs.true192.if.then202_crit_edge
  tail call void @vfree(ptr noundef nonnull %283) #10
  %290 = ptrtoint ptr %bitmap_out to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr null, ptr %bitmap_out, align 8
  br label %if.end205

if.end205:                                        ; preds = %if.then202, %lor.lhs.false197.if.end205_crit_edge, %if.end184.if.end205_crit_edge
  %291 = call ptr @memcpy(ptr %compose_out, ptr %r89, i32 16)
  br label %cleanup207

cleanup207:                                       ; preds = %if.end205, %land.lhs.true172.cleanup207_crit_edge, %land.lhs.true157.cleanup207_crit_edge, %land.lhs.true137.cleanup207_crit_edge, %if.end87.cleanup207_crit_edge, %sw.bb83.cleanup207_crit_edge, %v4l2_rect_map_inside.exit, %if.end12.cleanup207_crit_edge, %sw.bb.cleanup207_crit_edge, %if.end8.cleanup207_crit_edge, %if.end.cleanup207_crit_edge, %land.lhs.true.cleanup207_crit_edge
  %retval.2 = phi i32 [ -25, %land.lhs.true.cleanup207_crit_edge ], [ -22, %if.end.cleanup207_crit_edge ], [ -22, %sw.bb.cleanup207_crit_edge ], [ %call13, %if.end12.cleanup207_crit_edge ], [ -22, %sw.bb83.cleanup207_crit_edge ], [ %call90, %if.end87.cleanup207_crit_edge ], [ -16, %land.lhs.true172.cleanup207_crit_edge ], [ -22, %if.end8.cleanup207_crit_edge ], [ 0, %if.end205 ], [ 0, %v4l2_rect_map_inside.exit ], [ -16, %land.lhs.true137.cleanup207_crit_edge ], [ -16, %land.lhs.true157.cleanup207_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_adjust_sel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_out_g_pixelaspect(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %type, ptr nocapture noundef writeonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp.not = icmp eq i32 %type, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %output.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 199
  %2 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %5, label %if.end.cleanup_crit_edge [
    i8 2, label %if.then.i
    i8 3, label %land.lhs.true.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %std_out.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 200
  %7 = ptrtoint ptr %std_out.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %std_out.i, align 8
  %and.i = and i64 %8, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.sw.bb2_crit_edge, label %if.then.i.cleanup.sink.split_crit_edge

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then.i.sw.bb2_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

land.lhs.true.i:                                  ; preds = %if.end
  %width.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 281, i32 2
  %9 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %10)
  %cmp.i = icmp eq i32 %10, 720
  br i1 %cmp.i, label %land.lhs.true2.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %height.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 281, i32 3
  %11 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 577, i32 %12)
  %cmp4.i = icmp ult i32 %12, 577
  br i1 %cmp4.i, label %if.then5.i, label %land.lhs.true2.i.cleanup_crit_edge

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5.i:                                       ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %12)
  %cmp8.i = icmp eq i32 %12, 480
  br i1 %cmp8.i, label %if.then5.i.cleanup.sink.split_crit_edge, label %if.then5.i.sw.bb2_crit_edge

if.then5.i.sw.bb2_crit_edge:                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

if.then5.i.cleanup.sink.split_crit_edge:          ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %if.then5.i.sw.bb2_crit_edge, %if.then.i.sw.bb2_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %if.then5.i.cleanup.sink.split_crit_edge, %if.then.i.cleanup.sink.split_crit_edge
  %.sink13 = phi i32 [ 54, %sw.bb2 ], [ 11, %if.then5.i.cleanup.sink.split_crit_edge ], [ 11, %if.then.i.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ 59, %sw.bb2 ], [ 10, %if.then5.i.cleanup.sink.split_crit_edge ], [ 10, %if.then.i.cleanup.sink.split_crit_edge ]
  %13 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink13, ptr %f, align 4
  %denominator = getelementptr inbounds %struct.v4l2_fract, ptr %f, i32 0, i32 1
  %14 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true2.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true2.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_vid_out_overlay(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %has_fb = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 72
  %2 = ptrtoint ptr %has_fb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_fb, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %clipcount1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %4 = ptrtoint ptr %clipcount1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clipcount1, align 4
  %overlay_out_top = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 222
  %6 = ptrtoint ptr %overlay_out_top to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %overlay_out_top, align 8
  %top = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %top, align 4
  %overlay_out_left = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 223
  %9 = ptrtoint ptr %overlay_out_left to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %overlay_out_left, align 4
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fmt, align 4
  %width = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 2
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %width4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %width4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %width4, align 4
  %height = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 3
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %height6 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height6, align 4
  %clipcount_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 227
  %18 = ptrtoint ptr %clipcount_out to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clipcount_out, align 4
  store i32 %19, ptr %clipcount1, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %field, align 4
  %chromakey_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 229
  %21 = ptrtoint ptr %chromakey_out to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chromakey_out, align 4
  %chromakey = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %23 = ptrtoint ptr %chromakey to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %chromakey, align 4
  %global_alpha_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 230
  %24 = ptrtoint ptr %global_alpha_out to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %global_alpha_out, align 8
  %global_alpha = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %global_alpha to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %global_alpha, align 4
  %27 = load i32, ptr %clipcount_out, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %5, i32 %27)
  %bitmap_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 224
  %29 = ptrtoint ptr %bitmap_out to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bitmap_out, align 8
  %cmp12 = icmp eq ptr %30, null
  %bitmap = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %bitmap, align 4
  br label %if.end28

if.else:                                          ; preds = %if.end
  %32 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bitmap, align 4
  %tobool15.not = icmp eq ptr %33, null
  br i1 %tobool15.not, label %if.else.if.end28_crit_edge, label %if.then16

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then16:                                        ; preds = %if.else
  %34 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %width, align 8
  %add = add i32 %35, 7
  %div71 = lshr i32 %add, 3
  %36 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height, align 4
  %mul = mul i32 %div71, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then16
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !81

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then16
  tail call void @__check_object_size(ptr noundef nonnull %30, i32 noundef %mul, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %38 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %33, i32 %mul, i32 -1226833920) #14, !srcloc !82
  %asmresult.i.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %30, i32 noundef %mul) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %33, ptr noundef nonnull %30, i32 noundef %mul) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %mul, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool24.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool24.not, label %copy_to_user.exit.if.end28_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit.if.end28_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.end28:                                         ; preds = %copy_to_user.exit.if.end28_crit_edge, %if.else.if.end28_crit_edge, %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool29.not = icmp eq i32 %28, 0
  br i1 %tobool29.not, label %if.end28.cleanup_crit_edge, label %land.lhs.true

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end28
  %clips = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %39 = ptrtoint ptr %clips to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clips, align 4
  %tobool30.not = icmp eq ptr %40, null
  br i1 %tobool30.not, label %land.lhs.true.cleanup_crit_edge, label %if.then31

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %clips_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 225
  %mul33 = mul i32 %28, 20
  %41 = call ptr @memcpy(ptr %40, ptr %clips_out, i32 %mul33)
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %land.lhs.true.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_try_fmt_vid_out_overlay(ptr noundef %file, ptr nocapture readnone %priv, ptr nocapture noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %has_fb = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 72
  %2 = ptrtoint ptr %has_fb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_fb, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup148_crit_edge, label %if.end

entry.cleanup148_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup148

if.end:                                           ; preds = %entry
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  %display_width = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 144
  %6 = ptrtoint ptr %display_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %display_width, align 4
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
  %display_height = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 145
  %13 = ptrtoint ptr %display_height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %display_height, align 8
  %sub11 = sub i32 0, %14
  %15 = tail call i32 @llvm.smax.i32(i32 %12, i32 %sub11)
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 %14)
  %17 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %top, align 4
  %width = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 2
  %18 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width, align 4
  %width28 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %width28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %width28, align 4
  %height = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 3
  %21 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height, align 4
  %height30 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %23 = ptrtoint ptr %height30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %height30, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %field, align 4
  %clipcount = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %25 = ptrtoint ptr %clipcount to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clipcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool31.not = icmp eq i32 %26, 0
  br i1 %tobool31.not, label %if.end.if.end35.thread_crit_edge, label %land.lhs.true

if.end.if.end35.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.thread

land.lhs.true:                                    ; preds = %if.end
  %clips = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %27 = ptrtoint ptr %clips to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clips, align 4
  %tobool32.not = icmp eq ptr %28, null
  br i1 %tobool32.not, label %if.then33, label %if.end35

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %clipcount to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %clipcount, align 4
  br label %if.end35.thread

if.end35.thread:                                  ; preds = %if.then33, %if.end.if.end35.thread_crit_edge
  %30 = ptrtoint ptr %clipcount to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr240 = load i32, ptr %clipcount, align 4
  br label %if.end40

if.end35:                                         ; preds = %land.lhs.true
  %31 = ptrtoint ptr %clipcount to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load i32, ptr %clipcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.pr)
  %cmp37 = icmp ugt i32 %.pr, 16
  br i1 %cmp37, label %if.end40.thread, label %if.end35.if.end40_crit_edge

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.end40.thread:                                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %clipcount to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16, ptr %clipcount, align 4
  br label %if.then43

if.end40:                                         ; preds = %if.end35.if.end40_crit_edge, %if.end35.thread
  %33 = phi i32 [ %.pr240, %if.end35.thread ], [ %.pr, %if.end35.if.end40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool42.not = icmp eq i32 %33, 0
  br i1 %tobool42.not, label %if.end40.cleanup148_crit_edge, label %if.end40.if.then43_crit_edge

if.end40.if.then43_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

if.end40.cleanup148_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup148

if.then43:                                        ; preds = %if.end40.if.then43_crit_edge, %if.end40.thread
  %34 = phi i32 [ 16, %if.end40.thread ], [ %33, %if.end40.if.then43_crit_edge ]
  %try_clips_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 226
  %clips44 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %35 = ptrtoint ptr %clips44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clips44, align 4
  %mul = mul i32 %34, 20
  %37 = call ptr @memcpy(ptr %try_clips_out, ptr %36, i32 %mul)
  %38 = ptrtoint ptr %clipcount to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %clipcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp47243.not = icmp eq i32 %39, 0
  br i1 %cmp47243.not, label %if.then43.for.body119.preheader_crit_edge, label %if.then43.for.body_crit_edge

if.then43.for.body_crit_edge:                     ; preds = %if.then43
  br label %for.body

if.then43.for.body119.preheader_crit_edge:        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body119.preheader

for.cond115.preheader:                            ; preds = %for.body
  %sub117 = add i32 %68, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub117)
  %cmp118247.not = icmp eq i32 %sub117, 0
  br i1 %cmp118247.not, label %for.cond115.preheader.for.end141_crit_edge, label %for.cond115.preheader.for.body119.preheader_crit_edge

for.cond115.preheader.for.body119.preheader_crit_edge: ; preds = %for.cond115.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body119.preheader

for.cond115.preheader.for.end141_crit_edge:       ; preds = %for.cond115.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end141

for.body119.preheader:                            ; preds = %for.cond115.preheader.for.body119.preheader_crit_edge, %if.then43.for.body119.preheader_crit_edge
  %sub117256 = phi i32 [ %sub117, %for.cond115.preheader.for.body119.preheader_crit_edge ], [ -1, %if.then43.for.body119.preheader_crit_edge ]
  %.lcssa254 = phi i32 [ %68, %for.cond115.preheader.for.body119.preheader_crit_edge ], [ 0, %if.then43.for.body119.preheader_crit_edge ]
  br label %for.body119

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then43.for.body_crit_edge
  %i.0244 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then43.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 226, i32 %i.0244
  %top49 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx, i32 0, i32 1
  %40 = ptrtoint ptr %top49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %top49, align 4
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 0)
  %43 = ptrtoint ptr %display_height to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %display_height, align 8
  %sub57 = add i32 %44, -1
  %45 = tail call i32 @llvm.smin.i32(i32 %42, i32 %sub57)
  %46 = ptrtoint ptr %top49 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %top49, align 4
  %height65 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx, i32 0, i32 3
  %47 = ptrtoint ptr %height65 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height65, align 4
  %49 = tail call i32 @llvm.smax.i32(i32 %48, i32 1)
  %50 = ptrtoint ptr %display_height to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %display_height, align 8
  %sub74 = sub i32 %51, %45
  %52 = tail call i32 @llvm.smin.i32(i32 %49, i32 %sub74)
  %53 = ptrtoint ptr %height65 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %height65, align 4
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx, align 4
  %56 = ptrtoint ptr %display_width to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %display_width, align 4
  %sub90 = add i32 %57, -1
  %58 = tail call i32 @llvm.umin.i32(i32 %55, i32 %sub90)
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx, align 4
  %width98 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx, i32 0, i32 2
  %60 = ptrtoint ptr %width98 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %width98, align 4
  %62 = tail call i32 @llvm.umax.i32(i32 %61, i32 1)
  %63 = ptrtoint ptr %display_width to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %display_width, align 4
  %sub107 = sub i32 %64, %58
  %65 = tail call i32 @llvm.umin.i32(i32 %62, i32 %sub107)
  %66 = ptrtoint ptr %width98 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %width98, align 4
  %inc = add nuw i32 %i.0244, 1
  %67 = ptrtoint ptr %clipcount to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %clipcount, align 4
  %cmp47 = icmp ult i32 %inc, %68
  br i1 %cmp47, label %for.body.for.body_crit_edge, label %for.cond115.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond115.loopexit:                             ; preds = %for.inc133.for.cond115.loopexit_crit_edge, %for.body119.for.cond115.loopexit_crit_edge
  %exitcond250.not = icmp eq i32 %add, %sub117256
  br i1 %exitcond250.not, label %for.cond115.loopexit.for.end141_crit_edge, label %for.cond115.loopexit.for.body119_crit_edge

for.cond115.loopexit.for.body119_crit_edge:       ; preds = %for.cond115.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body119

for.cond115.loopexit.for.end141_crit_edge:        ; preds = %for.cond115.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end141

for.body119:                                      ; preds = %for.cond115.loopexit.for.body119_crit_edge, %for.body119.preheader
  %i.1248 = phi i32 [ %add, %for.cond115.loopexit.for.body119_crit_edge ], [ 0, %for.body119.preheader ]
  %add = add nuw i32 %i.1248, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %.lcssa254)
  %cmp125245 = icmp ult i32 %add, %.lcssa254
  br i1 %cmp125245, label %for.body126.lr.ph, label %for.body119.for.cond115.loopexit_crit_edge

for.body119.for.cond115.loopexit_crit_edge:       ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond115.loopexit

for.body126.lr.ph:                                ; preds = %for.body119
  %arrayidx121 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 226, i32 %i.1248
  %69 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx121, align 4
  %width4.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx121, i32 0, i32 2
  %top.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx121, i32 0, i32 1
  %height13.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx121, i32 0, i32 3
  br label %for.body126

for.body126:                                      ; preds = %for.inc133.for.body126_crit_edge, %for.body126.lr.ph
  %j.0246 = phi i32 [ %add, %for.body126.lr.ph ], [ %inc134, %for.inc133.for.body126_crit_edge ]
  %arrayidx128 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 226, i32 %j.0246
  %71 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx128, align 4
  %width.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx128, i32 0, i32 2
  %73 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %width.i, align 4
  %add.i = add i32 %74, %72
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %add.i)
  %cmp.not.i = icmp ult i32 %70, %add.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %for.body126.for.inc133_crit_edge

for.body126.for.inc133_crit_edge:                 ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc133

lor.lhs.false.i:                                  ; preds = %for.body126
  %75 = ptrtoint ptr %width4.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %width4.i, align 4
  %add5.i = add i32 %76, %70
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %add5.i)
  %cmp6.not.i = icmp ult i32 %72, %add5.i
  br i1 %cmp6.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc133_crit_edge

lor.lhs.false.i.for.inc133_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc133

if.end.i:                                         ; preds = %lor.lhs.false.i
  %77 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %top.i, align 4
  %top7.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx128, i32 0, i32 1
  %79 = ptrtoint ptr %top7.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %top7.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx128, i32 0, i32 3
  %81 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %height.i, align 4
  %add8.i = add i32 %82, %80
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %add8.i)
  %cmp9.not.i = icmp ult i32 %78, %add8.i
  br i1 %cmp9.not.i, label %v4l2_rect_overlap.exit, label %if.end.i.for.inc133_crit_edge

if.end.i.for.inc133_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc133

v4l2_rect_overlap.exit:                           ; preds = %if.end.i
  %83 = ptrtoint ptr %height13.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %height13.i, align 4
  %add14.i = add i32 %84, %78
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %add14.i)
  %cmp15.not.i = icmp ult i32 %80, %add14.i
  br i1 %cmp15.not.i, label %v4l2_rect_overlap.exit.cleanup148_crit_edge, label %v4l2_rect_overlap.exit.for.inc133_crit_edge

v4l2_rect_overlap.exit.for.inc133_crit_edge:      ; preds = %v4l2_rect_overlap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc133

v4l2_rect_overlap.exit.cleanup148_crit_edge:      ; preds = %v4l2_rect_overlap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup148

for.inc133:                                       ; preds = %v4l2_rect_overlap.exit.for.inc133_crit_edge, %if.end.i.for.inc133_crit_edge, %lor.lhs.false.i.for.inc133_crit_edge, %for.body126.for.inc133_crit_edge
  %inc134 = add i32 %j.0246, 1
  %exitcond.not = icmp eq i32 %inc134, %.lcssa254
  br i1 %exitcond.not, label %for.inc133.for.cond115.loopexit_crit_edge, label %for.inc133.for.body126_crit_edge

for.inc133.for.body126_crit_edge:                 ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body126

for.inc133.for.cond115.loopexit_crit_edge:        ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond115.loopexit

for.end141:                                       ; preds = %for.cond115.loopexit.for.end141_crit_edge, %for.cond115.preheader.for.end141_crit_edge
  %.lcssa255 = phi i32 [ 1, %for.cond115.preheader.for.end141_crit_edge ], [ %.lcssa254, %for.cond115.loopexit.for.end141_crit_edge ]
  %85 = ptrtoint ptr %clips44 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %clips44, align 4
  %mul146 = mul i32 %.lcssa255, 20
  %87 = call ptr @memcpy(ptr %86, ptr %try_clips_out, i32 %mul146)
  br label %cleanup148

cleanup148:                                       ; preds = %for.end141, %v4l2_rect_overlap.exit.cleanup148_crit_edge, %if.end40.cleanup148_crit_edge, %entry.cleanup148_crit_edge
  %retval.4 = phi i32 [ -22, %entry.cleanup148_crit_edge ], [ 0, %for.end141 ], [ 0, %if.end40.cleanup148_crit_edge ], [ -22, %v4l2_rect_overlap.exit.cleanup148_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_vid_out_overlay(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %call1 = tail call i32 @vidioc_try_fmt_vid_out_overlay(ptr noundef %file, ptr undef, ptr noundef %f)
  %width = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %add = add i32 %3, 7
  %div55 = lshr i32 %add, 3
  %height = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 284, i32 3
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %mul = mul i32 %div55, %5
  %clipcount = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %6 = ptrtoint ptr %clipcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clipcount, align 4
  %mul2 = mul i32 %7, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bitmap = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bitmap, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.end.if.end14_crit_edge, label %if.then4

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then4:                                         ; preds = %if.end
  %call5 = tail call noalias ptr @vzalloc(i32 noundef %mul) #15
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %if.end8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  %10 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bitmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then12_crit_edge, label %if.then27.i.i, !prof !81

land.rhs16.i.i.if.then12_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %if.then12

if.then.i.i.i:                                    ; preds = %if.end8
  tail call void @__check_object_size(ptr noundef nonnull %call5, i32 noundef %mul, i1 noundef zeroext false) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 %mul, i32 -1226833920) #14, !srcloc !83
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !81

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call5, i32 noundef %mul) #10
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #10
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !84
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !86
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call5, ptr noundef %11, i32 noundef %mul) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !86
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end14_crit_edge, label %if.then11.i.i, !prof !81

if.end.i.i.if.end14_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %mul, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call5, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.then12

if.then12:                                        ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.then12_crit_edge
  tail call void @vfree(ptr noundef nonnull %call5) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end.i.i.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %new_bitmap.0 = phi ptr [ null, %if.end.if.end14_crit_edge ], [ %call5, %if.end.i.i.if.end14_crit_edge ]
  %top = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %top, align 4
  %overlay_out_top = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 222
  %19 = ptrtoint ptr %overlay_out_top to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %overlay_out_top, align 8
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fmt, align 4
  %overlay_out_left = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 223
  %22 = ptrtoint ptr %overlay_out_left to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %overlay_out_left, align 4
  %bitmap_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 224
  %23 = ptrtoint ptr %bitmap_out to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bitmap_out, align 8
  tail call void @vfree(ptr noundef %24) #10
  %25 = ptrtoint ptr %bitmap_out to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %new_bitmap.0, ptr %bitmap_out, align 8
  %26 = ptrtoint ptr %clipcount to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clipcount, align 4
  %clipcount_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 227
  %28 = ptrtoint ptr %clipcount_out to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %clipcount_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool19.not = icmp eq i32 %27, 0
  br i1 %tobool19.not, label %if.end14.if.end22_crit_edge, label %if.then20

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %clips_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 225
  %try_clips_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 226
  %29 = call ptr @memcpy(ptr %clips_out, ptr %try_clips_out, i32 %mul2)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end14.if.end22_crit_edge
  %chromakey = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %30 = ptrtoint ptr %chromakey to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chromakey, align 4
  %chromakey_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 229
  %32 = ptrtoint ptr %chromakey_out to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %chromakey_out, align 4
  %global_alpha = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %33 = ptrtoint ptr %global_alpha to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %global_alpha, align 4
  %global_alpha_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 230
  %35 = ptrtoint ptr %global_alpha_out to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %global_alpha_out, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then12, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then12 ], [ 0, %if.end22 ], [ %call1, %entry.cleanup_crit_edge ], [ -12, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_out_overlay(ptr noundef %file, ptr nocapture noundef readnone %fh, i32 noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %tobool = icmp ne i32 %i, 0
  br i1 %tobool, label %land.lhs.true, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %fmt_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 278
  %2 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt_out, align 8
  %can_do_overlay = getelementptr inbounds %struct.vivid_fmt, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %can_do_overlay to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %can_do_overlay, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %do.body, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %6 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name) #13
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %overlay_out_enabled = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 221
  %frombool = zext i1 %tobool to i8
  %7 = ptrtoint ptr %overlay_out_enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %overlay_out_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_out_g_fbuf(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 255, ptr %a, align 4
  %fbuf_out_flags = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 228
  %3 = ptrtoint ptr %fbuf_out_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fbuf_out_flags, align 8
  %or = or i32 %4, 2
  %flags = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %flags, align 4
  %video_pbase = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 141
  %6 = ptrtoint ptr %video_pbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %video_pbase, align 8
  %8 = inttoptr i32 %7 to ptr
  %base = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 2
  %9 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %base, align 4
  %display_width = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 144
  %10 = ptrtoint ptr %display_width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %display_width, align 4
  %fmt = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %fmt, align 4
  %display_height = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 145
  %13 = ptrtoint ptr %display_height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %display_height, align 8
  %height = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %height, align 4
  %length = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 150, i32 9, i32 1
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %cmp = icmp eq i32 %17, 5
  %spec.select = select i1 %cmp, i32 892424769, i32 1346520914
  %18 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select, ptr %18, align 4
  %display_byte_stride = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 146
  %20 = ptrtoint ptr %display_byte_stride to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %display_byte_stride, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %bytesperline, align 4
  %mul = mul i32 %21, %14
  %sizeimage = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3, i32 5
  %23 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul, ptr %sizeimage, align 4
  %field = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3, i32 6
  %25 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %colorspace, align 4
  %priv = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3, i32 7
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %priv, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_out_s_fbuf(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %flags = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and)
  %cmp = icmp eq i32 %and, 68
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = lshr i32 %3, 3
  %4 = and i32 %and2, 7
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %4, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 2, label %if.end.sw.epilog_crit_edge12
    i32 1, label %if.end.sw.epilog_crit_edge13
    i32 4, label %if.end.sw.epilog_crit_edge14
  ]

if.end.sw.epilog_crit_edge14:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.sw.epilog_crit_edge13:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.sw.epilog_crit_edge12:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge12, %if.end.sw.epilog_crit_edge13, %if.end.sw.epilog_crit_edge14
  %fbuf_out_flags = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 228
  %6 = ptrtoint ptr %fbuf_out_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fbuf_out_flags, align 8
  %and3 = and i32 %7, -125
  store i32 %and3, ptr %fbuf_out_flags, align 8
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and5 = and i32 %9, 124
  %or = or i32 %and5, %and3
  store i32 %or, ptr %fbuf_out_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_enum_output(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %out) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out, align 8
  %num_outputs = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 55
  %4 = ptrtoint ptr %num_outputs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_outputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_output, ptr %out, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %type, align 4
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %8, label %if.end.cleanup_crit_edge [
    i8 2, label %sw.bb
    i8 3, label %sw.bb8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %name = getelementptr inbounds %struct.v4l2_output, ptr %out, i32 0, i32 1
  %arrayidx3 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 58, i32 %3
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %11 to i32
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %conv4)
  %std = getelementptr inbounds %struct.v4l2_output, ptr %out, i32 0, i32 5
  %12 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 16777215, ptr %std, align 8
  %has_audio_outputs = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 60
  %13 = ptrtoint ptr %has_audio_outputs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_audio_outputs, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %sw.bb.cleanup.sink.split_crit_edge, label %if.then6

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %audioset = getelementptr inbounds %struct.v4l2_output, ptr %out, i32 0, i32 3
  %15 = ptrtoint ptr %audioset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %audioset, align 8
  br label %cleanup.sink.split

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name9 = getelementptr inbounds %struct.v4l2_output, ptr %out, i32 0, i32 1
  %arrayidx13 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 58, i32 %3
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %17 to i32
  %call15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name9, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %conv14)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb8, %if.then6, %sw.bb.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 2, %sw.bb8 ], [ 4, %if.then6 ], [ 4, %sw.bb.cleanup.sink.split_crit_edge ]
  %capabilities = getelementptr inbounds %struct.v4l2_output, ptr %out, i32 0, i32 6
  %18 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %capabilities, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_output(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %o) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %output = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 199
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output, align 4
  %4 = ptrtoint ptr %o to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %o, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_output(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %o) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_outputs = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %num_outputs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_outputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %o)
  %cmp.not = icmp ugt i32 %3, %o
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %output = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 199
  %4 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %output, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %o)
  %cmp1 = icmp eq i32 %5, %o
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %num_buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 286, i32 21
  %6 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %num_buffers.i55 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 288, i32 21
  %8 = ptrtoint ptr %num_buffers.i55 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_buffers.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i56.not = icmp eq i32 %9, 0
  br i1 %cmp.i56.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %num_buffers.i57 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 290, i32 21
  %10 = ptrtoint ptr %num_buffers.i57 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_buffers.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i58.not = icmp eq i32 %11, 0
  br i1 %cmp.i58.not, label %if.end9, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false6
  %12 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %o, ptr %output, align 4
  %tv_audio_output = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 210
  %13 = ptrtoint ptr %tv_audio_output to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tv_audio_output, align 4
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %o
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp11 = icmp eq i8 %15, 2
  %spec.select = select i1 %cmp11, i64 16777215, i64 0
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 20, i32 22
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %spec.select, ptr %16, align 8
  %tvnorms19 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 24, i32 22
  %18 = ptrtoint ptr %tvnorms19 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %spec.select, ptr %tvnorms19, align 8
  %tvnorms22 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 34, i32 22
  %19 = ptrtoint ptr %tvnorms22 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %spec.select, ptr %tvnorms22, align 8
  tail call void @vivid_update_format_out(ptr noundef %1)
  %ctrl_display_present = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 101
  %20 = ptrtoint ptr %ctrl_display_present to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl_display_present, align 8
  %22 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %output, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %23
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %cmp.i59 = icmp eq i8 %25, 3
  tail call void @v4l2_ctrl_activate(ptr noundef %21, i1 noundef zeroext %cmp.i59) #10
  %26 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %output, align 4
  %arrayidx.i61 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %27
  %28 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp.i62 = icmp eq i8 %29, 3
  br i1 %cmp.i62, label %if.then25, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %ctrl_display_present to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctrl_display_present, align 8
  %arrayidx28 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 219, i32 %27
  %32 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx28, align 1, !range !75
  %34 = zext i8 %33 to i32
  tail call fastcc void @v4l2_ctrl_s_ctrl(ptr noundef %31, i32 noundef %34)
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end9.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -16, %lor.lhs.false6.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %if.end3.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @v4l2_ctrl_s_ctrl(ptr noundef %ctrl, i32 noundef %val) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %lock.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #10
  %call = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %ctrl, i32 noundef %val) #10
  %4 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handler.i, align 8
  %lock.i2 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %lock.i2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock.i2, align 4
  tail call void @mutex_unlock(ptr noundef %7) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vidioc_enumaudout(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %vout) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [2 x %struct.v4l2_audioout], ptr @vivid_audio_outputs, i32 0, i32 %1
  %2 = call ptr @memcpy(ptr %vout, ptr %arrayidx, i32 52)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_audout(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %vout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %output.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 199
  %2 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.i = icmp eq i8 %5, 2
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tv_audio_output = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 210
  %6 = ptrtoint ptr %tv_audio_output to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tv_audio_output, align 4
  %arrayidx = getelementptr [2 x %struct.v4l2_audioout], ptr @vivid_audio_outputs, i32 0, i32 %7
  %8 = call ptr @memcpy(ptr %vout, ptr %arrayidx, i32 52)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_audout(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %vout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %output.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 199
  %2 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.i = icmp eq i8 %5, 2
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %vout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ugt i32 %7, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tv_audio_output = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 210
  %8 = ptrtoint ptr %tv_audio_output to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tv_audio_output, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_out_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %output.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 199
  %2 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.i = icmp eq i8 %5, 2
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %std_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 200
  %6 = ptrtoint ptr %std_out to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %std_out, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %id)
  %cmp = icmp eq i64 %7, %id
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %num_buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 286, i32 21
  %8 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i15.not = icmp eq i32 %9, 0
  br i1 %cmp.i15.not, label %lor.lhs.false, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %num_buffers.i16 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 288, i32 21
  %10 = ptrtoint ptr %num_buffers.i16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_buffers.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i17.not = icmp eq i32 %11, 0
  br i1 %cmp.i17.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %std_out to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %id, ptr %std_out, align 8
  tail call void @vivid_update_format_out(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_out_s_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %_fh, ptr noundef %timings) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %output.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 199
  %2 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp.i = icmp eq i8 %5, 3
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef %timings, ptr noundef nonnull @vivid_dv_timings_cap, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  br i1 %call2, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %standards.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 15
  %6 = ptrtoint ptr %standards.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %standards.i, align 1
  %and.i = and i32 %7, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %call.i20 = tail call zeroext i1 @v4l2_valid_dv_timings(ptr noundef %timings, ptr noundef nonnull @vivid_dv_timings_cap, ptr noundef null, ptr noundef null) #10
  br i1 %call.i20, label %land.lhs.true.i.if.end5_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dv_timings_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 201
  %call6 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef %dv_timings_out, i32 noundef 0, i1 noundef zeroext true) #10
  br i1 %call6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %num_buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 286, i32 21
  %8 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i21.not = icmp eq i32 %9, 0
  br i1 %cmp.i21.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %10 = call ptr @memcpy(ptr %dv_timings_out, ptr %timings, i32 132)
  tail call void @vivid_update_format_out(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ -16, %if.end8.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_match_dv_timings(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_out_g_parm(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %parm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
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
  %5 = load i8, ptr %multiplanar, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool.not, i32 2, i32 10
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cond)
  %cmp.not = icmp eq i32 %3, %cond
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %parm1 = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1
  %6 = ptrtoint ptr %parm1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4096, ptr %parm1, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %timeperframe_vid_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 279
  %7 = ptrtoint ptr %timeperframe_vid_out to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %timeperframe_vid_out, align 4
  %9 = ptrtoint ptr %timeperframe to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %timeperframe, align 4
  %writebuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %writebuffers to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %writebuffers, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_subscribe_event(ptr noundef %fh, ptr noundef %sub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cond = icmp eq i32 %1, 5
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %vdev = getelementptr inbounds %struct.v4l2_fh, ptr %fh, i32 0, i32 1
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @v4l2_src_change_event_subscribe(ptr noundef %fh, ptr noundef %sub) #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %fh, ptr noundef %sub) #10
  br label %return

return:                                           ; preds = %sw.default, %if.then, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %sw.default ], [ -22, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subscribe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vivid_vid_can_loop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_start_generating_vid_out(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_stop_generating_vid_out(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_valid_dv_timings(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !63}
!llvm.named.register.sp = !{!65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @vivid_vid_out_qops, !1, !"vivid_vid_out_qops", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-out.c", i32 201, i32 22}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-out.c", i32 364, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vivid_try_fmt_vid_out._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @vivid_try_fmt_vid_out._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-out.c", i32 468, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vivid_s_fmt_vid_out._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @vivid_s_fmt_vid_out._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-out.c", i32 964, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @vivid_vid_out_overlay._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @vivid_vid_out_overlay._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-out.c", i32 1044, i32 42}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-out.c", i32 1052, i32 42}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-out.c", i32 81, i32 2}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @vid_out_queue_setup._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @vid_out_queue_setup._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-out.c", i32 83, i32 3}
!29 = !{ptr @vid_out_queue_setup._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @vid_out_queue_setup._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-out.c", i32 92, i32 2}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @vid_out_buf_out_validate._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @vid_out_buf_out_validate._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-out.c", i32 114, i32 2}
!38 = !{ptr @vid_out_buf_prepare._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @vid_out_buf_prepare._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-out.c", i32 134, i32 4}
!42 = !{ptr @vid_out_buf_prepare._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @vid_out_buf_prepare._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-out.c", i32 165, i32 2}
!46 = !{ptr @vid_out_start_streaming._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @vid_out_start_streaming._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-out.c", i32 189, i32 2}
!50 = !{ptr @vid_out_stop_streaming._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @vid_out_stop_streaming._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-out.c", i32 149, i32 2}
!54 = !{ptr @vid_out_buf_queue._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @vid_out_buf_queue._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!63 = !{ptr @vivid_audio_outputs, !64, !"vivid_audio_outputs", i1 false, i1 false}
!64 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-out.c", i32 1028, i32 35}
!65 = !{!"sp"}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i8 0, i8 2}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.peeled.count", i32 1}
!78 = !{!"branch_weights", i32 1, i32 2000}
!79 = !{i64 1148314, i64 1148341, i64 1148363, i64 1148391}
!80 = !{i64 1148722, i64 1148749, i64 1148782, i64 1148803, i64 1148830, i64 1148856}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{i64 2152475664, i64 2152475689}
!83 = !{i64 2152474983, i64 2152475008}
!84 = !{i64 4970538}
!85 = !{i64 4970735}
!86 = !{i64 2152455968}
