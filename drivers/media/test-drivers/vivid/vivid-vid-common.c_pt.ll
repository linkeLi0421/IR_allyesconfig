; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-vid-common.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-vid-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon }
%union.anon = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.vivid_fmt = type { i32, i32, i8, [3 x i8], i32, i8, i8, [3 x i32], [3 x i32] }
%struct.v4l2_event_src_change = type { i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.95, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.96, %struct.anon.97, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.79], %struct.media_entity_enum, i32 }
%struct.anon.79 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.82 }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.95 = type { ptr, ptr }
%struct.anon.96 = type { ptr, ptr }
%struct.anon.97 = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.98, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.98 = type { ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.99 }
%struct.anon.99 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.91 }
%union.anon.91 = type { [32 x i32] }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.100, i32, i32 }
%union.anon.100 = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.v4l2_event = type { i32, %union.anon.110, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.110 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.111, i32, i32, i32, i32, i32 }
%union.anon.111 = type { i64 }
%struct.v4l2_format = type { i32, %union.anon.112 }
%union.anon.112 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.113, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.113 = type { i8 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_edid = type { i32, i32, i32, [5 x i32], ptr }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.103 }
%union.anon.103 = type { [16 x i32] }

@vivid_dv_timings_cap = dso_local constant { %struct.v4l2_dv_timings_cap, [48 x i8] } { %struct.v4l2_dv_timings_cap { i32 0, i32 0, [2 x i32] zeroinitializer, %union.anon { %struct.v4l2_bt_timings_cap { i32 16, i32 4096, i32 16, i32 2160, i64 14000000, i64 775000000, i32 15, i32 3, [16 x i32] zeroinitializer }, [24 x i8] undef } }, [48 x i8] zeroinitializer }, align 32
@vivid_formats = dso_local global { [91 x %struct.vivid_fmt], [1020 x i8] } { [91 x %struct.vivid_fmt] [%struct.vivid_fmt { i32 1448695129, i32 1, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] [i32 128, i32 0, i32 0], [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 1498831189, i32 1, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 1431918169, i32 1, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 1498765654, i32 1, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 1345466932, i32 1, i8 0, [3 x i8] c"\01\01\01", i32 0, i8 3, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 4, i32 4] }, %struct.vivid_fmt { i32 842093913, i32 1, i8 0, [3 x i8] c"\01\02\02", i32 0, i8 3, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 4, i32 4] }, %struct.vivid_fmt { i32 842094169, i32 1, i8 0, [3 x i8] c"\01\02\02", i32 0, i8 3, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 4, i32 4] }, %struct.vivid_fmt { i32 842094158, i32 1, i8 0, [3 x i8] c"\01\02\00", i32 0, i8 2, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 8, i32 0] }, %struct.vivid_fmt { i32 825382478, i32 1, i8 0, [3 x i8] c"\01\02\00", i32 0, i8 2, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 8, i32 0] }, %struct.vivid_fmt { i32 909203022, i32 1, i8 0, [3 x i8] c"\01\01\00", i32 0, i8 2, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 8, i32 0] }, %struct.vivid_fmt { i32 825644622, i32 1, i8 0, [3 x i8] c"\01\01\00", i32 0, i8 2, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 8, i32 0] }, %struct.vivid_fmt { i32 875714126, i32 1, i8 0, [3 x i8] c"\01\01\00", i32 0, i8 2, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 16, i32 0] }, %struct.vivid_fmt { i32 842290766, i32 1, i8 0, [3 x i8] c"\01\01\00", i32 0, i8 2, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 16, i32 0] }, %struct.vivid_fmt { i32 1331058009, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 32768, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 1347835225, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 875836505, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 61440, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 878073177, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 255, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 1448433985, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 255, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 1448434008, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 1096373590, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 -16777216, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 1482249558, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 1497715271, i32 3, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 0, i32 0] }, %struct.vivid_fmt { i32 540029273, i32 3, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 540160345, i32 3, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 540422489, i32 3, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 -1607061159, i32 3, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 826427218, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 0, i32 0] }, %struct.vivid_fmt { i32 1346520914, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 1380075346, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 875836498, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842093144, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842093121, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 240, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842094674, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842088786, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 240, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842089048, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842089025, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 240, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842094658, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842088775, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 240, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 1329743698, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892424792, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892424769, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 32768, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892426322, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892420434, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 32768, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892420696, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892420673, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 32768, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892426306, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892420418, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 32768, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 1363298130, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 -1255058856, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 -1255058879, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 128, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 859981650, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 24, i32 0, i32 0] }, %struct.vivid_fmt { i32 861030210, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 24, i32 0, i32 0] }, %struct.vivid_fmt { i32 1213351746, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 876758866, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 877807426, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 875714626, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 875713112, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 875708738, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 255, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 875713089, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 -16777216, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 875709016, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 875714642, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 875708993, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 255, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 875708754, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 -16777216, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 825770306, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 0, i32 0] }, %struct.vivid_fmt { i32 1196573255, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 0, i32 0] }, %struct.vivid_fmt { i32 1195528775, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 0, i32 0] }, %struct.vivid_fmt { i32 1111967570, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 0, i32 0] }, %struct.vivid_fmt { i32 808535874, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 808534599, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 808534338, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 808535890, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842090306, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842089031, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842088770, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842090322, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 844257602, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 909197895, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 909201991, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 909199186, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 861295432, i32 2, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 24, i32 0, i32 0] }, %struct.vivid_fmt { i32 878072648, i32 2, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 909200718, i32 1, i8 0, [3 x i8] c"\01\01\00", i32 0, i8 2, i8 2, [3 x i32] [i32 128, i32 0, i32 0], [3 x i32] [i32 8, i32 8, i32 0] }, %struct.vivid_fmt { i32 825642318, i32 1, i8 0, [3 x i8] c"\01\01\00", i32 0, i8 2, i8 2, [3 x i32] [i32 0, i32 128, i32 0], [3 x i32] [i32 8, i32 8, i32 0] }, %struct.vivid_fmt { i32 842091865, i32 1, i8 0, [3 x i8] c"\01\02\02", i32 0, i8 3, i8 3, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 4, i32 4] }, %struct.vivid_fmt { i32 825380185, i32 1, i8 0, [3 x i8] c"\01\02\02", i32 0, i8 3, i8 3, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 4, i32 4] }, %struct.vivid_fmt { i32 842091854, i32 1, i8 0, [3 x i8] c"\01\02\00", i32 0, i8 2, i8 2, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 8, i32 0] }, %struct.vivid_fmt { i32 825380174, i32 1, i8 0, [3 x i8] c"\01\02\00", i32 0, i8 2, i8 2, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 8, i32 0] }, %struct.vivid_fmt { i32 909200729, i32 1, i8 0, [3 x i8] c"\01\01\01", i32 0, i8 3, i8 3, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 4, i32 4] }, %struct.vivid_fmt { i32 825642329, i32 1, i8 0, [3 x i8] c"\01\01\01", i32 0, i8 3, i8 3, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 4, i32 4] }, %struct.vivid_fmt { i32 875711833, i32 1, i8 0, [3 x i8] c"\01\01\01", i32 0, i8 3, i8 3, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 8, i32 8] }, %struct.vivid_fmt { i32 842288473, i32 1, i8 0, [3 x i8] c"\01\01\01", i32 0, i8 3, i8 3, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 8, i32 8] }], [1020 x i8] zeroinitializer }, align 32
@__const.vivid_send_source_change.ev = private unnamed_addr constant { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32], [4 x i8] } { i32 5, [4 x i8] c"\FF\FF\FF\FF", { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer, [4 x i8] zeroinitializer }, align 8
@switch.table.vivid_enum_fmt_vid = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 352, i32 480, i32 224], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@___asan_gen_.2 = private unnamed_addr constant [21 x i8] c"vivid_dv_timings_cap\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 20, i32 34 }
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"vivid_formats\00", align 1
@___asan_gen_.6 = private constant [55 x i8] c"../drivers/media/test-drivers/vivid/vivid-vid-common.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 34, i32 18 }
@___asan_gen_.8 = private unnamed_addr constant [32 x i8] c"switch.table.vivid_enum_fmt_vid\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @vivid_dv_timings_cap, ptr @vivid_formats, ptr @switch.table.vivid_enum_fmt_vid], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_dv_timings_cap to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_formats to i32), i32 4004, i32 5024, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vivid_enum_fmt_vid to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vivid_get_format(ptr nocapture noundef readonly %dev, i32 noundef %pixelformat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 50
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %k.012 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [91 x %struct.vivid_fmt], ptr @vivid_formats, i32 0, i32 %k.012
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %pixelformat)
  %cmp1 = icmp eq i32 %1, %pixelformat
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  %buffers = getelementptr [91 x %struct.vivid_fmt], ptr @vivid_formats, i32 0, i32 %k.012, i32 6
  %2 = ptrtoint ptr %buffers to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buffers, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp2 = icmp eq i8 %3, 1
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %lor.lhs.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %4 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %multiplanar, align 8, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.012, 1
  %exitcond.not = icmp eq i32 %inc, 91
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %lor.lhs.false.cleanup_crit_edge ], [ %arrayidx, %if.then.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @vivid_vid_can_loop(ptr nocapture noundef readonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 237, i32 2
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %width1 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 281, i32 2
  %2 = ptrtoint ptr %width1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 237, i32 3
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 281, i32 3
  %6 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp5.not = icmp eq i32 %5, %7
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %fmt_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 234
  %8 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fmt_cap, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %fmt_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 278
  %12 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmt_out, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp7.not = icmp eq i32 %11, %15
  br i1 %cmp7.not, label %if.end9, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end9:                                          ; preds = %if.end
  %field_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 236
  %16 = ptrtoint ptr %field_cap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %field_cap, align 8
  %field_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 280
  %18 = ptrtoint ptr %field_out to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %field_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp10.not = icmp ne i32 %17, %19
  %.off = add i32 %17, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %or.cond = or i1 %cmp10.not, %switch
  br i1 %or.cond, label %if.end9.return_crit_edge, label %if.end19

if.end9.return_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end19:                                         ; preds = %if.end9
  %input.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 173
  %20 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %input.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 53, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i8 %23, label %if.end19.if.end34_crit_edge [
    i8 2, label %land.lhs.true
    i8 3, label %land.lhs.true31
  ]

if.end19.if.end34_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end19
  %output.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 199
  %25 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %output.i, align 4
  %arrayidx.i51 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 57, i32 %26
  %27 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp.i52 = icmp eq i8 %28, 2
  br i1 %cmp.i52, label %if.then21, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 174, i32 %21
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx, align 8
  %and = and i64 %30, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp ne i64 %and, 0
  %std_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 200
  %31 = ptrtoint ptr %std_out to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %std_out, align 8
  %and22 = and i64 %32, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22)
  %tobool23.not = icmp eq i64 %and22, 0
  %cmp26.not = xor i1 %tobool.not, %tobool23.not
  br label %return

land.lhs.true31:                                  ; preds = %if.end19
  %output.i56 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 199
  %33 = ptrtoint ptr %output.i56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %output.i56, align 4
  %arrayidx.i57 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 57, i32 %34
  %35 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i57, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp.i58 = icmp eq i8 %36, 3
  br i1 %cmp.i58, label %land.lhs.true31.return_crit_edge, label %land.lhs.true31.if.end34_crit_edge

land.lhs.true31.if.end34_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true31.return_crit_edge:                 ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end34:                                         ; preds = %land.lhs.true31.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %if.end19.if.end34_crit_edge
  br label %return

return:                                           ; preds = %if.end34, %land.lhs.true31.return_crit_edge, %if.then21, %if.end9.return_crit_edge, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end34 ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %if.end9.return_crit_edge ], [ %cmp26.not, %if.then21 ], [ true, %land.lhs.true31.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_send_source_change(ptr noundef %dev, i32 noundef %type) local_unnamed_addr #3 align 64 {
entry:
  %ev = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %ev) #7
  %0 = call ptr @memcpy(ptr %ev, ptr @__const.vivid_send_source_change.ev, i32 136)
  %num_inputs = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 51
  %1 = ptrtoint ptr %num_inputs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_inputs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp28.not = icmp eq i32 %2, 0
  br i1 %cmp28.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_event, ptr %ev, i32 0, i32 5
  %vid_cap_dev = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 18
  %flags.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 18, i32 17
  %has_vid_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 61
  %vbi_cap_dev = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 22
  %flags.i26 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 22, i32 17
  %has_vbi_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 63
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %i.029, ptr %id, align 8
  %arrayidx = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 53, i32 %i.029
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %type)
  %cmp1 = icmp eq i32 %conv, %type
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %8 = ptrtoint ptr %has_vid_cap to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_vid_cap, align 2, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then5

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @v4l2_event_queue(ptr noundef %vid_cap_dev, ptr noundef nonnull %ev) #7
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %10 = ptrtoint ptr %flags.i26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i26, align 4
  %and1.i.i27 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i27)
  %tobool8.not = icmp eq i32 %and1.i.i27, 0
  br i1 %tobool8.not, label %if.end.for.inc_crit_edge, label %land.lhs.true9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true9:                                   ; preds = %if.end
  %12 = ptrtoint ptr %has_vbi_cap to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_vbi_cap, align 8, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not = icmp eq i8 %13, 0
  br i1 %tobool10.not, label %land.lhs.true9.for.inc_crit_edge, label %if.then12

land.lhs.true9.for.inc_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then12:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  call void @v4l2_event_queue(ptr noundef %vbi_cap_dev, ptr noundef nonnull %ev) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %land.lhs.true9.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.029, 1
  %14 = ptrtoint ptr %num_inputs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_inputs, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %ev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fmt_sp2mp(ptr nocapture noundef readonly %sp_fmt, ptr nocapture noundef writeonly %mp_fmt) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %mp_fmt, i32 0, i32 1
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %mp_fmt, i32 0, i32 1, i32 0, i32 5
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %sp_fmt, i32 0, i32 1
  %0 = ptrtoint ptr %sp_fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sp_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %reserved = getelementptr inbounds %struct.v4l2_format, ptr %mp_fmt, i32 0, i32 1, i32 0, i32 11
  %2 = call ptr @memset(ptr %reserved, i32 0, i32 7)
  %cond = select i1 %cmp, i32 10, i32 9
  %3 = ptrtoint ptr %mp_fmt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond, ptr %mp_fmt, align 4
  %4 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt1, align 4
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %fmt, align 1
  %height = getelementptr inbounds %struct.v4l2_format, ptr %sp_fmt, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.v4l2_format, ptr %mp_fmt, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height4 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %height4, align 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %sp_fmt, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixelformat, align 4
  %pixelformat5 = getelementptr inbounds %struct.v4l2_format, ptr %mp_fmt, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %pixelformat5 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %pixelformat5, align 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %sp_fmt, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %field, align 4
  %field6 = getelementptr inbounds %struct.v4l2_format, ptr %mp_fmt, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %field6 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %field6, align 1
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %sp_fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %colorspace, align 4
  %colorspace7 = getelementptr inbounds %struct.v4l2_format, ptr %mp_fmt, i32 0, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %colorspace7 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %colorspace7, align 1
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %sp_fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %19 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xfer_func, align 4
  %conv = trunc i32 %20 to i8
  %xfer_func8 = getelementptr inbounds %struct.v4l2_format, ptr %mp_fmt, i32 0, i32 1, i32 0, i32 10
  %21 = ptrtoint ptr %xfer_func8 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %xfer_func8, align 1
  %22 = getelementptr inbounds %struct.v4l2_format, ptr %sp_fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %conv9 = trunc i32 %24 to i8
  %25 = getelementptr inbounds %struct.v4l2_format, ptr %mp_fmt, i32 0, i32 1, i32 0, i32 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv9, ptr %25, align 1
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %sp_fmt, i32 0, i32 1, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %quantization, align 4
  %conv10 = trunc i32 %28 to i8
  %quantization11 = getelementptr inbounds %struct.v4l2_format, ptr %mp_fmt, i32 0, i32 1, i32 0, i32 9
  %29 = ptrtoint ptr %quantization11 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv10, ptr %quantization11, align 1
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %mp_fmt, i32 0, i32 1, i32 0, i32 6
  %30 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %num_planes, align 1
  %flags = getelementptr inbounds %struct.v4l2_format, ptr %sp_fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %conv12 = trunc i32 %32 to i8
  %flags13 = getelementptr inbounds %struct.v4l2_format, ptr %mp_fmt, i32 0, i32 1, i32 0, i32 7
  %33 = ptrtoint ptr %flags13 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv12, ptr %flags13, align 1
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %sp_fmt, i32 0, i32 1, i32 0, i32 5
  %34 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sizeimage, align 4
  %36 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %plane_fmt, align 1
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %sp_fmt, i32 0, i32 1, i32 0, i32 4
  %37 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bytesperline, align 4
  %bytesperline15 = getelementptr inbounds %struct.v4l2_format, ptr %mp_fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %39 = ptrtoint ptr %bytesperline15 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %bytesperline15, align 1
  %reserved16 = getelementptr inbounds %struct.v4l2_format, ptr %mp_fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %40 = call ptr @memset(ptr %reserved16, i32 0, i32 12)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fmt_sp2mp_func(ptr noundef %file, ptr noundef %priv, ptr noundef %f, ptr nocapture noundef readonly %func) local_unnamed_addr #3 align 64 {
entry:
  %fmt = alloca %struct.v4l2_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %fmt) #7
  %0 = getelementptr inbounds i8, ptr %fmt, i32 44
  %1 = call ptr @memset(ptr %0, i32 255, i32 160)
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  %reserved.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 11
  %4 = call ptr @memset(ptr %reserved.i, i32 0, i32 7)
  %cond.i = select i1 %cmp.i, i32 10, i32 9
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond.i, ptr %fmt, align 4
  %6 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt2, align 4
  %8 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fmt1, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height.i, align 4
  %height4.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %height4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %height4.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pixelformat.i, align 4
  %pixelformat5.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %pixelformat5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pixelformat5.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %field.i, align 4
  %field6.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %field6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %field6.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %18 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %colorspace.i, align 4
  %colorspace7.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %colorspace7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %colorspace7.i, align 4
  %xfer_func.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %21 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xfer_func.i, align 4
  %conv.i = trunc i32 %22 to i8
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 10
  %23 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i, ptr %xfer_func8.i, align 4
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %conv9.i = trunc i32 %26 to i8
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv9.i, ptr %27, align 2
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %quantization.i, align 4
  %conv10.i = trunc i32 %30 to i8
  %quantization11.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 9
  %31 = ptrtoint ptr %quantization11.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv10.i, ptr %quantization11.i, align 1
  %num_planes.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 6
  %32 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %num_planes.i, align 4
  %flags.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 4
  %conv12.i = trunc i32 %34 to i8
  %flags13.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 7
  %35 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv12.i, ptr %flags13.i, align 1
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %36 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sizeimage.i, align 4
  %38 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %plane_fmt, align 4
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %39 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bytesperline.i, align 4
  %bytesperline15.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %41 = ptrtoint ptr %bytesperline15.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %bytesperline15.i, align 4
  %reserved16.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %42 = call ptr @memset(ptr %reserved16.i, i32 0, i32 12)
  %call = call i32 %func(ptr noundef %file, ptr noundef %priv, ptr noundef nonnull %fmt) #7
  %43 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fmt1, align 4
  %45 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %fmt2, align 4
  %46 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height4.i, align 4
  %48 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %height.i, align 4
  %49 = ptrtoint ptr %pixelformat5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pixelformat5.i, align 4
  %51 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %pixelformat.i, align 4
  %52 = ptrtoint ptr %field6.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %field6.i, align 4
  %54 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %field.i, align 4
  %55 = ptrtoint ptr %colorspace7.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %colorspace7.i, align 4
  %57 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %colorspace.i, align 4
  %58 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %xfer_func8.i, align 4
  %conv = zext i8 %59 to i32
  %60 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv, ptr %xfer_func.i, align 4
  %61 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %27, align 2
  %conv9 = zext i8 %62 to i32
  %63 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv9, ptr %24, align 4
  %64 = ptrtoint ptr %quantization11.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %quantization11.i, align 1
  %conv10 = zext i8 %65 to i32
  %66 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv10, ptr %quantization.i, align 4
  %67 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %plane_fmt, align 4
  %69 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %sizeimage.i, align 4
  %70 = ptrtoint ptr %bytesperline15.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bytesperline15.i, align 4
  %72 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %bytesperline.i, align 4
  %73 = ptrtoint ptr %flags13.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %flags13.i, align 1
  %conv14 = zext i8 %74 to i32
  %75 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv14, ptr %flags.i, align 4
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %fmt) #7
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vivid_vid_adjust_sel(i32 noundef %flags, ptr nocapture noundef %r) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 2
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 3
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %and = and i32 %1, 65535
  %and1 = and i32 %3, 65535
  %and2 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call i32 @llvm.umax.i32(i32 %and, i32 1)
  %5 = add nuw nsw i32 %4, 1
  %6 = tail call i32 @llvm.umax.i32(i32 %and1, i32 1)
  %7 = add nuw nsw i32 %6, 1
  br label %if.end8

if.end8:                                          ; preds = %if.then, %entry.if.end8_crit_edge
  %w.0 = phi i32 [ %and, %entry.if.end8_crit_edge ], [ %5, %if.then ]
  %h.0 = phi i32 [ %and1, %entry.if.end8_crit_edge ], [ %7, %if.then ]
  %and9 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %8 = tail call i32 @llvm.umin.i32(i32 %w.0, i32 4096)
  %9 = tail call i32 @llvm.umin.i32(i32 %h.0, i32 2160)
  %w.1 = select i1 %tobool10.not, i32 %8, i32 %w.0
  %h.1 = select i1 %tobool10.not, i32 %9, i32 %h.0
  %and19 = and i32 %w.1, -2
  %and20 = and i32 %h.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp21 = icmp eq i32 %and19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %cmp22 = icmp eq i32 %and20, 0
  %or.cond = select i1 %cmp21, i1 true, i1 %cmp22
  br i1 %or.cond, label %if.end8.cleanup_crit_edge, label %if.end24

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and19)
  %cmp25 = icmp ugt i32 %and19, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 2160, i32 %and20)
  %cmp27 = icmp ugt i32 %and20, 2160
  %or.cond106 = select i1 %cmp25, i1 true, i1 %cmp27
  br i1 %or.cond106, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 1
  %10 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %top, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp30 = icmp slt i32 %11, 0
  br i1 %cmp30, label %if.then31, label %if.end29.if.end33_crit_edge

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %top, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end29.if.end33_crit_edge
  %13 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp34 = icmp slt i32 %14, 0
  br i1 %cmp34, label %if.then35, label %if.end33.if.end37_crit_edge

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %r, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33.if.end37_crit_edge
  %16 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %r, align 4
  %and39 = and i32 %17, 65534
  store i32 %and39, ptr %r, align 4
  %18 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %top, align 4
  %and41 = and i32 %19, 65534
  store i32 %and41, ptr %top, align 4
  %add = add nuw nsw i32 %and39, %and19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp43 = icmp ugt i32 %add, 4096
  br i1 %cmp43, label %if.then44, label %if.end37.if.end46_crit_edge

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then44:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub nuw nsw i32 4096, %and19
  %20 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %r, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end37.if.end46_crit_edge
  %add48 = add nuw nsw i32 %and41, %and20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2160, i32 %add48)
  %cmp49 = icmp ugt i32 %add48, 2160
  br i1 %cmp49, label %if.then50, label %if.end46.if.end53_crit_edge

if.end46.if.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %sub51 = sub nuw nsw i32 2160, %and20
  %21 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub51, ptr %top, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end46.if.end53_crit_edge
  %and54 = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and54)
  %cmp55 = icmp eq i32 %and54, 3
  br i1 %cmp55, label %land.lhs.true, label %if.end53.if.end62_crit_edge

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

land.lhs.true:                                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %and19)
  %cmp57.not = icmp eq i32 %1, %and19
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and20)
  %cmp60.not = icmp eq i32 %3, %and20
  %or.cond107 = select i1 %cmp57.not, i1 %cmp60.not, i1 false
  br i1 %or.cond107, label %land.lhs.true.if.end62_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end62:                                         ; preds = %land.lhs.true.if.end62_crit_edge, %if.end53.if.end62_crit_edge
  %22 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and19, ptr %width, align 4
  %23 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and20, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %land.lhs.true.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end62 ], [ -34, %if.end8.cleanup_crit_edge ], [ -34, %if.end24.cleanup_crit_edge ], [ -34, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_enum_fmt_vid(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 50
  %4 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %multiplanar, align 8, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %sub = select i1 %tobool.not, i32 81, i32 91
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub)
  %cmp.not = icmp ult i32 %3, %sub
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [91 x %struct.vivid_fmt], ptr @vivid_formats, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pixelformat, align 4
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %10, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.if.end6_crit_edge
    i32 9, label %if.end.if.end6_crit_edge45
  ]

if.end.if.end6_crit_edge45:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %if.end.if.end6_crit_edge45
  %flags = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %or8 = or i32 %13, 96
  store i32 %or8, ptr %flags, align 4
  %color_enc = getelementptr [91 x %struct.vivid_fmt], ptr @vivid_formats, i32 0, i32 %3, i32 1
  %14 = ptrtoint ptr %color_enc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %color_enc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %switch.lookup, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.vivid_enum_fmt_vid, i32 0, i32 %15
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  %or14 = or i32 %13, %switch.load
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or14, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #7
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 14
  %2 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %input.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %4 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  %8 = add i8 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %9 = icmp ult i8 %8, 2
  br i1 %9, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 174, i32 %5
  br label %if.end7

if.else:                                          ; preds = %entry
  %output.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 199
  %10 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %output.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp.i = icmp eq i8 %13, 2
  br i1 %cmp.i, label %if.end6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %std_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 200
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %storemerge.in = phi ptr [ %std_out, %if.end6 ], [ %arrayidx, %if.end ]
  %14 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load8_noabort(i32 %14)
  %storemerge = load i64, ptr %storemerge.in, align 8
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %storemerge, ptr %id, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -61, %if.then.cleanup_crit_edge ], [ -61, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %_fh, ptr nocapture noundef writeonly %timings) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #7
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 14
  %2 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %input.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %4 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp eq i8 %7, 3
  br i1 %cmp.i, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 175, i32 %5
  %8 = call ptr @memcpy(ptr %timings, ptr %arrayidx, i32 132)
  br label %cleanup

if.else:                                          ; preds = %entry
  %output.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 199
  %9 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %output.i, align 4
  %arrayidx.i15 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %10
  %11 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp.i16 = icmp eq i8 %12, 3
  br i1 %cmp.i16, label %if.end6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dv_timings_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 201
  %13 = call ptr @memcpy(ptr %timings, ptr %dv_timings_out, i32 132)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %if.then.cleanup_crit_edge ], [ -61, %if.else.cleanup_crit_edge ], [ 0, %if.end6 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_enum_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %_fh, ptr noundef %timings) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #7
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 14
  %2 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %input.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %4 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp eq i8 %7, 3
  br i1 %cmp.i, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.else:                                          ; preds = %entry
  %output.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 199
  %8 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %output.i, align 4
  %arrayidx.i12 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %9
  %10 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp.i13 = icmp eq i8 %11, 3
  br i1 %cmp.i13, label %if.else.if.end7_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %if.then.if.end7_crit_edge
  %call8 = tail call i32 @v4l2_enum_dv_timings_cap(ptr noundef %timings, ptr noundef nonnull @vivid_dv_timings_cap, ptr noundef null, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ -61, %if.then.cleanup_crit_edge ], [ -61, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_enum_dv_timings_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_dv_timings_cap(ptr noundef %file, ptr nocapture noundef readnone %_fh, ptr nocapture noundef writeonly %cap) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #7
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 14
  %2 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %input.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %4 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp eq i8 %7, 3
  br i1 %cmp.i, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.else:                                          ; preds = %entry
  %output.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 199
  %8 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %output.i, align 4
  %arrayidx.i11 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %9
  %10 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp.i12 = icmp eq i8 %11, 3
  br i1 %cmp.i12, label %if.else.if.end7_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %if.then.if.end7_crit_edge
  %12 = call ptr @memcpy(ptr %cap, ptr @vivid_dv_timings_cap, i32 144)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -61, %if.then.cleanup_crit_edge ], [ -61, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_edid(ptr noundef %file, ptr nocapture noundef readnone %_fh, ptr nocapture noundef %edid) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #7
  %reserved = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 3
  %2 = call ptr @memset(ptr %reserved, i32 0, i32 20)
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 14
  %3 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %5 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %edid, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %num_inputs = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 51
  %7 = ptrtoint ptr %num_inputs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_inputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp2.not = icmp ult i32 %6, %8
  br i1 %cmp2.not, label %if.end, label %if.then.cleanup70_crit_edge

if.then.cleanup70_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup70

if.end:                                           ; preds = %if.then
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %6
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp5.not = icmp eq i8 %10, 3
  br i1 %cmp5.not, label %if.end8, label %if.end.cleanup70_crit_edge

if.end.cleanup70_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup70

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cec_rx_adap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 352
  br label %if.end29

if.else:                                          ; preds = %entry
  %num_outputs = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 55
  %11 = ptrtoint ptr %num_outputs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_outputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %12)
  %cmp10.not = icmp ult i32 %6, %12
  br i1 %cmp10.not, label %if.end13, label %if.else.cleanup70_crit_edge

if.else.cleanup70_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup70

if.end13:                                         ; preds = %if.else
  %arrayidx15 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %6
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp17.not = icmp eq i8 %14, 3
  br i1 %cmp17.not, label %if.end20, label %if.end13.cleanup70_crit_edge

if.end13.cleanup70_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup70

if.end20:                                         ; preds = %if.end13
  %arrayidx22 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 219, i32 %6
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx22, align 1, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end20.cleanup70_crit_edge, label %cleanup

if.end20.cleanup70_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup70

cleanup:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx26 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 354, i32 %6
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %18 to i32
  %arrayidx28 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 353, i32 %conv27
  br label %if.end29

if.end29:                                         ; preds = %cleanup, %if.end8
  %adap.1.in = phi ptr [ %cec_rx_adap, %if.end8 ], [ %arrayidx28, %cleanup ]
  %19 = ptrtoint ptr %adap.1.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %adap.1 = load ptr, ptr %adap.1.in, align 4
  %start_block = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 1
  %20 = ptrtoint ptr %start_block to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %start_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp30 = icmp eq i32 %21, 0
  br i1 %cmp30, label %land.lhs.true, label %if.end29.if.end36_crit_edge

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end29
  %blocks = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 2
  %22 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp32 = icmp eq i32 %23, 0
  br i1 %cmp32, label %if.then34, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %edid_blocks = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 180
  %24 = ptrtoint ptr %edid_blocks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %edid_blocks, align 8
  %26 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %blocks, align 4
  br label %cleanup70

if.end36:                                         ; preds = %land.lhs.true.if.end36_crit_edge, %if.end29.if.end36_crit_edge
  %edid_blocks37 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 180
  %27 = ptrtoint ptr %edid_blocks37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %edid_blocks37, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp38 = icmp eq i32 %28, 0
  br i1 %cmp38, label %if.end36.cleanup70_crit_edge, label %if.end41

if.end36.cleanup70_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup70

if.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %21)
  %cmp44.not = icmp ugt i32 %28, %21
  br i1 %cmp44.not, label %if.end47, label %if.end41.cleanup70_crit_edge

if.end41.cleanup70_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup70

if.end47:                                         ; preds = %if.end41
  %blocks48 = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 2
  %29 = ptrtoint ptr %blocks48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %blocks48, align 4
  %sub = sub i32 %28, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %sub)
  %cmp51 = icmp ugt i32 %30, %sub
  br i1 %cmp51, label %if.then53, label %if.end47.if.end58_crit_edge

if.end47.if.end58_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %blocks48 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub, ptr %blocks48, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %if.end47.if.end58_crit_edge
  %tobool59.not = icmp eq ptr %adap.1, null
  br i1 %tobool59.not, label %if.end58.if.end63_crit_edge, label %if.then60

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %edid61 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 179
  %32 = ptrtoint ptr %edid61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %edid61, align 4
  %34 = ptrtoint ptr %edid_blocks37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %edid_blocks37, align 8
  %mul = shl i32 %35, 7
  %phys_addr = getelementptr inbounds %struct.cec_adapter, ptr %adap.1, i32 0, i32 18
  %36 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %phys_addr, align 2
  tail call void @v4l2_set_edid_phys_addr(ptr noundef %33, i32 noundef %mul, i16 noundef zeroext %37) #7
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end58.if.end63_crit_edge
  %edid64 = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 4
  %38 = ptrtoint ptr %edid64 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %edid64, align 4
  %edid65 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 179
  %40 = ptrtoint ptr %edid65 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %edid65, align 4
  %42 = ptrtoint ptr %start_block to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %start_block, align 4
  %mul67 = shl i32 %43, 7
  %add.ptr = getelementptr i8, ptr %41, i32 %mul67
  %44 = ptrtoint ptr %blocks48 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %blocks48, align 4
  %mul69 = shl i32 %45, 7
  %46 = call ptr @memcpy(ptr %39, ptr %add.ptr, i32 %mul69)
  br label %cleanup70

cleanup70:                                        ; preds = %if.end63, %if.end41.cleanup70_crit_edge, %if.end36.cleanup70_crit_edge, %if.then34, %if.end20.cleanup70_crit_edge, %if.end13.cleanup70_crit_edge, %if.else.cleanup70_crit_edge, %if.end.cleanup70_crit_edge, %if.then.cleanup70_crit_edge
  %retval.1 = phi i32 [ 0, %if.then34 ], [ 0, %if.end63 ], [ -22, %if.then.cleanup70_crit_edge ], [ -22, %if.end.cleanup70_crit_edge ], [ -61, %if.end36.cleanup70_crit_edge ], [ -22, %if.end41.cleanup70_crit_edge ], [ -61, %if.end20.cleanup70_crit_edge ], [ -22, %if.end13.cleanup70_crit_edge ], [ -22, %if.else.cleanup70_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_set_edid_phys_addr(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @vivid_dv_timings_cap, !1, !"vivid_dv_timings_cap", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-common.c", i32 20, i32 34}
!2 = !{ptr @vivid_formats, !3, !"vivid_formats", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vivid/vivid-vid-common.c", i32 34, i32 18}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i8 0, i8 2}
