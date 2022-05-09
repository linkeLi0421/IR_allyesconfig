; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-touch-cap.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-touch-cap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.104, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.105, %struct.anon.106, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
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
%struct.anon.104 = type { ptr, ptr }
%struct.anon.105 = type { ptr, ptr }
%struct.anon.106 = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.107, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.107 = type { ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.108 }
%struct.anon.108 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.99 }
%union.anon.99 = type { [32 x i32] }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.93, i32, i32 }
%union.anon.93 = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vivid_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.92 }
%union.anon.92 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.94, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.94 = type { i8 }
%struct.v4l2_streamparm = type { i32, %union.anon.112 }
%union.anon.112 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }

@vivid_touch_cap_qops = dso_local constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @touch_cap_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @touch_cap_buf_prepare, ptr null, ptr null, ptr @touch_cap_start_streaming, ptr @touch_cap_stop_streaming, ptr @touch_cap_buf_queue, ptr @touch_cap_buf_request_complete }, [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Vivid Touch\00", [20 x i8] zeroinitializer }, align 32
@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@touch_cap_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: %s data will not fit into plane (%lu < %u)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"touch_cap_buf_prepare\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/media/test-drivers/vivid/vivid-touch-cap.c\00", [45 x i8] zeroinitializer }, align 32
@touch_cap_buf_prepare._entry_ptr = internal global ptr @touch_cap_buf_prepare._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 6]
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"vivid_touch_cap_qops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 109, i32 22 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 174, i32 21 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private constant [54 x i8] c"../drivers/media/test-drivers/vivid/vivid-touch-cap.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 48, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 1163, i32 7 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @touch_cap_buf_prepare._entry, ptr @touch_cap_buf_prepare._entry_ptr, ptr @vivid_touch_cap_qops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_touch_cap_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @touch_cap_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @touch_cap_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sizeimage = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 276, i32 5
  %2 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sizeimage, align 4
  %4 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp = icmp ult i32 %7, %3
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %sizes, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then.if.end3_crit_edge
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %9 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_buffers, align 4
  %11 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nbuffers, align 4
  %add = add i32 %12, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp4 = icmp ult i32 %add, 2
  br i1 %cmp4, label %if.then5, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 2, %10
  %13 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  %14 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %nplanes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @touch_cap_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
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
  %sizeimage = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 276, i32 5
  %4 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizeimage, align 4
  %buf_prepare_error = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 154
  %6 = ptrtoint ptr %buf_prepare_error to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf_prepare_error, align 2, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %buf_prepare_error to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %buf_prepare_error, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %9 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %vb2_plane_size.exit.cleanup_crit_edge, label %do.body

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %if.end
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %5)
  %cmp34 = icmp ult i32 %12, %5
  br i1 %cmp34, label %do.body.thread, label %if.then.i32

do.body:                                          ; preds = %vb2_plane_size.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %13 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4.not = icmp eq i32 %13, 0
  br i1 %cmp4.not, label %do.body.cleanup_crit_edge, label %do.body.vb2_plane_size.exit28_crit_edge

do.body.vb2_plane_size.exit28_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_plane_size.exit28

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.thread:                                   ; preds = %vb2_plane_size.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %14 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp4.not35 = icmp eq i32 %14, 0
  br i1 %cmp4.not35, label %do.body.thread.cleanup_crit_edge, label %if.then.i26

do.body.thread.cleanup_crit_edge:                 ; preds = %do.body.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i26:                                      ; preds = %do.body.thread
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit28

vb2_plane_size.exit28:                            ; preds = %if.then.i26, %do.body.vb2_plane_size.exit28_crit_edge
  %retval.0.i27 = phi i32 [ %16, %if.then.i26 ], [ 0, %do.body.vb2_plane_size.exit28_crit_edge ]
  %name38 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name38, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i27, i32 noundef %5) #11
  br label %cleanup

if.then.i32:                                      ; preds = %vb2_plane_size.exit.thread
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %5)
  %cmp1.i = icmp ult i32 %18, %5
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i32.if.end42.i_crit_edge

if.then.i32.if.end42.i_crit_edge:                 ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i32
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !23

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1163, i32 noundef 9, ptr noundef null) #8
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i32.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %20, %if.then38.i ], [ %5, %if.then.i32.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %21 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %vb2_plane_size.exit28, %do.body.thread.cleanup_crit_edge, %do.body.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %vb2_plane_size.exit28 ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %if.end42.i ], [ -22, %do.body.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @touch_cap_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %touch_cap_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 273
  %2 = ptrtoint ptr %touch_cap_seq_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %touch_cap_seq_count, align 4
  %start_streaming_error = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 155
  %3 = ptrtoint ptr %start_streaming_error to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %start_streaming_error, align 1, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %start_streaming_error to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %start_streaming_error, align 1
  br label %if.then4

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @vivid_start_generating_touch_cap(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end18_crit_edge, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %if.end.thread
  %err.032 = phi i32 [ -22, %if.end.thread ], [ %call2, %if.end.if.then4_crit_edge ]
  %touch_cap_active = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 249
  %6 = ptrtoint ptr %touch_cap_active to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %touch_cap_active, align 4
  %cmp.not34 = icmp eq ptr %7, %touch_cap_active
  br i1 %cmp.not34, label %if.then4.if.end18_crit_edge, label %if.then4.for.body_crit_edge

if.then4.for.body_crit_edge:                      ; preds = %if.then4
  br label %for.body

if.then4.if.end18_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.then4.for.body_crit_edge
  %.pn.in35 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %7, %if.then4.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in35, i32 -736
  %8 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn.in35, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in35) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in35, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %15 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in35, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 3) #8
  %cmp.not = icmp eq ptr %.pn, %touch_cap_active
  br i1 %cmp.not, label %list_del.exit.if.end18_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.if.end18_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end18:                                         ; preds = %list_del.exit.if.end18_crit_edge, %if.then4.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %err.033 = phi i32 [ 0, %if.end.if.end18_crit_edge ], [ %err.032, %if.then4.if.end18_crit_edge ], [ %err.032, %list_del.exit.if.end18_crit_edge ]
  ret i32 %err.033
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @touch_cap_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  tail call void @vivid_stop_generating_touch_cap(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @touch_cap_buf_queue(ptr noundef %vb) #2 align 64 {
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
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %4 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %field, align 4
  %slock = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %slock) #8
  %list = getelementptr inbounds %struct.vivid_buffer, ptr %vb, i32 0, i32 1
  %touch_cap_active = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 249
  %prev.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 249, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %6, ptr noundef %touch_cap_active) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %touch_cap_active, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.vivid_buffer, ptr %vb, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %slock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @touch_cap_buf_request_complete(ptr nocapture noundef readonly %vb) #2 align 64 {
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
  %req = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %ctrl_hdl_touch_cap = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 37
  tail call void @v4l2_ctrl_request_complete(ptr noundef %5, ptr noundef %ctrl_hdl_touch_cap) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vivid_enum_fmt_tch(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 909198420, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_g_fmt_tch(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multiplanar, align 8, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %tch_format = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 276
  %4 = call ptr @memcpy(ptr %fmt, ptr %tch_format, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_g_fmt_tch_mplane(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) local_unnamed_addr #2 align 64 {
entry:
  %sp_fmt = alloca %struct.v4l2_format, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %sp_fmt) #8
  %2 = getelementptr inbounds i8, ptr %sp_fmt, i32 52
  %3 = call ptr @memset(ptr %2, i32 255, i32 152)
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %4 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %multiplanar, align 8, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %sp_fmt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %sp_fmt, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %sp_fmt, i32 0, i32 1
  %tch_format = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 276
  %7 = call ptr @memcpy(ptr %fmt, ptr %tch_format, i32 48)
  call void @fmt_sp2mp(ptr noundef nonnull %sp_fmt, ptr noundef %f) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %sp_fmt) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fmt_sp2mp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_g_parm_tch(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %parm) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
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
  %5 = load i8, ptr %multiplanar, align 8, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool.not, i32 1, i32 9
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cond)
  %cmp.not = icmp eq i32 %3, %cond
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %parm1 = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1
  %6 = ptrtoint ptr %parm1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4096, ptr %parm1, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %timeperframe_tch_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 275
  %7 = ptrtoint ptr %timeperframe_tch_cap to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %timeperframe_tch_cap, align 4
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
define dso_local i32 @vivid_enum_input_tch(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %inp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %type, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 32) #8
  %capabilities = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 7
  %3 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %capabilities, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @vivid_g_input_tch(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vivid_set_touch(ptr nocapture noundef %dev, i32 noundef %i) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %tobool.not = icmp eq i32 %i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tch_format = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 276
  %pixelformat = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 276, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 909198420, ptr %pixelformat, align 4
  %1 = ptrtoint ptr %tch_format to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 21, ptr %tch_format, align 4
  %height = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 276, i32 1
  %2 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12, ptr %height, align 4
  %field = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 276, i32 3
  %3 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 276, i32 6
  %4 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 11, ptr %colorspace, align 4
  %bytesperline = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 276, i32 4
  %5 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 42, ptr %bytesperline, align 4
  %sizeimage = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 276, i32 5
  %6 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 504, ptr %sizeimage, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_s_input_tch(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %i) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %tobool.not.i = icmp eq i32 %i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.vivid_set_touch.exit_crit_edge

entry.vivid_set_touch.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vivid_set_touch.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tch_format.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 276
  %pixelformat.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 276, i32 2
  %2 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 909198420, ptr %pixelformat.i, align 4
  %3 = ptrtoint ptr %tch_format.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 21, ptr %tch_format.i, align 4
  %height.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 276, i32 1
  %4 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 12, ptr %height.i, align 4
  %field.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 276, i32 3
  %5 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 276, i32 6
  %6 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 11, ptr %colorspace.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 276, i32 4
  %7 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 42, ptr %bytesperline.i, align 4
  %sizeimage.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 276, i32 5
  %8 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 504, ptr %sizeimage.i, align 4
  br label %vivid_set_touch.exit

vivid_set_touch.exit:                             ; preds = %if.end.i, %entry.vivid_set_touch.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %entry.vivid_set_touch.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_fillbuff_tch(ptr nocapture noundef %dev, ptr noundef %buf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tch_format = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 276
  %0 = ptrtoint ptr %tch_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tch_format, align 4
  %height = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 276, i32 1
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %mul = mul i32 %3, %1
  %call = tail call ptr @vb2_plane_vaddr(ptr noundef %buf, i32 noundef 0) #8
  %touch_cap_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 273
  %4 = ptrtoint ptr %touch_cap_seq_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %touch_cap_seq_count, align 4
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf, i32 0, i32 4
  %6 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %sequence, align 8
  %div244 = lshr i32 %5, 4
  %rem = and i32 %div244, 7
  %rem6 = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp8.i = icmp sgt i32 %mul, 0
  br i1 %cmp8.i, label %entry.for.body.i_crit_edge, label %entry.vivid_fill_buff_noise.exit_crit_edge

entry.vivid_fill_buff_noise.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vivid_fill_buff_noise.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call.i.i = tail call i32 @get_random_u32() #8
  %call.i.i.frozen = freeze i32 %call.i.i
  %div.i = udiv i32 %call.i.i.frozen, 10
  %7 = mul i32 %div.i, 10
  %rem.i.decomposed = sub i32 %call.i.i.frozen, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i = icmp eq i32 %rem.i.decomposed, 0
  %rem1.i = urem i32 %div.i, 7
  %8 = trunc i32 %rem1.i to i16
  %conv.i = add nsw i16 %8, -3
  %.sink.i = select i1 %tobool.not.i, i16 %conv.i, i16 0
  %9 = getelementptr i16, ptr %call, i32 %i.09.i
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %.sink.i, ptr %9, align 2
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %mul
  br i1 %exitcond.not.i, label %for.body.i.vivid_fill_buff_noise.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.vivid_fill_buff_noise.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vivid_fill_buff_noise.exit

vivid_fill_buff_noise.exit:                       ; preds = %for.body.i.vivid_fill_buff_noise.exit_crit_edge, %entry.vivid_fill_buff_noise.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %rem6)
  %cmp = icmp ugt i32 %rem6, 11
  br i1 %cmp, label %vivid_fill_buff_noise.exit.cleanup_crit_edge, label %if.end

vivid_fill_buff_noise.exit.cleanup_crit_edge:     ; preds = %vivid_fill_buff_noise.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %vivid_fill_buff_noise.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem6)
  %cmp7 = icmp eq i32 %rem6, 0
  br i1 %cmp7, label %if.then8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @get_random_u32() #8
  %tch_pat_random = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 277
  %11 = ptrtoint ptr %tch_pat_random to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %tch_pat_random, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %tch_pat_random11 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 277
  %12 = ptrtoint ptr %tch_pat_random11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tch_pat_random11, align 4
  %14 = zext i32 %rem to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rem, label %if.end10.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb22
    i32 3, label %sw.bb31
    i32 4, label %sw.bb39
    i32 5, label %sw.bb59
    i32 6, label %for.cond.preheader
    i32 7, label %if.end10.for.cond100.preheader_crit_edge
  ]

if.end10.for.cond100.preheader_crit_edge:         ; preds = %if.end10
  br label %for.cond100.preheader

for.cond.preheader:                               ; preds = %if.end10
  %15 = ptrtoint ptr %tch_format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tch_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp80261.not = icmp eq i32 %16, 0
  br i1 %cmp80261.not, label %for.cond.preheader.sw.epilog_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.sw.epilog_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem6)
  %cmp12 = icmp eq i32 %rem6, 2
  br i1 %cmp12, label %if.then13, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %rem14 = urem i32 %13, %mul
  br label %sw.epilog.sink.split

sw.bb16:                                          ; preds = %if.end10
  %17 = zext i32 %rem6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %rem6, label %sw.bb16.sw.epilog_crit_edge [
    i32 2, label %sw.bb16.if.then19_crit_edge
    i32 4, label %sw.bb16.if.then19_crit_edge271
  ]

sw.bb16.if.then19_crit_edge271:                   ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

sw.bb16.if.then19_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then19:                                        ; preds = %sw.bb16.if.then19_crit_edge, %sw.bb16.if.then19_crit_edge271
  %rem20 = urem i32 %13, %mul
  br label %sw.epilog.sink.split

sw.bb22:                                          ; preds = %if.end10
  %18 = zext i32 %rem6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %rem6, label %sw.bb22.sw.epilog_crit_edge [
    i32 2, label %sw.bb22.if.then28_crit_edge
    i32 4, label %sw.bb22.if.then28_crit_edge272
    i32 6, label %sw.bb22.if.then28_crit_edge273
  ]

sw.bb22.if.then28_crit_edge273:                   ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

sw.bb22.if.then28_crit_edge272:                   ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

sw.bb22.if.then28_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

sw.bb22.sw.epilog_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then28:                                        ; preds = %sw.bb22.if.then28_crit_edge, %sw.bb22.if.then28_crit_edge272, %sw.bb22.if.then28_crit_edge273
  %rem29 = urem i32 %13, %mul
  br label %sw.epilog.sink.split

sw.bb31:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 4
  %rem33 = urem i32 %13, %20
  %21 = ptrtoint ptr %tch_format to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tch_format, align 4
  %mul35 = mul i32 %22, %rem33
  %div37 = udiv i32 %22, 12
  %mul38 = mul nuw i32 %div37, %rem6
  %add = add i32 %mul38, %mul35
  br label %sw.epilog.sink.split

sw.bb39:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %tch_format to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tch_format, align 4
  %div41252 = lshr i32 %24, 1
  %25 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height, align 4
  %div43253 = lshr i32 %26, 1
  %sub = sub nuw nsw i32 11, %rem6
  %mul44 = mul i32 %div41252, %sub
  %div45 = udiv i32 %mul44, 12
  %mul47 = mul i32 %div43253, %sub
  %div48 = udiv i32 %mul47, 12
  %sub49 = sub nsw i32 %div41252, %div45
  %sub51 = sub nsw i32 %div43253, %div48
  %mul52 = mul i32 %sub51, %24
  %add53 = add i32 %sub49, %mul52
  tail call fastcc void @vivid_tch_buf_set(ptr noundef %tch_format, ptr noundef %call, i32 noundef %add53)
  %add54 = add nuw i32 %div45, %div41252
  %27 = ptrtoint ptr %tch_format to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tch_format, align 4
  %add56 = add nuw i32 %div48, %div43253
  %mul57 = mul i32 %add56, %28
  %add58 = add i32 %add54, %mul57
  br label %sw.epilog.sink.split

sw.bb59:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %tch_format to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tch_format, align 4
  %div61250 = lshr i32 %30, 1
  %31 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height, align 4
  %div63251 = lshr i32 %32, 1
  %mul64 = mul i32 %div61250, %rem6
  %div65 = udiv i32 %mul64, 12
  %mul66 = mul i32 %div63251, %rem6
  %div67 = udiv i32 %mul66, 12
  %sub68 = sub nsw i32 %div61250, %div65
  %sub70 = sub nsw i32 %div63251, %div67
  %mul71 = mul i32 %sub70, %30
  %add72 = add i32 %sub68, %mul71
  tail call fastcc void @vivid_tch_buf_set(ptr noundef %tch_format, ptr noundef %call, i32 noundef %add72)
  %add73 = add nuw i32 %div65, %div61250
  %33 = ptrtoint ptr %tch_format to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tch_format, align 4
  %add75 = add nuw i32 %div67, %div63251
  %mul76 = mul i32 %add75, %34
  %add77 = add i32 %add73, %mul76
  br label %sw.epilog.sink.split

for.body:                                         ; preds = %for.inc92.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %x.0262 = phi i32 [ %inc93, %for.inc92.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %35 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height, align 4
  %div82249 = lshr i32 %36, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div82249, i32 %36)
  %cmp85259 = icmp ult i32 %div82249, %36
  br i1 %cmp85259, label %for.body.for.body86_crit_edge, label %for.body.for.inc92_crit_edge

for.body.for.inc92_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc92

for.body.for.body86_crit_edge:                    ; preds = %for.body
  br label %for.body86

for.body86:                                       ; preds = %for.body86.for.body86_crit_edge, %for.body.for.body86_crit_edge
  %y.0260 = phi i32 [ %inc, %for.body86.for.body86_crit_edge ], [ %div82249, %for.body.for.body86_crit_edge ]
  %call.i.i254 = tail call i32 @get_random_u32() #8
  %rem.i255 = urem i32 %call.i.i254, 40
  %37 = trunc i32 %rem.i255 to i16
  %conv = add nuw nsw i16 %37, 180
  %38 = ptrtoint ptr %tch_format to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tch_format, align 4
  %mul90 = mul i32 %39, %y.0260
  %add91 = add i32 %mul90, %x.0262
  %arrayidx = getelementptr i16, ptr %call, i32 %add91
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv, ptr %arrayidx, align 2
  %inc = add nuw i32 %y.0260, 1
  %41 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height, align 4
  %cmp85 = icmp ult i32 %inc, %42
  br i1 %cmp85, label %for.body86.for.body86_crit_edge, label %for.body86.for.inc92_crit_edge

for.body86.for.inc92_crit_edge:                   ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc92

for.body86.for.body86_crit_edge:                  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body86

for.inc92:                                        ; preds = %for.body86.for.inc92_crit_edge, %for.body.for.inc92_crit_edge
  %inc93 = add nuw i32 %x.0262, 1
  %43 = ptrtoint ptr %tch_format to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tch_format, align 4
  %cmp80 = icmp ult i32 %inc93, %44
  br i1 %cmp80, label %for.inc92.for.body_crit_edge, label %for.inc92.sw.epilog_crit_edge

for.inc92.sw.epilog_crit_edge:                    ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.inc92.for.body_crit_edge:                     ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond100.preheader:                            ; preds = %for.cond100.preheader.for.cond100.preheader_crit_edge, %if.end10.for.cond100.preheader_crit_edge
  %y.1258 = phi i32 [ %inc123, %for.cond100.preheader.for.cond100.preheader_crit_edge ], [ 0, %if.end10.for.cond100.preheader_crit_edge ]
  %45 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height, align 4
  %mul105 = mul i32 %46, %y.1258
  %div106245 = lshr i32 %mul105, 2
  %div108246 = lshr i32 %46, 3
  %add109 = add nuw nsw i32 %div106245, %div108246
  %47 = ptrtoint ptr %tch_format to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tch_format, align 4
  %div114248 = lshr i32 %48, 3
  %mul117 = mul i32 %add109, %48
  %add118 = add i32 %div114248, %mul117
  tail call fastcc void @vivid_tch_buf_set(ptr noundef %tch_format, ptr noundef %call, i32 noundef %add118)
  %49 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height, align 4
  %mul105.1 = mul i32 %50, %y.1258
  %div106245.1 = lshr i32 %mul105.1, 2
  %div108246.1 = lshr i32 %50, 3
  %add109.1 = add nuw nsw i32 %div106245.1, %div108246.1
  %51 = ptrtoint ptr %tch_format to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tch_format, align 4
  %div112247.1 = lshr i32 %52, 2
  %div114248.1 = lshr i32 %52, 3
  %add115.1 = add nuw nsw i32 %div112247.1, %div114248.1
  %mul117.1 = mul i32 %add109.1, %52
  %add118.1 = add i32 %add115.1, %mul117.1
  tail call fastcc void @vivid_tch_buf_set(ptr noundef %tch_format, ptr noundef %call, i32 noundef %add118.1)
  %53 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height, align 4
  %mul105.2 = mul i32 %54, %y.1258
  %div106245.2 = lshr i32 %mul105.2, 2
  %div108246.2 = lshr i32 %54, 3
  %add109.2 = add nuw nsw i32 %div106245.2, %div108246.2
  %55 = ptrtoint ptr %tch_format to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tch_format, align 4
  %57 = lshr i32 %56, 1
  %div112247.2 = and i32 %57, 1073741823
  %div114248.2 = lshr i32 %56, 3
  %add115.2 = add nuw nsw i32 %div112247.2, %div114248.2
  %mul117.2 = mul i32 %add109.2, %56
  %add118.2 = add i32 %add115.2, %mul117.2
  tail call fastcc void @vivid_tch_buf_set(ptr noundef %tch_format, ptr noundef %call, i32 noundef %add118.2)
  %58 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height, align 4
  %mul105.3 = mul i32 %59, %y.1258
  %div106245.3 = lshr i32 %mul105.3, 2
  %div108246.3 = lshr i32 %59, 3
  %add109.3 = add nuw nsw i32 %div106245.3, %div108246.3
  %60 = ptrtoint ptr %tch_format to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tch_format, align 4
  %mul111.3 = mul i32 %61, 3
  %div112247.3 = lshr i32 %mul111.3, 2
  %div114248.3 = lshr i32 %61, 3
  %add115.3 = add nuw nsw i32 %div112247.3, %div114248.3
  %mul117.3 = mul i32 %add109.3, %61
  %add118.3 = add i32 %add115.3, %mul117.3
  tail call fastcc void @vivid_tch_buf_set(ptr noundef %tch_format, ptr noundef %call, i32 noundef %add118.3)
  %inc123 = add nuw nsw i32 %y.1258, 1
  %exitcond.not = icmp eq i32 %inc123, 4
  br i1 %exitcond.not, label %for.cond100.preheader.sw.epilog_crit_edge, label %for.cond100.preheader.for.cond100.preheader_crit_edge

for.cond100.preheader.for.cond100.preheader_crit_edge: ; preds = %for.cond100.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond100.preheader

for.cond100.preheader.sw.epilog_crit_edge:        ; preds = %for.cond100.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end10.unreachabledefault:                      ; preds = %if.end10
  unreachable

sw.epilog.sink.split:                             ; preds = %sw.bb59, %sw.bb39, %sw.bb31, %if.then28, %if.then19, %if.then13
  %rem29.sink = phi i32 [ %rem29, %if.then28 ], [ %rem20, %if.then19 ], [ %rem14, %if.then13 ], [ %add77, %sw.bb59 ], [ %add58, %sw.bb39 ], [ %add, %sw.bb31 ]
  tail call fastcc void @vivid_tch_buf_set(ptr noundef %tch_format, ptr noundef %call, i32 noundef %rem29.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.cond100.preheader.sw.epilog_crit_edge, %for.inc92.sw.epilog_crit_edge, %sw.bb22.sw.epilog_crit_edge, %sw.bb16.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %for.cond.preheader.sw.epilog_crit_edge
  br i1 %cmp8.i, label %sw.epilog.for.body128_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog.for.body128_crit_edge:                  ; preds = %sw.epilog
  br label %for.body128

for.body128:                                      ; preds = %for.body128.for.body128_crit_edge, %sw.epilog.for.body128_crit_edge
  %x.2265 = phi i32 [ %inc132, %for.body128.for.body128_crit_edge ], [ 0, %sw.epilog.for.body128_crit_edge ]
  %arrayidx129 = getelementptr i16, ptr %call, i32 %x.2265
  %62 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx129, align 2
  %64 = tail call i16 @llvm.bswap.i16(i16 %63)
  %65 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %arrayidx129, align 2
  %inc132 = add nuw nsw i32 %x.2265, 1
  %exitcond267.not = icmp eq i32 %inc132, %mul
  br i1 %exitcond267.not, label %for.body128.cleanup_crit_edge, label %for.body128.for.body128_crit_edge

for.body128.for.body128_crit_edge:                ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body128

for.body128.cleanup_crit_edge:                    ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body128.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %vivid_fill_buff_noise.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vivid_tch_buf_set(ptr nocapture noundef readonly %f, ptr nocapture noundef writeonly %tch_buf, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %.frozen = freeze i32 %1
  %div = udiv i32 %index, %.frozen
  %2 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %index, %2
  %call.i.i = tail call i32 @get_random_u32() #8
  %rem.i = urem i32 %call.i.i, 40
  %3 = trunc i32 %rem.i to i16
  %conv = add nuw nsw i16 %3, 180
  %arrayidx = getelementptr i16, ptr %tch_buf, i32 %index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i149 = tail call i32 @get_random_u32() #8
  %rem.i150 = urem i32 %call.i.i149, 40
  %5 = trunc i32 %rem.i150 to i16
  %conv5 = add nuw nsw i16 %5, 90
  %sub = add i32 %index, -1
  %arrayidx6 = getelementptr i16, ptr %tch_buf, i32 %sub
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv5, ptr %arrayidx6, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f, align 4
  %sub8 = add i32 %8, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.decomposed, i32 %sub8)
  %cmp = icmp ult i32 %rem.decomposed, %sub8
  br i1 %cmp, label %if.then10, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i151 = tail call i32 @get_random_u32() #8
  %rem.i152 = urem i32 %call.i.i151, 40
  %9 = trunc i32 %rem.i152 to i16
  %conv13 = add nuw nsw i16 %9, 90
  %add14 = add i32 %index, 1
  %arrayidx15 = getelementptr i16, ptr %tch_buf, i32 %add14
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv13, ptr %arrayidx15, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.end.if.end16_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %index)
  %tobool17.not = icmp ugt i32 %1, %index
  br i1 %tobool17.not, label %if.end16.if.end25_crit_edge, label %if.then18

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i153 = tail call i32 @get_random_u32() #8
  %rem.i154 = urem i32 %call.i.i153, 40
  %11 = trunc i32 %rem.i154 to i16
  %conv21 = add nuw nsw i16 %11, 90
  %12 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f, align 4
  %sub23 = sub i32 %index, %13
  %arrayidx24 = getelementptr i16, ptr %tch_buf, i32 %sub23
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv21, ptr %arrayidx24, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %if.end16.if.end25_crit_edge
  %height = getelementptr inbounds %struct.v4l2_pix_format, ptr %f, i32 0, i32 1
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %sub26 = add i32 %16, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %sub26)
  %cmp27 = icmp ult i32 %div, %sub26
  br i1 %cmp27, label %if.then29, label %if.end25.if.end36_crit_edge

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i155 = tail call i32 @get_random_u32() #8
  %rem.i156 = urem i32 %call.i.i155, 40
  %17 = trunc i32 %rem.i156 to i16
  %conv32 = add nuw nsw i16 %17, 90
  %18 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %f, align 4
  %add34 = add i32 %19, %index
  %arrayidx35 = getelementptr i16, ptr %tch_buf, i32 %add34
  %20 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv32, ptr %arrayidx35, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.then29, %if.end25.if.end36_crit_edge
  %brmerge = or i1 %tobool17.not, %tobool.not
  br i1 %brmerge, label %if.end36.if.end48_crit_edge, label %if.then40

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i157 = tail call i32 @get_random_u32() #8
  %rem.i158 = urem i32 %call.i.i157, 40
  %21 = trunc i32 %rem.i158 to i16
  %conv43 = add nuw nsw i16 %21, 45
  %22 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f, align 4
  %24 = xor i32 %23, -1
  %sub46 = add i32 %24, %index
  %arrayidx47 = getelementptr i16, ptr %tch_buf, i32 %sub46
  %25 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv43, ptr %arrayidx47, align 2
  br label %if.end48

if.end48:                                         ; preds = %if.then40, %if.end36.if.end48_crit_edge
  %26 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %f, align 4
  %sub50 = add i32 %27, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.decomposed, i32 %sub50)
  %cmp51 = icmp uge i32 %rem.decomposed, %sub50
  %brmerge148 = or i1 %tobool17.not, %cmp51
  br i1 %brmerge148, label %if.end48.if.end63_crit_edge, label %if.then55

if.end48.if.end63_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then55:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i159 = tail call i32 @get_random_u32() #8
  %rem.i160 = urem i32 %call.i.i159, 40
  %28 = trunc i32 %rem.i160 to i16
  %conv58 = add nuw nsw i16 %28, 45
  %add59 = add i32 %index, 1
  %29 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %f, align 4
  %sub61 = sub i32 %add59, %30
  %arrayidx62 = getelementptr i16, ptr %tch_buf, i32 %sub61
  %31 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv58, ptr %arrayidx62, align 2
  br label %if.end63

if.end63:                                         ; preds = %if.then55, %if.end48.if.end63_crit_edge
  br i1 %tobool.not, label %if.end63.if.end78_crit_edge, label %land.lhs.true65

if.end63.if.end78_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

land.lhs.true65:                                  ; preds = %if.end63
  %32 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height, align 4
  %sub67 = add i32 %33, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %sub67)
  %cmp68 = icmp ult i32 %div, %sub67
  br i1 %cmp68, label %if.then70, label %land.lhs.true65.if.end78_crit_edge

land.lhs.true65.if.end78_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then70:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i161 = tail call i32 @get_random_u32() #8
  %rem.i162 = urem i32 %call.i.i161, 40
  %34 = trunc i32 %rem.i162 to i16
  %conv73 = add nuw nsw i16 %34, 45
  %sub74 = add i32 %index, -1
  %35 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %f, align 4
  %add76 = add i32 %sub74, %36
  %arrayidx77 = getelementptr i16, ptr %tch_buf, i32 %add76
  %37 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv73, ptr %arrayidx77, align 2
  br label %if.end78

if.end78:                                         ; preds = %if.then70, %land.lhs.true65.if.end78_crit_edge, %if.end63.if.end78_crit_edge
  %38 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %f, align 4
  %sub80 = add i32 %39, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.decomposed, i32 %sub80)
  %cmp81 = icmp ult i32 %rem.decomposed, %sub80
  br i1 %cmp81, label %land.lhs.true83, label %if.end78.if.end96_crit_edge

if.end78.if.end96_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

land.lhs.true83:                                  ; preds = %if.end78
  %40 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height, align 4
  %sub85 = add i32 %41, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %sub85)
  %cmp86 = icmp ult i32 %div, %sub85
  br i1 %cmp86, label %if.then88, label %land.lhs.true83.if.end96_crit_edge

land.lhs.true83.if.end96_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then88:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i163 = tail call i32 @get_random_u32() #8
  %rem.i164 = urem i32 %call.i.i163, 40
  %42 = trunc i32 %rem.i164 to i16
  %conv91 = add nuw nsw i16 %42, 45
  %add92 = add i32 %index, 1
  %43 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %f, align 4
  %add94 = add i32 %add92, %44
  %arrayidx95 = getelementptr i16, ptr %tch_buf, i32 %add94
  %45 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv91, ptr %arrayidx95, align 2
  br label %if.end96

if.end96:                                         ; preds = %if.then88, %land.lhs.true83.if.end96_crit_edge, %if.end78.if.end96_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_start_generating_touch_cap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_stop_generating_touch_cap(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @get_random_u32() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @vivid_touch_cap_qops, !1, !"vivid_touch_cap_qops", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-touch-cap.c", i32 109, i32 22}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vivid/vivid-touch-cap.c", i32 174, i32 21}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/test-drivers/vivid/vivid-touch-cap.c", i32 48, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @touch_cap_buf_prepare._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @touch_cap_buf_prepare._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i8 0, i8 2}
!23 = !{!"branch_weights", i32 2000, i32 1}
