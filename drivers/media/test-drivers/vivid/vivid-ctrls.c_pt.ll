; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-ctrls.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-ctrls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_area = type { i32, i32 }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.95, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.96, %struct.anon.97, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.v4l2_dv_timings = type { i32, %union.anon.90 }
%union.anon.90 = type { [32 x i32] }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.103 }
%union.anon.103 = type { [16 x i32] }

@vivid_vid_cap_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_vid_cap_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DV Timings\00", [21 x i8] zeroinitializer }, align 32
@__const.vivid_create_controls.vivid_ctrl_dv_timings = private unnamed_addr constant { ptr, ptr, i32, ptr, i32, [4 x i8], i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, [4 x i8], i64, ptr, ptr, i8, [7 x i8] } { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790143, ptr @.str, i32 3, [4 x i8] zeroinitializer, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer }, align 8
@vivid_create_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"vivid_ctrls:1544:(hdl_user_gen)->_lock\00", [57 x i8] zeroinitializer }, align 32
@vivid_ctrl_class = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 15728641, ptr @.str.37, i32 6, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 68, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_create_controls._key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"vivid_ctrls:1546:(hdl_user_vid)->_lock\00", [57 x i8] zeroinitializer }, align 32
@vivid_create_controls._key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"vivid_ctrls:1548:(hdl_user_aud)->_lock\00", [57 x i8] zeroinitializer }, align 32
@vivid_create_controls._key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"vivid_ctrls:1550:(hdl_streaming)->_lock\00", [56 x i8] zeroinitializer }, align 32
@vivid_create_controls._key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"vivid_ctrls:1552:(hdl_sdtv_cap)->_lock\00", [57 x i8] zeroinitializer }, align 32
@vivid_create_controls._key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"vivid_ctrls:1554:(hdl_loop_cap)->_lock\00", [57 x i8] zeroinitializer }, align 32
@vivid_create_controls._key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"vivid_ctrls:1556:(hdl_fb)->_lock\00", [63 x i8] zeroinitializer }, align 32
@vivid_create_controls._key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vivid_ctrls:1558:(hdl_vid_cap)->_lock\00", [58 x i8] zeroinitializer }, align 32
@vivid_create_controls._key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vivid_ctrls:1560:(hdl_vid_out)->_lock\00", [58 x i8] zeroinitializer }, align 32
@vivid_create_controls._key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vivid_ctrls:1563:(hdl_vbi_cap)->_lock\00", [58 x i8] zeroinitializer }, align 32
@vivid_create_controls._key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vivid_ctrls:1565:(hdl_vbi_out)->_lock\00", [58 x i8] zeroinitializer }, align 32
@vivid_create_controls._key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"vivid_ctrls:1568:(hdl_radio_rx)->_lock\00", [57 x i8] zeroinitializer }, align 32
@vivid_create_controls._key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"vivid_ctrls:1570:(hdl_radio_tx)->_lock\00", [57 x i8] zeroinitializer }, align 32
@vivid_create_controls._key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vivid_ctrls:1572:(hdl_sdr_cap)->_lock\00", [58 x i8] zeroinitializer }, align 32
@vivid_create_controls._key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"vivid_ctrls:1574:(hdl_meta_cap)->_lock\00", [57 x i8] zeroinitializer }, align 32
@vivid_create_controls._key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"vivid_ctrls:1576:(hdl_meta_out)->_lock\00", [57 x i8] zeroinitializer }, align 32
@vivid_create_controls._key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vivid_ctrls:1578:(hdl_tch_cap)->_lock\00", [58 x i8] zeroinitializer }, align 32
@vivid_user_vid_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @vivid_user_vid_g_volatile_ctrl, ptr null, ptr @vivid_user_vid_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@vivid_ctrl_button = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025216, ptr @.str.41, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_int32 = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025218, ptr @.str.42, i32 1, i64 -2147483648, i64 2147483647, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_int64 = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025219, ptr @.str.43, i32 5, i64 -9223372036854775808, i64 9223372036854775807, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_boolean = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025217, ptr @.str.44, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_menu = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025220, ptr @.str.45, i32 3, i64 1, i64 4, i64 0, i64 3, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 4, ptr @vivid_ctrl_menu_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_string = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025221, ptr @.str.52, i32 7, i64 2, i64 4, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_bitmask = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025222, ptr @.str.53, i32 8, i64 0, i64 2151686160, i64 0, i64 2147491840, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_int_menu = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025223, ptr @.str.54, i32 9, i64 1, i64 8, i64 0, i64 4, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 2, ptr null, ptr @vivid_ctrl_int_menu_values, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_ro_int32 = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025228, ptr @.str.55, i32 1, i64 0, i64 255, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 4, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_area = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025227, ptr @.str.56, i32 262, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr { ptr @area }, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_u32_array = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025224, ptr @.str.57, i32 258, i64 16, i64 131072, i64 1, i64 24, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] [i32 1, i32 0, i32 0, i32 0], i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_u16_matrix = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025225, ptr @.str.58, i32 257, i64 16, i64 8192, i64 1, i64 24, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] [i32 8, i32 16, i32 0, i32 0], i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_u8_4d_array = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025226, ptr @.str.59, i32 256, i64 16, i64 32, i64 1, i64 24, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] [i32 2, i32 3, i32 4, i32 5], i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Test Pattern\00", [19 x i8] zeroinitializer }, align 32
@tpg_pattern_strings = external dso_local constant [0 x ptr], align 4
@__const.vivid_create_controls.vivid_ctrl_test_pattern = private unnamed_addr constant { ptr, ptr, i32, ptr, i32, [4 x i8], i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, [4 x i8], i64, ptr, ptr, i8, [7 x i8] } { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790080, ptr @.str.34, i32 3, [4 x i8] zeroinitializer, i64 0, i64 21, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @tpg_pattern_strings, ptr null, i8 0, [7 x i8] zeroinitializer }, align 8
@vivid_ctrl_perc_fill = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790121, ptr @.str.60, i32 1, i64 0, i64 100, i64 1, i64 100, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_hor_movement = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790082, ptr @.str.61, i32 3, i64 0, i64 6, i64 0, i64 3, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_hor_movement_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_vert_movement = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790083, ptr @.str.69, i32 3, i64 0, i64 6, i64 0, i64 3, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_vert_movement_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_osd_mode = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790081, ptr @.str.76, i32 3, i64 0, i64 2, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_osd_mode_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_show_border = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790084, ptr @.str.80, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_show_square = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790085, ptr @.str.81, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_hflip = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790100, ptr @.str.82, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_vflip = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790101, ptr @.str.83, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_insert_sav = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790086, ptr @.str.84, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_insert_eav = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790087, ptr @.str.85, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_reduced_fps = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790122, ptr @.str.86, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_has_crop_cap = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790111, ptr @.str.87, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_has_compose_cap = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790112, ptr @.str.88, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_has_scaler_cap = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790113, ptr @.str.89, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_tstamp_src = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790104, ptr @.str.90, i32 3, i64 0, i64 1, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_tstamp_src_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_colorspace = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790105, ptr @.str.93, i32 3, i64 0, i64 8, i64 0, i64 2, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_colorspace_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_xfer_func = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790106, ptr @.str.103, i32 3, i64 0, i64 7, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_xfer_func_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_ycbcr_enc = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790107, ptr @.str.106, i32 3, i64 0, i64 8, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 32, ptr @vivid_ctrl_ycbcr_enc_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_hsv_enc = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790123, ptr @.str.112, i32 3, i64 0, i64 1, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_hsv_enc_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_quantization = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790108, ptr @.str.115, i32 3, i64 0, i64 2, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_quantization_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_alpha_mode = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790110, ptr @.str.118, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_has_crop_out = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_out_ctrl_ops, ptr null, i32 15790114, ptr @.str.119, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_has_compose_out = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_out_ctrl_ops, ptr null, i32 15790115, ptr @.str.120, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_has_scaler_out = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_out_ctrl_ops, ptr null, i32 15790116, ptr @.str.121, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_disconnect = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 15790145, ptr @.str.122, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_dqbuf_error = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_streaming_ctrl_ops, ptr null, i32 15790146, ptr @.str.123, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_perc_dropped = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_streaming_ctrl_ops, ptr null, i32 15790144, ptr @.str.124, i32 1, i64 0, i64 100, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_queue_setup_error = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_streaming_ctrl_ops, ptr null, i32 15790147, ptr @.str.125, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_buf_prepare_error = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_streaming_ctrl_ops, ptr null, i32 15790148, ptr @.str.126, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_start_streaming_error = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_streaming_ctrl_ops, ptr null, i32 15790149, ptr @.str.127, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_queue_error = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_streaming_ctrl_ops, ptr null, i32 15790150, ptr @.str.128, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_req_validate_error = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_streaming_ctrl_ops, ptr null, i32 15790152, ptr @.str.129, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_seq_wrap = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_streaming_ctrl_ops, ptr null, i32 15790118, ptr @.str.130, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_time_wrap = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_streaming_ctrl_ops, ptr null, i32 15790119, ptr @.str.131, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_std_aspect_ratio = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790102, ptr @.str.132, i32 3, i64 1, i64 4, i64 0, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @tpg_aspect_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_std_signal_mode = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_sdtv_cap_ctrl_ops, ptr null, i32 15790140, ptr @.str.133, i32 3, i64 0, i64 5, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 8, ptr @vivid_ctrl_std_signal_mode_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_standard = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_sdtv_cap_ctrl_ops, ptr null, i32 15790141, ptr @.str.139, i32 3, i64 0, i64 14, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_standard_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_vbi_cap_interlaced = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vbi_cap_ctrl_ops, ptr null, i32 15790088, ptr @.str.140, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_dv_timings_signal_mode = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790142, ptr @.str.141, i32 3, i64 0, i64 5, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_dv_timings_signal_mode_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_dv_timings_aspect_ratio = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790103, ptr @.str.147, i32 3, i64 0, i64 3, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @tpg_aspect_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_max_edid_blocks = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790120, ptr @.str.148, i32 1, i64 1, i64 256, i64 1, i64 2, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_limited_rgb_range = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790109, ptr @.str.149, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_display_present = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_vid_out_ctrl_ops, ptr null, i32 15790124, ptr @.str.150, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_loop_video = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_loop_cap_ctrl_ops, ptr null, i32 15790117, ptr @.str.151, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_clear_fb = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_fb_ctrl_ops, ptr null, i32 15790151, ptr @.str.152, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_radio_hw_seek_mode = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_radio_rx_ctrl_ops, ptr null, i32 15790170, ptr @.str.153, i32 3, i64 0, i64 2, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_radio_hw_seek_mode_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_radio_hw_seek_prog_lim = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_radio_rx_ctrl_ops, ptr null, i32 15790171, ptr @.str.157, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_radio_rx_rds_blockio = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_radio_rx_ctrl_ops, ptr null, i32 15790173, ptr @.str.158, i32 3, i64 0, i64 1, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_radio_rds_mode_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_radio_rx_rds_rbds = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_radio_rx_ctrl_ops, ptr null, i32 15790172, ptr @.str.161, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_radio_rx_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_radio_rx_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@vivid_ctrl_radio_tx_rds_blockio = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_radio_tx_ctrl_ops, ptr null, i32 15790174, ptr @.str.162, i32 3, i64 0, i64 1, i64 0, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_radio_rds_mode_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_radio_tx_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_radio_tx_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VIVID-TX\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"This is a VIVID default Radio Text template text, change at will\00", [63 x i8] zeroinitializer }, align 32
@vivid_ctrl_sdr_cap_fm_deviation = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_sdr_cap_ctrl_ops, ptr null, i32 15790190, ptr @.str.163, i32 1, i64 100, i64 200000, i64 1, i64 75000, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_meta_has_pts = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_meta_cap_ctrl_ops, ptr null, i32 15790191, ptr @.str.164, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_ctrl_meta_has_src_clk = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vivid_meta_cap_ctrl_ops, ptr null, i32 15790192, ptr @.str.165, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vivid_vid_cap_s_ctrl.colorspaces = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1, i32 3, i32 8, i32 9, i32 10, i32 12, i32 2, i32 5, i32 6], [60 x i8] zeroinitializer }, align 32
@vivid_user_gen_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_user_gen_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Vivid Controls\00", [17 x i8] zeroinitializer }, align 32
@vivid_user_gen_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.40, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s: disconnect\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vivid_user_gen_s_ctrl\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/media/test-drivers/vivid/vivid-ctrls.c\00", [49 x i8] zeroinitializer }, align 32
@vivid_user_gen_s_ctrl._entry_ptr = internal global ptr @vivid_user_gen_s_ctrl._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Button\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Integer 32 Bits\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Integer 64 Bits\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Boolean\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Menu\00", [27 x i8] zeroinitializer }, align 32
@vivid_ctrl_menu_strings = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr null], [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Menu Item 0 (Skipped)\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Menu Item 1\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Menu Item 2 (Skipped)\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Menu Item 3\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Menu Item 4\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Menu Item 5 (Skipped)\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"String\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Bitmask\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Integer Menu\00", [19 x i8] zeroinitializer }, align 32
@vivid_ctrl_int_menu_values = internal constant { [9 x i64], [56 x i8] } { [9 x i64] [i64 1, i64 1, i64 2, i64 3, i64 5, i64 8, i64 13, i64 21, i64 42], [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Read-Only Integer 32 Bits\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Area\00", [27 x i8] zeroinitializer }, align 32
@area = internal constant { %struct.v4l2_area, [24 x i8] } { %struct.v4l2_area { i32 1000, i32 2000 }, [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"U32 1 Element Array\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"U16 8x16 Matrix\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"U8 2x3x4x5 Array\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Fill Percentage of Frame\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Horizontal Movement\00", [44 x i8] zeroinitializer }, align 32
@vivid_ctrl_hor_movement_strings = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr null], [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Move Left Fast\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Move Left\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Move Left Slow\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"No Movement\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Move Right Slow\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Move Right\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Move Right Fast\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Vertical Movement\00", [46 x i8] zeroinitializer }, align 32
@vivid_ctrl_vert_movement_strings = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.65, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr null], [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Move Up Fast\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Move Up\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Move Up Slow\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Move Down Slow\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Move Down\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Move Down Fast\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OSD Text Mode\00", [18 x i8] zeroinitializer }, align 32
@vivid_ctrl_osd_mode_strings = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"All\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Counters Only\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Show Border\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Show Square\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Sensor Flipped Horizontally\00", [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Sensor Flipped Vertically\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Insert SAV Code in Image\00", [39 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Insert EAV Code in Image\00", [39 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Reduced Framerate\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Enable Capture Cropping\00", [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Enable Capture Composing\00", [39 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Enable Capture Scaler\00", [42 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Timestamp Source\00", [47 x i8] zeroinitializer }, align 32
@vivid_ctrl_tstamp_src_strings = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.91, ptr @.str.92, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"End of Frame\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Start of Exposure\00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Colorspace\00", [21 x i8] zeroinitializer }, align 32
@vivid_ctrl_colorspace_strings = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr null], [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SMPTE 170M\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Rec. 709\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sRGB\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"opRGB\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BT.2020\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DCI-P3\00", [25 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SMPTE 240M\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"470 System M\00", [19 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"470 System BG\00", [18 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Transfer Function\00", [46 x i8] zeroinitializer }, align 32
@vivid_ctrl_xfer_func_strings = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.104, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.100, ptr @.str.79, ptr @.str.99, ptr @.str.105, ptr null], [60 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Default\00", [24 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SMPTE 2084\00", [21 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Y'CbCr Encoding\00", [16 x i8] zeroinitializer }, align 32
@vivid_ctrl_ycbcr_enc_strings = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.104, ptr @.str.107, ptr @.str.95, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.98, ptr @.str.111, ptr @.str.100, ptr null], [56 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ITU-R 601\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xvYCC 601\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xvYCC 709\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.111 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"BT.2020 Constant Luminance\00", [37 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HSV Encoding\00", [19 x i8] zeroinitializer }, align 32
@vivid_ctrl_hsv_enc_strings = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.113, ptr @.str.114, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Hue 0-179\00", [22 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Hue 0-256\00", [22 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quantization\00", [19 x i8] zeroinitializer }, align 32
@vivid_ctrl_quantization_strings = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.104, ptr @.str.116, ptr @.str.117, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Full Range\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Limited Range\00", [18 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Apply Alpha To Red Only\00", [40 x i8] zeroinitializer }, align 32
@vivid_vid_out_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_vid_out_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Enable Output Cropping\00", [41 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Enable Output Composing\00", [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enable Output Scaler\00", [43 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Disconnect\00", [21 x i8] zeroinitializer }, align 32
@vivid_streaming_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_streaming_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Inject V4L2_BUF_FLAG_ERROR\00", [37 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Percentage of Dropped Buffers\00", [34 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Inject VIDIOC_REQBUFS Error\00", [36 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Inject VIDIOC_QBUF Error\00", [39 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Inject VIDIOC_STREAMON Error\00", [35 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Inject Fatal Streaming Error\00", [35 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Inject req_validate() Error\00", [36 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Wrap Sequence Number\00", [43 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Wrap Timestamp\00", [17 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Standard Aspect Ratio\00", [42 x i8] zeroinitializer }, align 32
@tpg_aspect_strings = external dso_local constant [0 x ptr], align 4
@vivid_sdtv_cap_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_sdtv_cap_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Standard Signal Mode\00", [43 x i8] zeroinitializer }, align 32
@vivid_ctrl_std_signal_mode_strings = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.110, ptr @.str.137, ptr @.str.138, ptr null], [36 x i8] zeroinitializer }, align 32
@vivid_standard = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.134 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Current Standard\00", [47 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"No Signal\00", [22 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"No Lock\00", [24 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Selected Standard\00", [46 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cycle Through All Standards\00", [36 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Standard\00", [23 x i8] zeroinitializer }, align 32
@vivid_ctrl_standard_strings = external dso_local constant [0 x ptr], align 4
@vivid_vbi_cap_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_vbi_cap_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Interlaced VBI Format\00", [42 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DV Timings Signal Mode\00", [41 x i8] zeroinitializer }, align 32
@vivid_ctrl_dv_timings_signal_mode_strings = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.142, ptr @.str.135, ptr @.str.136, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr null], [32 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Current DV Timings\00", [45 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Out of Range\00", [19 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Selected DV Timings\00", [44 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cycle Through All DV Timings\00", [35 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Custom DV Timings\00", [46 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DV Timings Aspect Ratio\00", [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Maximum EDID Blocks\00", [44 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Limited RGB Range (16-235)\00", [37 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Display Present\00", [16 x i8] zeroinitializer }, align 32
@vivid_loop_cap_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_loop_cap_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Loop Video\00", [21 x i8] zeroinitializer }, align 32
@vivid_fb_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_fb_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Clear Framebuffer\00", [46 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Radio HW Seek Mode\00", [45 x i8] zeroinitializer }, align 32
@vivid_ctrl_radio_hw_seek_mode_strings = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Bounded\00", [24 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Wrap Around\00", [20 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Both\00", [27 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Radio Programmable HW Seek\00", [37 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RDS Rx I/O Mode\00", [16 x i8] zeroinitializer }, align 32
@vivid_ctrl_radio_rds_mode_strings = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.159, ptr @.str.160, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Block I/O\00", [22 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Controls\00", [23 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Generate RBDS Instead of RDS\00", [35 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RDS Tx I/O Mode\00", [16 x i8] zeroinitializer }, align 32
@vivid_sdr_cap_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_sdr_cap_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FM Deviation\00", [19 x i8] zeroinitializer }, align 32
@vivid_meta_cap_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_meta_cap_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Generate PTS\00", [19 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Generate SCR\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [30 x i64] [i64 28, i64 32, i64 10488165, i64 15790080, i64 15790081, i64 15790082, i64 15790083, i64 15790084, i64 15790085, i64 15790086, i64 15790087, i64 15790100, i64 15790101, i64 15790102, i64 15790103, i64 15790104, i64 15790105, i64 15790106, i64 15790107, i64 15790108, i64 15790109, i64 15790110, i64 15790111, i64 15790112, i64 15790113, i64 15790120, i64 15790121, i64 15790122, i64 15790123, i64 15790142]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 10025216, i64 15790145]
@__sancov_gen_cov_switch_values.167 = internal global [9 x i64] [i64 7, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9963796, i64 9963797, i64 9963817]
@__sancov_gen_cov_switch_values.168 = internal global [7 x i64] [i64 5, i64 32, i64 10488068, i64 15790114, i64 15790115, i64 15790116, i64 15790124]
@__sancov_gen_cov_switch_values.169 = internal global [11 x i64] [i64 9, i64 32, i64 15790118, i64 15790119, i64 15790144, i64 15790146, i64 15790147, i64 15790148, i64 15790149, i64 15790150, i64 15790152]
@__sancov_gen_cov_switch_values.170 = internal global [7 x i64] [i64 5, i64 32, i64 10553602, i64 15790170, i64 15790171, i64 15790172, i64 15790173]
@__sancov_gen_cov_switch_values.171 = internal global [9 x i64] [i64 7, i64 32, i64 10160387, i64 10160389, i64 10160390, i64 10160395, i64 10160396, i64 10160397, i64 15790174]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 32, i64 15790191, i64 15790192]
@___asan_gen_.173 = private unnamed_addr constant [23 x i8] c"vivid_vid_cap_ctrl_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 554, i32 35 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1539, i32 11 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1544, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"vivid_ctrl_class\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1506, i32 38 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1546, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1548, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1550, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1552, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1554, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1556, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1558, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1560, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1563, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1565, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1568, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1570, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1572, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1574, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1576, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1578, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant [24 x i8] c"vivid_user_vid_ctrl_ops\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 380, i32 35 }
@___asan_gen_.287 = private unnamed_addr constant [18 x i8] c"vivid_ctrl_button\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 142, i32 38 }
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"vivid_ctrl_int32\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 160, i32 38 }
@___asan_gen_.293 = private unnamed_addr constant [17 x i8] c"vivid_ctrl_int64\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 170, i32 38 }
@___asan_gen_.296 = private unnamed_addr constant [19 x i8] c"vivid_ctrl_boolean\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 149, i32 38 }
@___asan_gen_.299 = private unnamed_addr constant [16 x i8] c"vivid_ctrl_menu\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 226, i32 38 }
@___asan_gen_.302 = private unnamed_addr constant [18 x i8] c"vivid_ctrl_string\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 238, i32 38 }
@___asan_gen_.305 = private unnamed_addr constant [19 x i8] c"vivid_ctrl_bitmask\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 248, i32 38 }
@___asan_gen_.308 = private unnamed_addr constant [20 x i8] c"vivid_ctrl_int_menu\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 263, i32 38 }
@___asan_gen_.311 = private unnamed_addr constant [20 x i8] c"vivid_ctrl_ro_int32\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 295, i32 38 }
@___asan_gen_.314 = private unnamed_addr constant [16 x i8] c"vivid_ctrl_area\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 287, i32 38 }
@___asan_gen_.317 = private unnamed_addr constant [21 x i8] c"vivid_ctrl_u32_array\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 180, i32 38 }
@___asan_gen_.320 = private unnamed_addr constant [22 x i8] c"vivid_ctrl_u16_matrix\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 192, i32 38 }
@___asan_gen_.323 = private unnamed_addr constant [23 x i8] c"vivid_ctrl_u8_4d_array\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 204, i32 38 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1627, i32 12 }
@___asan_gen_.329 = private unnamed_addr constant [21 x i8] c"vivid_ctrl_perc_fill\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 634, i32 38 }
@___asan_gen_.332 = private unnamed_addr constant [24 x i8] c"vivid_ctrl_hor_movement\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 569, i32 38 }
@___asan_gen_.335 = private unnamed_addr constant [25 x i8] c"vivid_ctrl_vert_movement\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 590, i32 38 }
@___asan_gen_.338 = private unnamed_addr constant [20 x i8] c"vivid_ctrl_osd_mode\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 625, i32 38 }
@___asan_gen_.341 = private unnamed_addr constant [23 x i8] c"vivid_ctrl_show_border\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 600, i32 38 }
@___asan_gen_.344 = private unnamed_addr constant [23 x i8] c"vivid_ctrl_show_square\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 609, i32 38 }
@___asan_gen_.347 = private unnamed_addr constant [17 x i8] c"vivid_ctrl_hflip\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 663, i32 38 }
@___asan_gen_.350 = private unnamed_addr constant [17 x i8] c"vivid_ctrl_vflip\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 672, i32 38 }
@___asan_gen_.353 = private unnamed_addr constant [22 x i8] c"vivid_ctrl_insert_sav\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 645, i32 38 }
@___asan_gen_.356 = private unnamed_addr constant [22 x i8] c"vivid_ctrl_insert_eav\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 654, i32 38 }
@___asan_gen_.359 = private unnamed_addr constant [23 x i8] c"vivid_ctrl_reduced_fps\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 681, i32 38 }
@___asan_gen_.362 = private unnamed_addr constant [24 x i8] c"vivid_ctrl_has_crop_cap\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 690, i32 38 }
@___asan_gen_.365 = private unnamed_addr constant [27 x i8] c"vivid_ctrl_has_compose_cap\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 700, i32 38 }
@___asan_gen_.368 = private unnamed_addr constant [26 x i8] c"vivid_ctrl_has_scaler_cap\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 710, i32 38 }
@___asan_gen_.371 = private unnamed_addr constant [22 x i8] c"vivid_ctrl_tstamp_src\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 726, i32 38 }
@___asan_gen_.374 = private unnamed_addr constant [22 x i8] c"vivid_ctrl_colorspace\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 799, i32 38 }
@___asan_gen_.377 = private unnamed_addr constant [21 x i8] c"vivid_ctrl_xfer_func\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 821, i32 38 }
@___asan_gen_.380 = private unnamed_addr constant [21 x i8] c"vivid_ctrl_ycbcr_enc\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 843, i32 38 }
@___asan_gen_.383 = private unnamed_addr constant [19 x i8] c"vivid_ctrl_hsv_enc\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 859, i32 38 }
@___asan_gen_.386 = private unnamed_addr constant [24 x i8] c"vivid_ctrl_quantization\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 875, i32 38 }
@___asan_gen_.389 = private unnamed_addr constant [22 x i8] c"vivid_ctrl_alpha_mode\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 884, i32 38 }
@___asan_gen_.392 = private unnamed_addr constant [24 x i8] c"vivid_ctrl_has_crop_out\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1042, i32 38 }
@___asan_gen_.395 = private unnamed_addr constant [27 x i8] c"vivid_ctrl_has_compose_out\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1052, i32 38 }
@___asan_gen_.398 = private unnamed_addr constant [26 x i8] c"vivid_ctrl_has_scaler_out\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1062, i32 38 }
@___asan_gen_.401 = private unnamed_addr constant [22 x i8] c"vivid_ctrl_disconnect\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 275, i32 38 }
@___asan_gen_.404 = private unnamed_addr constant [23 x i8] c"vivid_ctrl_dqbuf_error\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1148, i32 38 }
@___asan_gen_.407 = private unnamed_addr constant [24 x i8] c"vivid_ctrl_perc_dropped\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1155, i32 38 }
@___asan_gen_.410 = private unnamed_addr constant [29 x i8] c"vivid_ctrl_queue_setup_error\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1165, i32 38 }
@___asan_gen_.413 = private unnamed_addr constant [29 x i8] c"vivid_ctrl_buf_prepare_error\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1172, i32 38 }
@___asan_gen_.416 = private unnamed_addr constant [33 x i8] c"vivid_ctrl_start_streaming_error\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1179, i32 38 }
@___asan_gen_.419 = private unnamed_addr constant [23 x i8] c"vivid_ctrl_queue_error\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1186, i32 38 }
@___asan_gen_.422 = private unnamed_addr constant [30 x i8] c"vivid_ctrl_req_validate_error\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1194, i32 38 }
@___asan_gen_.425 = private unnamed_addr constant [20 x i8] c"vivid_ctrl_seq_wrap\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1202, i32 38 }
@___asan_gen_.428 = private unnamed_addr constant [21 x i8] c"vivid_ctrl_time_wrap\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1211, i32 38 }
@___asan_gen_.431 = private unnamed_addr constant [28 x i8] c"vivid_ctrl_std_aspect_ratio\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 735, i32 38 }
@___asan_gen_.434 = private unnamed_addr constant [27 x i8] c"vivid_ctrl_std_signal_mode\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1259, i32 38 }
@___asan_gen_.437 = private unnamed_addr constant [20 x i8] c"vivid_ctrl_standard\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1269, i32 38 }
@___asan_gen_.440 = private unnamed_addr constant [30 x i8] c"vivid_ctrl_vbi_cap_interlaced\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 952, i32 38 }
@___asan_gen_.443 = private unnamed_addr constant [34 x i8] c"vivid_ctrl_dv_timings_signal_mode\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 757, i32 38 }
@___asan_gen_.446 = private unnamed_addr constant [35 x i8] c"vivid_ctrl_dv_timings_aspect_ratio\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 766, i32 38 }
@___asan_gen_.449 = private unnamed_addr constant [27 x i8] c"vivid_ctrl_max_edid_blocks\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 775, i32 38 }
@___asan_gen_.452 = private unnamed_addr constant [29 x i8] c"vivid_ctrl_limited_rgb_range\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 893, i32 38 }
@___asan_gen_.455 = private unnamed_addr constant [27 x i8] c"vivid_ctrl_display_present\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1072, i32 38 }
@___asan_gen_.458 = private unnamed_addr constant [22 x i8] c"vivid_ctrl_loop_video\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 924, i32 38 }
@___asan_gen_.461 = private unnamed_addr constant [20 x i8] c"vivid_ctrl_clear_fb\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 325, i32 38 }
@___asan_gen_.464 = private unnamed_addr constant [30 x i8] c"vivid_ctrl_radio_hw_seek_mode\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1359, i32 38 }
@___asan_gen_.467 = private unnamed_addr constant [34 x i8] c"vivid_ctrl_radio_hw_seek_prog_lim\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1368, i32 38 }
@___asan_gen_.470 = private unnamed_addr constant [32 x i8] c"vivid_ctrl_radio_rx_rds_blockio\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1334, i32 38 }
@___asan_gen_.473 = private unnamed_addr constant [29 x i8] c"vivid_ctrl_radio_rx_rds_rbds\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1343, i32 38 }
@___asan_gen_.476 = private unnamed_addr constant [24 x i8] c"vivid_radio_rx_ctrl_ops\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1324, i32 35 }
@___asan_gen_.479 = private unnamed_addr constant [32 x i8] c"vivid_ctrl_radio_tx_rds_blockio\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1424, i32 38 }
@___asan_gen_.482 = private unnamed_addr constant [24 x i8] c"vivid_radio_tx_ctrl_ops\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1420, i32 35 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1806, i32 54 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1812, i32 11 }
@___asan_gen_.491 = private unnamed_addr constant [32 x i8] c"vivid_ctrl_sdr_cap_fm_deviation\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1453, i32 38 }
@___asan_gen_.494 = private unnamed_addr constant [24 x i8] c"vivid_ctrl_meta_has_pts\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1486, i32 38 }
@___asan_gen_.497 = private unnamed_addr constant [28 x i8] c"vivid_ctrl_meta_has_src_clk\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1496, i32 38 }
@___asan_gen_.500 = private unnamed_addr constant [12 x i8] c"colorspaces\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 390, i32 19 }
@___asan_gen_.503 = private unnamed_addr constant [24 x i8] c"vivid_user_gen_ctrl_ops\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 138, i32 35 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1510, i32 10 }
@___asan_gen_.509 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 118, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 145, i32 10 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 163, i32 10 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 173, i32 10 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 152, i32 10 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 229, i32 10 }
@___asan_gen_.536 = private unnamed_addr constant [24 x i8] c"vivid_ctrl_menu_strings\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 216, i32 27 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 217, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 218, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 219, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 220, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 221, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 222, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 241, i32 10 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 251, i32 10 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 266, i32 10 }
@___asan_gen_.566 = private unnamed_addr constant [27 x i8] c"vivid_ctrl_int_menu_values\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 259, i32 18 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 298, i32 10 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 290, i32 10 }
@___asan_gen_.575 = private unnamed_addr constant [5 x i8] c"area\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 282, i32 31 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 183, i32 10 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 195, i32 10 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 207, i32 10 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 637, i32 10 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 572, i32 10 }
@___asan_gen_.593 = private unnamed_addr constant [32 x i8] c"vivid_ctrl_hor_movement_strings\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 558, i32 27 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 559, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 560, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 561, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 562, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 563, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 564, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 565, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 593, i32 10 }
@___asan_gen_.620 = private unnamed_addr constant [33 x i8] c"vivid_ctrl_vert_movement_strings\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 579, i32 27 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 580, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 581, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 582, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 584, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 585, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 586, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 628, i32 10 }
@___asan_gen_.644 = private unnamed_addr constant [28 x i8] c"vivid_ctrl_osd_mode_strings\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 618, i32 27 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 619, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 620, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 621, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 603, i32 10 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 612, i32 10 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 666, i32 10 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 675, i32 10 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 648, i32 10 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 657, i32 10 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 684, i32 10 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 693, i32 10 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 703, i32 10 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 713, i32 10 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 729, i32 10 }
@___asan_gen_.689 = private unnamed_addr constant [30 x i8] c"vivid_ctrl_tstamp_src_strings\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 720, i32 27 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 721, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 722, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 802, i32 10 }
@___asan_gen_.701 = private unnamed_addr constant [30 x i8] c"vivid_ctrl_colorspace_strings\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 786, i32 27 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 787, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 788, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 789, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 790, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 791, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 792, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 793, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 794, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 795, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 824, i32 10 }
@___asan_gen_.734 = private unnamed_addr constant [29 x i8] c"vivid_ctrl_xfer_func_strings\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 809, i32 27 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 810, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 817, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 846, i32 10 }
@___asan_gen_.746 = private unnamed_addr constant [29 x i8] c"vivid_ctrl_ycbcr_enc_strings\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 830, i32 27 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 832, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 834, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 835, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 836, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 838, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 862, i32 10 }
@___asan_gen_.767 = private unnamed_addr constant [27 x i8] c"vivid_ctrl_hsv_enc_strings\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 853, i32 27 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 854, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 855, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 878, i32 10 }
@___asan_gen_.779 = private unnamed_addr constant [32 x i8] c"vivid_ctrl_quantization_strings\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 868, i32 27 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 870, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 871, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 887, i32 10 }
@___asan_gen_.791 = private unnamed_addr constant [23 x i8] c"vivid_vid_out_ctrl_ops\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1038, i32 35 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1045, i32 10 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1055, i32 10 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1065, i32 10 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 278, i32 10 }
@___asan_gen_.806 = private unnamed_addr constant [25 x i8] c"vivid_streaming_ctrl_ops\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1144, i32 35 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1151, i32 10 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1158, i32 10 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1168, i32 10 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1175, i32 10 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1182, i32 10 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1189, i32 10 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1197, i32 10 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1205, i32 10 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1214, i32 10 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 738, i32 10 }
@___asan_gen_.839 = private unnamed_addr constant [24 x i8] c"vivid_sdtv_cap_ctrl_ops\00", align 1
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1245, i32 35 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1262, i32 10 }
@___asan_gen_.845 = private unnamed_addr constant [35 x i8] c"vivid_ctrl_std_signal_mode_strings\00", align 1
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1249, i32 27 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1250, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1251, i32 2 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1252, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1254, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1255, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1272, i32 10 }
@___asan_gen_.866 = private unnamed_addr constant [23 x i8] c"vivid_vbi_cap_ctrl_ops\00", align 1
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 948, i32 35 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 955, i32 10 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 760, i32 10 }
@___asan_gen_.875 = private unnamed_addr constant [42 x i8] c"vivid_ctrl_dv_timings_signal_mode_strings\00", align 1
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 746, i32 27 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 747, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 750, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 751, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 752, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 753, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 769, i32 10 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 778, i32 10 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 896, i32 10 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1075, i32 10 }
@___asan_gen_.905 = private unnamed_addr constant [24 x i8] c"vivid_loop_cap_ctrl_ops\00", align 1
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 920, i32 35 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 927, i32 10 }
@___asan_gen_.911 = private unnamed_addr constant [18 x i8] c"vivid_fb_ctrl_ops\00", align 1
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 321, i32 35 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 328, i32 10 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1362, i32 10 }
@___asan_gen_.920 = private unnamed_addr constant [38 x i8] c"vivid_ctrl_radio_hw_seek_mode_strings\00", align 1
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1352, i32 27 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1353, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1354, i32 2 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1355, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1371, i32 10 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1337, i32 10 }
@___asan_gen_.938 = private unnamed_addr constant [34 x i8] c"vivid_ctrl_radio_rds_mode_strings\00", align 1
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1328, i32 27 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1329, i32 2 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1330, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1346, i32 10 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1427, i32 10 }
@___asan_gen_.953 = private unnamed_addr constant [23 x i8] c"vivid_sdr_cap_ctrl_ops\00", align 1
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1449, i32 35 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1456, i32 10 }
@___asan_gen_.959 = private unnamed_addr constant [24 x i8] c"vivid_meta_cap_ctrl_ops\00", align 1
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1482, i32 35 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1489, i32 10 }
@___asan_gen_.965 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.966 = private constant [50 x i8] c"../drivers/media/test-drivers/vivid/vivid-ctrls.c\00", align 1
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 1499, i32 10 }
@llvm.compiler.used = appending global [266 x ptr] [ptr @vivid_user_gen_s_ctrl._entry, ptr @vivid_user_gen_s_ctrl._entry_ptr, ptr @vivid_vid_cap_ctrl_ops, ptr @.str, ptr @vivid_create_controls._key, ptr @.str.1, ptr @vivid_ctrl_class, ptr @vivid_create_controls._key.2, ptr @.str.3, ptr @vivid_create_controls._key.4, ptr @.str.5, ptr @vivid_create_controls._key.6, ptr @.str.7, ptr @vivid_create_controls._key.8, ptr @.str.9, ptr @vivid_create_controls._key.10, ptr @.str.11, ptr @vivid_create_controls._key.12, ptr @.str.13, ptr @vivid_create_controls._key.14, ptr @.str.15, ptr @vivid_create_controls._key.16, ptr @.str.17, ptr @vivid_create_controls._key.18, ptr @.str.19, ptr @vivid_create_controls._key.20, ptr @.str.21, ptr @vivid_create_controls._key.22, ptr @.str.23, ptr @vivid_create_controls._key.24, ptr @.str.25, ptr @vivid_create_controls._key.26, ptr @.str.27, ptr @vivid_create_controls._key.28, ptr @.str.29, ptr @vivid_create_controls._key.30, ptr @.str.31, ptr @vivid_create_controls._key.32, ptr @.str.33, ptr @vivid_user_vid_ctrl_ops, ptr @vivid_ctrl_button, ptr @vivid_ctrl_int32, ptr @vivid_ctrl_int64, ptr @vivid_ctrl_boolean, ptr @vivid_ctrl_menu, ptr @vivid_ctrl_string, ptr @vivid_ctrl_bitmask, ptr @vivid_ctrl_int_menu, ptr @vivid_ctrl_ro_int32, ptr @vivid_ctrl_area, ptr @vivid_ctrl_u32_array, ptr @vivid_ctrl_u16_matrix, ptr @vivid_ctrl_u8_4d_array, ptr @.str.34, ptr @vivid_ctrl_perc_fill, ptr @vivid_ctrl_hor_movement, ptr @vivid_ctrl_vert_movement, ptr @vivid_ctrl_osd_mode, ptr @vivid_ctrl_show_border, ptr @vivid_ctrl_show_square, ptr @vivid_ctrl_hflip, ptr @vivid_ctrl_vflip, ptr @vivid_ctrl_insert_sav, ptr @vivid_ctrl_insert_eav, ptr @vivid_ctrl_reduced_fps, ptr @vivid_ctrl_has_crop_cap, ptr @vivid_ctrl_has_compose_cap, ptr @vivid_ctrl_has_scaler_cap, ptr @vivid_ctrl_tstamp_src, ptr @vivid_ctrl_colorspace, ptr @vivid_ctrl_xfer_func, ptr @vivid_ctrl_ycbcr_enc, ptr @vivid_ctrl_hsv_enc, ptr @vivid_ctrl_quantization, ptr @vivid_ctrl_alpha_mode, ptr @vivid_ctrl_has_crop_out, ptr @vivid_ctrl_has_compose_out, ptr @vivid_ctrl_has_scaler_out, ptr @vivid_ctrl_disconnect, ptr @vivid_ctrl_dqbuf_error, ptr @vivid_ctrl_perc_dropped, ptr @vivid_ctrl_queue_setup_error, ptr @vivid_ctrl_buf_prepare_error, ptr @vivid_ctrl_start_streaming_error, ptr @vivid_ctrl_queue_error, ptr @vivid_ctrl_req_validate_error, ptr @vivid_ctrl_seq_wrap, ptr @vivid_ctrl_time_wrap, ptr @vivid_ctrl_std_aspect_ratio, ptr @vivid_ctrl_std_signal_mode, ptr @vivid_ctrl_standard, ptr @vivid_ctrl_vbi_cap_interlaced, ptr @vivid_ctrl_dv_timings_signal_mode, ptr @vivid_ctrl_dv_timings_aspect_ratio, ptr @vivid_ctrl_max_edid_blocks, ptr @vivid_ctrl_limited_rgb_range, ptr @vivid_ctrl_display_present, ptr @vivid_ctrl_loop_video, ptr @vivid_ctrl_clear_fb, ptr @vivid_ctrl_radio_hw_seek_mode, ptr @vivid_ctrl_radio_hw_seek_prog_lim, ptr @vivid_ctrl_radio_rx_rds_blockio, ptr @vivid_ctrl_radio_rx_rds_rbds, ptr @vivid_radio_rx_ctrl_ops, ptr @vivid_ctrl_radio_tx_rds_blockio, ptr @vivid_radio_tx_ctrl_ops, ptr @.str.35, ptr @.str.36, ptr @vivid_ctrl_sdr_cap_fm_deviation, ptr @vivid_ctrl_meta_has_pts, ptr @vivid_ctrl_meta_has_src_clk, ptr @vivid_vid_cap_s_ctrl.colorspaces, ptr @vivid_user_gen_ctrl_ops, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @vivid_ctrl_menu_strings, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @vivid_ctrl_int_menu_values, ptr @.str.55, ptr @.str.56, ptr @area, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @vivid_ctrl_hor_movement_strings, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @vivid_ctrl_vert_movement_strings, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @vivid_ctrl_osd_mode_strings, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @vivid_ctrl_tstamp_src_strings, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @vivid_ctrl_colorspace_strings, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @vivid_ctrl_xfer_func_strings, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @vivid_ctrl_ycbcr_enc_strings, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @vivid_ctrl_hsv_enc_strings, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @vivid_ctrl_quantization_strings, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @vivid_vid_out_ctrl_ops, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @vivid_streaming_ctrl_ops, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @vivid_sdtv_cap_ctrl_ops, ptr @.str.133, ptr @vivid_ctrl_std_signal_mode_strings, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @vivid_vbi_cap_ctrl_ops, ptr @.str.140, ptr @.str.141, ptr @vivid_ctrl_dv_timings_signal_mode_strings, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @vivid_loop_cap_ctrl_ops, ptr @.str.151, ptr @vivid_fb_ctrl_ops, ptr @.str.152, ptr @.str.153, ptr @vivid_ctrl_radio_hw_seek_mode_strings, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @vivid_ctrl_radio_rds_mode_strings, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @vivid_sdr_cap_ctrl_ops, ptr @.str.163, ptr @vivid_meta_cap_ctrl_ops, ptr @.str.164, ptr @.str.165], section "llvm.metadata"
@0 = internal global [265 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_vid_cap_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_class to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_controls._key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_controls._key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_controls._key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_controls._key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_controls._key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_controls._key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_controls._key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_controls._key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_controls._key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_controls._key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_controls._key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_controls._key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_controls._key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_controls._key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_controls._key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_controls._key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_user_vid_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_button to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_int32 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_int64 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_boolean to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_menu to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_string to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_bitmask to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_int_menu to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_ro_int32 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_area to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_u32_array to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_u16_matrix to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_u8_4d_array to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_perc_fill to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_hor_movement to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_vert_movement to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_osd_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_show_border to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_show_square to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_hflip to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_vflip to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_insert_sav to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_insert_eav to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_reduced_fps to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_has_crop_cap to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_has_compose_cap to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_has_scaler_cap to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_tstamp_src to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_colorspace to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_xfer_func to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_ycbcr_enc to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_hsv_enc to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_quantization to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_alpha_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_has_crop_out to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_has_compose_out to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_has_scaler_out to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_disconnect to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_dqbuf_error to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_perc_dropped to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_queue_setup_error to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_buf_prepare_error to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_start_streaming_error to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_queue_error to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_req_validate_error to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_seq_wrap to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_time_wrap to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_std_aspect_ratio to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_std_signal_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_standard to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_vbi_cap_interlaced to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_dv_timings_signal_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_dv_timings_aspect_ratio to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_max_edid_blocks to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_limited_rgb_range to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_display_present to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_loop_video to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_clear_fb to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_radio_hw_seek_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_radio_hw_seek_prog_lim to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_radio_rx_rds_blockio to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_radio_rx_rds_rbds to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_radio_rx_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_radio_tx_rds_blockio to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_radio_tx_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_sdr_cap_fm_deviation to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_meta_has_pts to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_meta_has_src_clk to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_vid_cap_s_ctrl.colorspaces to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_user_gen_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_user_gen_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_menu_strings to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_int_menu_values to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @area to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_hor_movement_strings to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_vert_movement_strings to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_osd_mode_strings to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_tstamp_src_strings to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_colorspace_strings to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_xfer_func_strings to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_ycbcr_enc_strings to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_hsv_enc_strings to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_quantization_strings to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_vid_out_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_streaming_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_sdtv_cap_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_std_signal_mode_strings to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_vbi_cap_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_dv_timings_signal_mode_strings to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_loop_cap_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_fb_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_radio_hw_seek_mode_strings to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ctrl_radio_rds_mode_strings to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_sdr_cap_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_meta_cap_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_create_controls(ptr noundef %dev, i1 noundef zeroext %show_ccs_cap, i1 noundef zeroext %show_ccs_out, i1 noundef zeroext %no_error_inj, i1 noundef zeroext %has_sdtv, i1 noundef zeroext %has_hdmi) local_unnamed_addr #0 align 64 {
entry:
  %vivid_ctrl_dv_timings = alloca %struct.v4l2_ctrl_config, align 8
  %vivid_ctrl_test_pattern = alloca %struct.v4l2_ctrl_config, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_hdl_user_gen = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 11
  %ctrl_hdl_user_vid = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 12
  %ctrl_hdl_user_aud = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 13
  %ctrl_hdl_streaming = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 14
  %ctrl_hdl_sdtv_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 15
  %ctrl_hdl_loop_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 16
  %ctrl_hdl_fb = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 17
  %ctrl_hdl_vid_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 19
  %ctrl_hdl_vid_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 21
  %ctrl_hdl_vbi_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 23
  %ctrl_hdl_vbi_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 25
  %ctrl_hdl_radio_rx = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 27
  %ctrl_hdl_radio_tx = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 29
  %ctrl_hdl_sdr_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 31
  %ctrl_hdl_meta_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 33
  %ctrl_hdl_meta_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 35
  %ctrl_hdl_touch_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 37
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %vivid_ctrl_dv_timings) #6
  %0 = call ptr @memcpy(ptr %vivid_ctrl_dv_timings, ptr @__const.vivid_create_controls.vivid_ctrl_dv_timings, i32 112)
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_user_gen, i32 noundef 10, ptr noundef nonnull @vivid_create_controls._key, ptr noundef nonnull @.str.1) #6
  %call5 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_user_gen, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call7 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_user_vid, i32 noundef 9, ptr noundef nonnull @vivid_create_controls._key.2, ptr noundef nonnull @.str.3) #6
  %call8 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_user_vid, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call10 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_user_aud, i32 noundef 2, ptr noundef nonnull @vivid_create_controls._key.4, ptr noundef nonnull @.str.5) #6
  %call11 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_user_aud, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call13 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_streaming, i32 noundef 8, ptr noundef nonnull @vivid_create_controls._key.6, ptr noundef nonnull @.str.7) #6
  %call14 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_streaming, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call16 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_sdtv_cap, i32 noundef 2, ptr noundef nonnull @vivid_create_controls._key.8, ptr noundef nonnull @.str.9) #6
  %call17 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_sdtv_cap, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call19 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_loop_cap, i32 noundef 1, ptr noundef nonnull @vivid_create_controls._key.10, ptr noundef nonnull @.str.11) #6
  %call20 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_loop_cap, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call22 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_fb, i32 noundef 1, ptr noundef nonnull @vivid_create_controls._key.12, ptr noundef nonnull @.str.13) #6
  %call23 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_fb, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call25 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_vid_cap, i32 noundef 55, ptr noundef nonnull @vivid_create_controls._key.14, ptr noundef nonnull @.str.15) #6
  %call26 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call28 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_vid_out, i32 noundef 26, ptr noundef nonnull @vivid_create_controls._key.16, ptr noundef nonnull @.str.17) #6
  br i1 %no_error_inj, label %lor.lhs.false, label %if.then39.critedge

lor.lhs.false:                                    ; preds = %entry
  %has_fb = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 72
  %1 = ptrtoint ptr %has_fb to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %has_fb, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool29.not = icmp eq i8 %2, 0
  br i1 %tobool29.not, label %lor.lhs.false30, label %if.end41.critedge825

lor.lhs.false30:                                  ; preds = %lor.lhs.false
  %num_hdmi_outputs = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 56
  %3 = ptrtoint ptr %num_hdmi_outputs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_hdmi_outputs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool31.not = icmp eq i32 %4, 0
  br i1 %tobool31.not, label %if.end41.critedge, label %if.end41.critedge821

if.then39.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call32.c830 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_out, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call34.c831 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_vbi_cap, i32 noundef 21, ptr noundef nonnull @vivid_create_controls._key.18, ptr noundef nonnull @.str.19) #6
  %call35.c832 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vbi_cap, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call37.c833 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_vbi_out, i32 noundef 19, ptr noundef nonnull @vivid_create_controls._key.20, ptr noundef nonnull @.str.21) #6
  %call40 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vbi_out, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  br label %if.end41

if.end41.critedge:                                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #8
  %call34.c = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_vbi_cap, i32 noundef 21, ptr noundef nonnull @vivid_create_controls._key.18, ptr noundef nonnull @.str.19) #6
  %call35.c = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vbi_cap, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call37.c = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_vbi_out, i32 noundef 19, ptr noundef nonnull @vivid_create_controls._key.20, ptr noundef nonnull @.str.21) #6
  br label %if.end41

if.end41.critedge821:                             ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #8
  %call32.c = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_out, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call34.c822 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_vbi_cap, i32 noundef 21, ptr noundef nonnull @vivid_create_controls._key.18, ptr noundef nonnull @.str.19) #6
  %call35.c823 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vbi_cap, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call37.c824 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_vbi_out, i32 noundef 19, ptr noundef nonnull @vivid_create_controls._key.20, ptr noundef nonnull @.str.21) #6
  br label %if.end41

if.end41.critedge825:                             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %call32.c826 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_out, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call34.c827 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_vbi_cap, i32 noundef 21, ptr noundef nonnull @vivid_create_controls._key.18, ptr noundef nonnull @.str.19) #6
  %call35.c828 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vbi_cap, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call37.c829 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_vbi_out, i32 noundef 19, ptr noundef nonnull @vivid_create_controls._key.20, ptr noundef nonnull @.str.21) #6
  br label %if.end41

if.end41:                                         ; preds = %if.end41.critedge825, %if.end41.critedge821, %if.end41.critedge, %if.then39.critedge
  %call43 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_radio_rx, i32 noundef 17, ptr noundef nonnull @vivid_create_controls._key.22, ptr noundef nonnull @.str.23) #6
  %call44 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_radio_rx, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call46 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_radio_tx, i32 noundef 17, ptr noundef nonnull @vivid_create_controls._key.24, ptr noundef nonnull @.str.25) #6
  %call47 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_radio_tx, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call49 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_sdr_cap, i32 noundef 19, ptr noundef nonnull @vivid_create_controls._key.26, ptr noundef nonnull @.str.27) #6
  %call50 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_sdr_cap, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call52 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_meta_cap, i32 noundef 2, ptr noundef nonnull @vivid_create_controls._key.28, ptr noundef nonnull @.str.29) #6
  %call53 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_meta_cap, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call55 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_meta_out, i32 noundef 2, ptr noundef nonnull @vivid_create_controls._key.30, ptr noundef nonnull @.str.31) #6
  %call56 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_meta_out, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call58 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl_touch_cap, i32 noundef 2, ptr noundef nonnull @vivid_create_controls._key.32, ptr noundef nonnull @.str.33) #6
  %call59 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_touch_cap, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #6
  %call60 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_user_aud, ptr noundef null, i32 noundef 9963781, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 200) #6
  %volume = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 83
  %5 = ptrtoint ptr %volume to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call60, ptr %volume, align 8
  %call61 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_user_aud, ptr noundef null, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %mute = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 84
  %6 = ptrtoint ptr %mute to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call61, ptr %mute, align 4
  %has_vid_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 61
  %7 = ptrtoint ptr %has_vid_cap to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %has_vid_cap, align 2, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool62.not = icmp eq i8 %8, 0
  br i1 %tobool62.not, label %if.end41.if.end73_crit_edge, label %if.then63

if.end41.if.end73_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then63:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %call64 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_user_vid, ptr noundef nonnull @vivid_user_vid_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #6
  %brightness = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 78
  %9 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call64, ptr %brightness, align 8
  %arrayidx = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 131, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 128, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 131, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 128, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 131, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 128, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 131, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 128, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 131, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 128, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 131, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 128, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 131, i32 6
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 128, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 131, i32 7
  %17 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 128, ptr %arrayidx.7, align 4
  %arrayidx.8 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 131, i32 8
  %18 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 128, ptr %arrayidx.8, align 4
  %arrayidx.9 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 131, i32 9
  %19 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 128, ptr %arrayidx.9, align 4
  %arrayidx.10 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 131, i32 10
  %20 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 128, ptr %arrayidx.10, align 4
  %arrayidx.11 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 131, i32 11
  %21 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 128, ptr %arrayidx.11, align 4
  %arrayidx.12 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 131, i32 12
  %22 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 128, ptr %arrayidx.12, align 4
  %arrayidx.13 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 131, i32 13
  %23 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 128, ptr %arrayidx.13, align 4
  %arrayidx.14 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 131, i32 14
  %24 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 128, ptr %arrayidx.14, align 4
  %arrayidx.15 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 131, i32 15
  %25 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 128, ptr %arrayidx.15, align 4
  %call65 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_user_vid, ptr noundef nonnull @vivid_user_vid_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #6
  %contrast = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 79
  %26 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call65, ptr %contrast, align 4
  %call66 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_user_vid, ptr noundef nonnull @vivid_user_vid_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #6
  %saturation = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 80
  %27 = ptrtoint ptr %saturation to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call66, ptr %saturation, align 8
  %call67 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_user_vid, ptr noundef nonnull @vivid_user_vid_ctrl_ops, i32 noundef 9963779, i64 noundef -128, i64 noundef 128, i64 noundef 1, i64 noundef 0) #6
  %hue = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 81
  %28 = ptrtoint ptr %hue to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call67, ptr %hue, align 4
  %call68 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_user_vid, ptr noundef nonnull @vivid_user_vid_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %call69 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_user_vid, ptr noundef nonnull @vivid_user_vid_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %call70 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_user_vid, ptr noundef nonnull @vivid_user_vid_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %29 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 82
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call70, ptr %29, align 8
  %call71 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_user_vid, ptr noundef nonnull @vivid_user_vid_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 100) #6
  %gain = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 82, i32 1
  %31 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call71, ptr %gain, align 4
  %call72 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_user_vid, ptr noundef nonnull @vivid_user_vid_ctrl_ops, i32 noundef 9963817, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 0) #6
  %alpha = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 85
  %32 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call72, ptr %alpha, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then63, %if.end41.if.end73_crit_edge
  %call74 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_user_gen, ptr noundef nonnull @vivid_ctrl_button, ptr noundef null) #6
  %button = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 86
  %33 = ptrtoint ptr %button to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call74, ptr %button, align 4
  %call75 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_user_gen, ptr noundef nonnull @vivid_ctrl_int32, ptr noundef null) #6
  %int32 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 88
  %34 = ptrtoint ptr %int32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call75, ptr %int32, align 4
  %call76 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_user_gen, ptr noundef nonnull @vivid_ctrl_int64, ptr noundef null) #6
  %int64 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 89
  %35 = ptrtoint ptr %int64 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call76, ptr %int64, align 8
  %call77 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_user_gen, ptr noundef nonnull @vivid_ctrl_boolean, ptr noundef null) #6
  %boolean = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 87
  %36 = ptrtoint ptr %boolean to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call77, ptr %boolean, align 8
  %call78 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_user_gen, ptr noundef nonnull @vivid_ctrl_menu, ptr noundef null) #6
  %menu = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 90
  %37 = ptrtoint ptr %menu to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call78, ptr %menu, align 4
  %call79 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_user_gen, ptr noundef nonnull @vivid_ctrl_string, ptr noundef null) #6
  %string = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 91
  %38 = ptrtoint ptr %string to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call79, ptr %string, align 8
  %call80 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_user_gen, ptr noundef nonnull @vivid_ctrl_bitmask, ptr noundef null) #6
  %bitmask = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 92
  %39 = ptrtoint ptr %bitmask to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call80, ptr %bitmask, align 4
  %call81 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_user_gen, ptr noundef nonnull @vivid_ctrl_int_menu, ptr noundef null) #6
  %int_menu = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 93
  %40 = ptrtoint ptr %int_menu to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call81, ptr %int_menu, align 8
  %call82 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_user_gen, ptr noundef nonnull @vivid_ctrl_ro_int32, ptr noundef null) #6
  %ro_int32 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 94
  %41 = ptrtoint ptr %ro_int32 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call82, ptr %ro_int32, align 4
  %call83 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_user_gen, ptr noundef nonnull @vivid_ctrl_area, ptr noundef null) #6
  %call84 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_user_gen, ptr noundef nonnull @vivid_ctrl_u32_array, ptr noundef null) #6
  %call85 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_user_gen, ptr noundef nonnull @vivid_ctrl_u16_matrix, ptr noundef null) #6
  %call86 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_user_gen, ptr noundef nonnull @vivid_ctrl_u8_4d_array, ptr noundef null) #6
  %42 = ptrtoint ptr %has_vid_cap to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %has_vid_cap, align 2, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool88.not = icmp eq i8 %43, 0
  br i1 %tobool88.not, label %if.end73.if.end115_crit_edge, label %if.then89

if.end73.if.end115_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

if.then89:                                        ; preds = %if.end73
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %vivid_ctrl_test_pattern) #6
  %44 = call ptr @memcpy(ptr %vivid_ctrl_test_pattern, ptr @__const.vivid_create_controls.vivid_ctrl_test_pattern, i32 112)
  %call90 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull %vivid_ctrl_test_pattern, ptr noundef null) #6
  %test_pattern = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 95
  %45 = ptrtoint ptr %test_pattern to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call90, ptr %test_pattern, align 8
  %call91 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_perc_fill, ptr noundef null) #6
  %call92 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_hor_movement, ptr noundef null) #6
  %call93 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_vert_movement, ptr noundef null) #6
  %call94 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_osd_mode, ptr noundef null) #6
  %call95 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_show_border, ptr noundef null) #6
  %call96 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_show_square, ptr noundef null) #6
  %call97 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_hflip, ptr noundef null) #6
  %call98 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_vflip, ptr noundef null) #6
  %call99 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_insert_sav, ptr noundef null) #6
  %call100 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_insert_eav, ptr noundef null) #6
  %call101 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_reduced_fps, ptr noundef null) #6
  br i1 %show_ccs_cap, label %if.then103, label %if.then89.if.end107_crit_edge

if.then89.if.end107_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.then103:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  %call104 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_has_crop_cap, ptr noundef null) #6
  %ctrl_has_crop_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 102
  %46 = ptrtoint ptr %ctrl_has_crop_cap to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call104, ptr %ctrl_has_crop_cap, align 4
  %call105 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_has_compose_cap, ptr noundef null) #6
  %ctrl_has_compose_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 103
  %47 = ptrtoint ptr %ctrl_has_compose_cap to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call105, ptr %ctrl_has_compose_cap, align 8
  %call106 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_has_scaler_cap, ptr noundef null) #6
  %ctrl_has_scaler_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 104
  %48 = ptrtoint ptr %ctrl_has_scaler_cap to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call106, ptr %ctrl_has_scaler_cap, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then103, %if.then89.if.end107_crit_edge
  %call108 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_tstamp_src, ptr noundef null) #6
  %call109 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_colorspace, ptr noundef null) #6
  %colorspace = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 96
  %49 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call109, ptr %colorspace, align 4
  %call110 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_xfer_func, ptr noundef null) #6
  %call111 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_ycbcr_enc, ptr noundef null) #6
  %call112 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_hsv_enc, ptr noundef null) #6
  %call113 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_quantization, ptr noundef null) #6
  %call114 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_alpha_mode, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %vivid_ctrl_test_pattern) #6
  br label %if.end115

if.end115:                                        ; preds = %if.end107, %if.end73.if.end115_crit_edge
  %has_vid_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 62
  %50 = ptrtoint ptr %has_vid_out to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %has_vid_out, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool116.not = icmp ne i8 %51, 0
  %52 = and i1 %tobool116.not, %show_ccs_out
  br i1 %52, label %if.then118, label %if.end115.if.end122_crit_edge

if.end115.if.end122_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end122

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  %call119 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_out, ptr noundef nonnull @vivid_ctrl_has_crop_out, ptr noundef null) #6
  %ctrl_has_crop_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 105
  %53 = ptrtoint ptr %ctrl_has_crop_out to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call119, ptr %ctrl_has_crop_out, align 8
  %call120 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_out, ptr noundef nonnull @vivid_ctrl_has_compose_out, ptr noundef null) #6
  %ctrl_has_compose_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 106
  %54 = ptrtoint ptr %ctrl_has_compose_out to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call120, ptr %ctrl_has_compose_out, align 4
  %call121 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_out, ptr noundef nonnull @vivid_ctrl_has_scaler_out, ptr noundef null) #6
  %ctrl_has_scaler_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 107
  %55 = ptrtoint ptr %ctrl_has_scaler_out to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call121, ptr %ctrl_has_scaler_out, align 8
  br label %if.end122

if.end122:                                        ; preds = %if.then118, %if.end115.if.end122_crit_edge
  br i1 %no_error_inj, label %if.end122.if.end135_crit_edge, label %if.then124

if.end122.if.end135_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.then124:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  %call125 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_user_gen, ptr noundef nonnull @vivid_ctrl_disconnect, ptr noundef null) #6
  %call126 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_streaming, ptr noundef nonnull @vivid_ctrl_dqbuf_error, ptr noundef null) #6
  %call127 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_streaming, ptr noundef nonnull @vivid_ctrl_perc_dropped, ptr noundef null) #6
  %call128 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_streaming, ptr noundef nonnull @vivid_ctrl_queue_setup_error, ptr noundef null) #6
  %call129 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_streaming, ptr noundef nonnull @vivid_ctrl_buf_prepare_error, ptr noundef null) #6
  %call130 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_streaming, ptr noundef nonnull @vivid_ctrl_start_streaming_error, ptr noundef null) #6
  %call131 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_streaming, ptr noundef nonnull @vivid_ctrl_queue_error, ptr noundef null) #6
  %call132 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_streaming, ptr noundef nonnull @vivid_ctrl_req_validate_error, ptr noundef null) #6
  %call133 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_streaming, ptr noundef nonnull @vivid_ctrl_seq_wrap, ptr noundef null) #6
  %call134 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_streaming, ptr noundef nonnull @vivid_ctrl_time_wrap, ptr noundef null) #6
  br label %if.end135

if.end135:                                        ; preds = %if.then124, %if.end122.if.end135_crit_edge
  br i1 %has_sdtv, label %land.lhs.true137, label %if.end135.if.end159_crit_edge

if.end135.if.end159_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159

land.lhs.true137:                                 ; preds = %if.end135
  %56 = ptrtoint ptr %has_vid_cap to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %has_vid_cap, align 2, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool139.not = icmp eq i8 %57, 0
  br i1 %tobool139.not, label %lor.lhs.false140, label %if.then145

lor.lhs.false140:                                 ; preds = %land.lhs.true137
  %has_vbi_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 63
  %58 = ptrtoint ptr %has_vbi_cap to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %has_vbi_cap, align 8, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool141.not = icmp eq i8 %59, 0
  br i1 %tobool141.not, label %lor.lhs.false140.if.end159_crit_edge, label %lor.lhs.false140.if.end147_crit_edge

lor.lhs.false140.if.end147_crit_edge:             ; preds = %lor.lhs.false140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

lor.lhs.false140.if.end159_crit_edge:             ; preds = %lor.lhs.false140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159

if.then145:                                       ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #8
  %call146 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_std_aspect_ratio, ptr noundef null) #6
  br label %if.end147

if.end147:                                        ; preds = %if.then145, %lor.lhs.false140.if.end147_crit_edge
  %call148 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_sdtv_cap, ptr noundef nonnull @vivid_ctrl_std_signal_mode, ptr noundef null) #6
  %60 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 99
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call148, ptr %60, align 8
  %call149 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_sdtv_cap, ptr noundef nonnull @vivid_ctrl_standard, ptr noundef null) #6
  %ctrl_standard = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 99, i32 1
  %62 = ptrtoint ptr %ctrl_standard to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call149, ptr %ctrl_standard, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %60, align 8
  %tobool151.not = icmp eq ptr %64, null
  br i1 %tobool151.not, label %if.end147.if.end154_crit_edge, label %if.then152

if.end147.if.end154_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end154

if.then152:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %60) #6
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %if.end147.if.end154_crit_edge
  %has_raw_vbi_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 64
  %65 = ptrtoint ptr %has_raw_vbi_cap to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %has_raw_vbi_cap, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool155.not = icmp eq i8 %66, 0
  br i1 %tobool155.not, label %if.end154.if.end159_crit_edge, label %if.then156

if.end154.if.end159_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159

if.then156:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  %call157 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vbi_cap, ptr noundef nonnull @vivid_ctrl_vbi_cap_interlaced, ptr noundef null) #6
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %if.end154.if.end159_crit_edge, %lor.lhs.false140.if.end159_crit_edge, %if.end135.if.end159_crit_edge
  %num_hdmi_inputs = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 52
  %67 = ptrtoint ptr %num_hdmi_inputs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_hdmi_inputs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool160.not = icmp eq i32 %68, 0
  br i1 %tobool160.not, label %if.end159.if.end178_crit_edge, label %if.then161

if.end159.if.end178_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end178

if.then161:                                       ; preds = %if.end159
  %sub163 = sub i32 32, %68
  %shr = lshr i32 -1, %sub163
  %conv = zext i32 %shr to i64
  %call164 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_dv_timings_signal_mode, ptr noundef null) #6
  %69 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 100
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call164, ptr %69, align 8
  %query_dv_timings_size = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 169
  %71 = ptrtoint ptr %query_dv_timings_size to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %query_dv_timings_size, align 8
  %sub165 = add i32 %72, -1
  %conv166 = zext i32 %sub165 to i64
  %max = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %vivid_ctrl_dv_timings, i32 0, i32 6
  %73 = ptrtoint ptr %max to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv166, ptr %max, align 8
  %query_dv_timings_qmenu = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 167
  %74 = ptrtoint ptr %query_dv_timings_qmenu to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %query_dv_timings_qmenu, align 8
  %qmenu = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %vivid_ctrl_dv_timings, i32 0, i32 14
  %76 = ptrtoint ptr %qmenu to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %qmenu, align 8
  %call167 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull %vivid_ctrl_dv_timings, ptr noundef null) #6
  %ctrl_dv_timings = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 100, i32 1
  %77 = ptrtoint ptr %ctrl_dv_timings to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call167, ptr %ctrl_dv_timings, align 4
  %78 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %69, align 8
  %tobool169.not = icmp eq ptr %79, null
  br i1 %tobool169.not, label %if.then161.if.end172_crit_edge, label %if.then170

if.then161.if.end172_crit_edge:                   ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end172

if.then170:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #8
  call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %69) #6
  br label %if.end172

if.end172:                                        ; preds = %if.then170, %if.then161.if.end172_crit_edge
  %call173 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_dv_timings_aspect_ratio, ptr noundef null) #6
  %call174 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_max_edid_blocks, ptr noundef null) #6
  %call175 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_ctrl_limited_rgb_range, ptr noundef null) #6
  %real_rgb_range_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 98
  %80 = ptrtoint ptr %real_rgb_range_cap to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call175, ptr %real_rgb_range_cap, align 4
  %call176 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_hdl_vid_cap, ptr noundef nonnull @vivid_vid_cap_ctrl_ops, i32 noundef 10488165, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #6
  %rgb_range_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 97
  %81 = ptrtoint ptr %rgb_range_cap to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call176, ptr %rgb_range_cap, align 8
  %call177 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_vid_cap, ptr noundef null, i32 noundef 10488164, i64 noundef 0, i64 noundef %conv, i64 noundef 0, i64 noundef %conv) #6
  %ctrl_rx_power_present = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 113
  %82 = ptrtoint ptr %ctrl_rx_power_present to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call177, ptr %ctrl_rx_power_present, align 8
  br label %if.end178

if.end178:                                        ; preds = %if.end172, %if.end159.if.end178_crit_edge
  %num_hdmi_outputs179 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 56
  %83 = ptrtoint ptr %num_hdmi_outputs179 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_hdmi_outputs179, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool180.not = icmp eq i32 %84, 0
  br i1 %tobool180.not, label %if.end178.if.end195_crit_edge, label %if.then181

if.end178.if.end195_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end195

if.then181:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #8
  %sub184 = sub i32 32, %84
  %shr185 = lshr i32 -1, %sub184
  %conv188 = zext i32 %shr185 to i64
  %call189 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_hdl_vid_out, ptr noundef null, i32 noundef 10488069, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #6
  %ctrl_tx_rgb_range = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 109
  %85 = ptrtoint ptr %ctrl_tx_rgb_range to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call189, ptr %ctrl_tx_rgb_range, align 8
  %call190 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_hdl_vid_out, ptr noundef null, i32 noundef 10488068, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 1) #6
  %ctrl_tx_mode = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 108
  %86 = ptrtoint ptr %ctrl_tx_mode to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call190, ptr %ctrl_tx_mode, align 4
  %call191 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_vid_out, ptr noundef nonnull @vivid_ctrl_display_present, ptr noundef null) #6
  %ctrl_display_present = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 101
  %87 = ptrtoint ptr %ctrl_display_present to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call191, ptr %ctrl_display_present, align 8
  %call192 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_vid_out, ptr noundef null, i32 noundef 10488065, i64 noundef 0, i64 noundef %conv188, i64 noundef 0, i64 noundef %conv188) #6
  %ctrl_tx_hotplug = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 111
  %88 = ptrtoint ptr %ctrl_tx_hotplug to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call192, ptr %ctrl_tx_hotplug, align 8
  %call193 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_vid_out, ptr noundef null, i32 noundef 10488066, i64 noundef 0, i64 noundef %conv188, i64 noundef 0, i64 noundef %conv188) #6
  %ctrl_tx_rxsense = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 112
  %89 = ptrtoint ptr %ctrl_tx_rxsense to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call193, ptr %ctrl_tx_rxsense, align 4
  %call194 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_vid_out, ptr noundef null, i32 noundef 10488067, i64 noundef 0, i64 noundef %conv188, i64 noundef 0, i64 noundef %conv188) #6
  %ctrl_tx_edid_present = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 110
  %90 = ptrtoint ptr %ctrl_tx_edid_present to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call194, ptr %ctrl_tx_edid_present, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.then181, %if.end178.if.end195_crit_edge
  %91 = ptrtoint ptr %has_vid_cap to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %has_vid_cap, align 2, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool197.not = icmp eq i8 %92, 0
  br i1 %tobool197.not, label %if.end195.lor.lhs.false203_crit_edge, label %land.lhs.true199

if.end195.lor.lhs.false203_crit_edge:             ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false203

land.lhs.true199:                                 ; preds = %if.end195
  %93 = ptrtoint ptr %has_vid_out to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %has_vid_out, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool201.not = icmp eq i8 %94, 0
  br i1 %tobool201.not, label %land.lhs.true199.lor.lhs.false203_crit_edge, label %land.lhs.true199.if.then210_crit_edge

land.lhs.true199.if.then210_crit_edge:            ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then210

land.lhs.true199.lor.lhs.false203_crit_edge:      ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false203

lor.lhs.false203:                                 ; preds = %land.lhs.true199.lor.lhs.false203_crit_edge, %if.end195.lor.lhs.false203_crit_edge
  %has_vbi_cap204 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 63
  %95 = ptrtoint ptr %has_vbi_cap204 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %has_vbi_cap204, align 8, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool205.not = icmp eq i8 %96, 0
  br i1 %tobool205.not, label %lor.lhs.false203.if.end212_crit_edge, label %land.lhs.true207

lor.lhs.false203.if.end212_crit_edge:             ; preds = %lor.lhs.false203
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end212

land.lhs.true207:                                 ; preds = %lor.lhs.false203
  %has_vbi_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 66
  %97 = ptrtoint ptr %has_vbi_out to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %has_vbi_out, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool208.not = icmp eq i8 %98, 0
  br i1 %tobool208.not, label %land.lhs.true207.if.end212_crit_edge, label %land.lhs.true207.if.then210_crit_edge

land.lhs.true207.if.then210_crit_edge:            ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then210

land.lhs.true207.if.end212_crit_edge:             ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end212

if.then210:                                       ; preds = %land.lhs.true207.if.then210_crit_edge, %land.lhs.true199.if.then210_crit_edge
  %call211 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_loop_cap, ptr noundef nonnull @vivid_ctrl_loop_video, ptr noundef null) #6
  br label %if.end212

if.end212:                                        ; preds = %if.then210, %land.lhs.true207.if.end212_crit_edge, %lor.lhs.false203.if.end212_crit_edge
  %has_fb213 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 72
  %99 = ptrtoint ptr %has_fb213 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %has_fb213, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool214.not = icmp eq i8 %100, 0
  br i1 %tobool214.not, label %if.end212.if.end217_crit_edge, label %if.then215

if.end212.if.end217_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end217

if.then215:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #8
  %call216 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_fb, ptr noundef nonnull @vivid_ctrl_clear_fb, ptr noundef null) #6
  br label %if.end217

if.end217:                                        ; preds = %if.then215, %if.end212.if.end217_crit_edge
  %has_radio_rx = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 69
  %101 = ptrtoint ptr %has_radio_rx to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %has_radio_rx, align 2, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool218.not = icmp eq i8 %102, 0
  br i1 %tobool218.not, label %if.end217.if.end231_crit_edge, label %if.then219

if.end217.if.end231_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end231

if.then219:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #8
  %call220 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_radio_rx, ptr noundef nonnull @vivid_ctrl_radio_hw_seek_mode, ptr noundef null) #6
  %call221 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_radio_rx, ptr noundef nonnull @vivid_ctrl_radio_hw_seek_prog_lim, ptr noundef null) #6
  %call222 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_radio_rx, ptr noundef nonnull @vivid_ctrl_radio_rx_rds_blockio, ptr noundef null) #6
  %call223 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_radio_rx, ptr noundef nonnull @vivid_ctrl_radio_rx_rds_rbds, ptr noundef null) #6
  %call224 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_radio_rx, ptr noundef nonnull @vivid_radio_rx_ctrl_ops, i32 noundef 10553602, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %call225 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_radio_rx, ptr noundef nonnull @vivid_radio_rx_ctrl_ops, i32 noundef 10553603, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef 0) #6
  %radio_rx_rds_pty = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 125
  %103 = ptrtoint ptr %radio_rx_rds_pty to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call225, ptr %radio_rx_rds_pty, align 8
  %call226 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_radio_rx, ptr noundef nonnull @vivid_radio_rx_ctrl_ops, i32 noundef 10553604, i64 noundef 0, i64 noundef 8, i64 noundef 8, i64 noundef 0) #6
  %radio_rx_rds_psname = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 129
  %104 = ptrtoint ptr %radio_rx_rds_psname to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call226, ptr %radio_rx_rds_psname, align 8
  %call227 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_radio_rx, ptr noundef nonnull @vivid_radio_rx_ctrl_ops, i32 noundef 10553605, i64 noundef 0, i64 noundef 64, i64 noundef 64, i64 noundef 0) #6
  %radio_rx_rds_radiotext = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 130
  %105 = ptrtoint ptr %radio_rx_rds_radiotext to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call227, ptr %radio_rx_rds_radiotext, align 4
  %call228 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_radio_rx, ptr noundef nonnull @vivid_radio_rx_ctrl_ops, i32 noundef 10553606, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %radio_rx_rds_ta = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 126
  %106 = ptrtoint ptr %radio_rx_rds_ta to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call228, ptr %radio_rx_rds_ta, align 4
  %call229 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_radio_rx, ptr noundef nonnull @vivid_radio_rx_ctrl_ops, i32 noundef 10553607, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %radio_rx_rds_tp = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 127
  %107 = ptrtoint ptr %radio_rx_rds_tp to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call229, ptr %radio_rx_rds_tp, align 8
  %call230 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_radio_rx, ptr noundef nonnull @vivid_radio_rx_ctrl_ops, i32 noundef 10553608, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %radio_rx_rds_ms = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 128
  %108 = ptrtoint ptr %radio_rx_rds_ms to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call230, ptr %radio_rx_rds_ms, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.then219, %if.end217.if.end231_crit_edge
  %has_radio_tx = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 70
  %109 = ptrtoint ptr %has_radio_tx to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %has_radio_tx, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool232.not = icmp eq i8 %110, 0
  br i1 %tobool232.not, label %if.end231.if.end258_crit_edge, label %if.then233

if.end231.if.end258_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end258

if.then233:                                       ; preds = %if.end231
  %call234 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_radio_tx, ptr noundef nonnull @vivid_ctrl_radio_tx_rds_blockio, ptr noundef null) #6
  %call235 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_radio_tx, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160386, i64 noundef 0, i64 noundef 65535, i64 noundef 1, i64 noundef 32904) #6
  %radio_tx_rds_pi = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 114
  %111 = ptrtoint ptr %radio_tx_rds_pi to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call235, ptr %radio_tx_rds_pi, align 4
  %call236 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_radio_tx, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160387, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef 3) #6
  %radio_tx_rds_pty = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 115
  %112 = ptrtoint ptr %radio_tx_rds_pty to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call236, ptr %radio_tx_rds_pty, align 8
  %call237 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_radio_tx, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160389, i64 noundef 0, i64 noundef 8, i64 noundef 8, i64 noundef 0) #6
  %radio_tx_rds_psname = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 123
  %113 = ptrtoint ptr %radio_tx_rds_psname to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call237, ptr %radio_tx_rds_psname, align 8
  %tobool239.not = icmp eq ptr %call237, null
  br i1 %tobool239.not, label %if.then233.if.end243_crit_edge, label %if.then240

if.then233.if.end243_crit_edge:                   ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end243

if.then240:                                       ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #8
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call237, i32 0, i32 2
  %114 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %lock.i.i, align 4
  call void @mutex_lock_nested(ptr noundef %117, i32 noundef 0) #6
  %call.i = call i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef nonnull %call237, ptr noundef nonnull @.str.35) #6
  %118 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %lock.i2.i, align 4
  call void @mutex_unlock(ptr noundef %121) #6
  br label %if.end243

if.end243:                                        ; preds = %if.then240, %if.then233.if.end243_crit_edge
  %call244 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_radio_tx, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160390, i64 noundef 0, i64 noundef 128, i64 noundef 64, i64 noundef 0) #6
  %radio_tx_rds_radiotext = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 124
  %122 = ptrtoint ptr %radio_tx_rds_radiotext to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call244, ptr %radio_tx_rds_radiotext, align 4
  %tobool246.not = icmp eq ptr %call244, null
  br i1 %tobool246.not, label %if.end243.if.end250_crit_edge, label %if.then247

if.end243.if.end250_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end250

if.then247:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #8
  %handler.i.i834 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call244, i32 0, i32 2
  %123 = ptrtoint ptr %handler.i.i834 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %handler.i.i834, align 8
  %lock.i.i835 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %lock.i.i835 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %lock.i.i835, align 4
  call void @mutex_lock_nested(ptr noundef %126, i32 noundef 0) #6
  %call.i836 = call i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef nonnull %call244, ptr noundef nonnull @.str.36) #6
  %127 = ptrtoint ptr %handler.i.i834 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %handler.i.i834, align 8
  %lock.i2.i837 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %lock.i2.i837 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %lock.i2.i837, align 4
  call void @mutex_unlock(ptr noundef %130) #6
  br label %if.end250

if.end250:                                        ; preds = %if.then247, %if.end243.if.end250_crit_edge
  %call251 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_radio_tx, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160391, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %radio_tx_rds_mono_stereo = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 116
  %131 = ptrtoint ptr %radio_tx_rds_mono_stereo to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call251, ptr %radio_tx_rds_mono_stereo, align 4
  %call252 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_radio_tx, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160392, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %radio_tx_rds_art_head = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 117
  %132 = ptrtoint ptr %radio_tx_rds_art_head to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call252, ptr %radio_tx_rds_art_head, align 8
  %call253 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_radio_tx, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160393, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %radio_tx_rds_compressed = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 118
  %133 = ptrtoint ptr %radio_tx_rds_compressed to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call253, ptr %radio_tx_rds_compressed, align 4
  %call254 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_radio_tx, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160394, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %radio_tx_rds_dyn_pty = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 119
  %134 = ptrtoint ptr %radio_tx_rds_dyn_pty to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call254, ptr %radio_tx_rds_dyn_pty, align 8
  %call255 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_radio_tx, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160395, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %radio_tx_rds_ta = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 120
  %135 = ptrtoint ptr %radio_tx_rds_ta to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call255, ptr %radio_tx_rds_ta, align 4
  %call256 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_radio_tx, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160396, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %radio_tx_rds_tp = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 121
  %136 = ptrtoint ptr %radio_tx_rds_tp to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call256, ptr %radio_tx_rds_tp, align 8
  %call257 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl_radio_tx, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160397, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %radio_tx_rds_ms = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 122
  %137 = ptrtoint ptr %radio_tx_rds_ms to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call257, ptr %radio_tx_rds_ms, align 4
  br label %if.end258

if.end258:                                        ; preds = %if.end250, %if.end231.if.end258_crit_edge
  %has_sdr_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 71
  %138 = ptrtoint ptr %has_sdr_cap to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %has_sdr_cap, align 8, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool259.not = icmp eq i8 %139, 0
  br i1 %tobool259.not, label %if.end258.if.end262_crit_edge, label %if.then260

if.end258.if.end262_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end262

if.then260:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #8
  %call261 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_sdr_cap, ptr noundef nonnull @vivid_ctrl_sdr_cap_fm_deviation, ptr noundef null) #6
  br label %if.end262

if.end262:                                        ; preds = %if.then260, %if.end258.if.end262_crit_edge
  %has_meta_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 73
  %140 = ptrtoint ptr %has_meta_cap to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %has_meta_cap, align 2, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool263.not = icmp eq i8 %141, 0
  br i1 %tobool263.not, label %if.end262.if.end267_crit_edge, label %if.then264

if.end262.if.end267_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end267

if.then264:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #8
  %call265 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_meta_cap, ptr noundef nonnull @vivid_ctrl_meta_has_pts, ptr noundef null) #6
  %call266 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl_meta_cap, ptr noundef nonnull @vivid_ctrl_meta_has_src_clk, ptr noundef null) #6
  br label %if.end267

if.end267:                                        ; preds = %if.then264, %if.end262.if.end267_crit_edge
  %error = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 11, i32 9
  %142 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool268.not = icmp eq i32 %143, 0
  br i1 %tobool268.not, label %if.end271, label %if.end267.cleanup_crit_edge

if.end267.cleanup_crit_edge:                      ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end271:                                        ; preds = %if.end267
  %error272 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 12, i32 9
  %144 = ptrtoint ptr %error272 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %error272, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool273.not = icmp eq i32 %145, 0
  br i1 %tobool273.not, label %if.end276, label %if.end271.cleanup_crit_edge

if.end271.cleanup_crit_edge:                      ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end276:                                        ; preds = %if.end271
  %error277 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 13, i32 9
  %146 = ptrtoint ptr %error277 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %error277, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool278.not = icmp eq i32 %147, 0
  br i1 %tobool278.not, label %if.end281, label %if.end276.cleanup_crit_edge

if.end276.cleanup_crit_edge:                      ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end281:                                        ; preds = %if.end276
  %error282 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 14, i32 9
  %148 = ptrtoint ptr %error282 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %error282, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool283.not = icmp eq i32 %149, 0
  br i1 %tobool283.not, label %if.end286, label %if.end281.cleanup_crit_edge

if.end281.cleanup_crit_edge:                      ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end286:                                        ; preds = %if.end281
  %error287 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 31, i32 9
  %150 = ptrtoint ptr %error287 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %error287, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool288.not = icmp eq i32 %151, 0
  br i1 %tobool288.not, label %if.end291, label %if.end286.cleanup_crit_edge

if.end286.cleanup_crit_edge:                      ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end291:                                        ; preds = %if.end286
  %error292 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 16, i32 9
  %152 = ptrtoint ptr %error292 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %error292, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool293.not = icmp eq i32 %153, 0
  br i1 %tobool293.not, label %if.end296, label %if.end291.cleanup_crit_edge

if.end291.cleanup_crit_edge:                      ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end296:                                        ; preds = %if.end291
  %154 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 82
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 8
  %tobool298.not = icmp eq ptr %156, null
  br i1 %tobool298.not, label %if.end296.if.end301_crit_edge, label %if.then299

if.end296.if.end301_crit_edge:                    ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end301

if.then299:                                       ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #8
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %154, i8 noundef zeroext 0, i1 noundef zeroext true) #6
  br label %if.end301

if.end301:                                        ; preds = %if.then299, %if.end296.if.end301_crit_edge
  %157 = ptrtoint ptr %has_vid_cap to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %has_vid_cap, align 2, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool303.not = icmp eq i8 %158, 0
  br i1 %tobool303.not, label %if.end301.if.end317_crit_edge, label %if.then304

if.end301.if.end317_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end317

if.then304:                                       ; preds = %if.end301
  %call305 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_vid_cap, ptr noundef %ctrl_hdl_user_gen, ptr noundef null, i1 noundef zeroext false) #6
  %call306 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_vid_cap, ptr noundef %ctrl_hdl_user_vid, ptr noundef null, i1 noundef zeroext false) #6
  %call307 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_vid_cap, ptr noundef %ctrl_hdl_user_aud, ptr noundef null, i1 noundef zeroext false) #6
  %call308 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_vid_cap, ptr noundef %ctrl_hdl_streaming, ptr noundef null, i1 noundef zeroext false) #6
  %call309 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_vid_cap, ptr noundef %ctrl_hdl_sdtv_cap, ptr noundef null, i1 noundef zeroext false) #6
  %call310 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_vid_cap, ptr noundef %ctrl_hdl_loop_cap, ptr noundef null, i1 noundef zeroext false) #6
  %call311 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_vid_cap, ptr noundef %ctrl_hdl_fb, ptr noundef null, i1 noundef zeroext false) #6
  %error312 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 19, i32 9
  %159 = ptrtoint ptr %error312 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %error312, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool313.not = icmp eq i32 %160, 0
  br i1 %tobool313.not, label %if.end316, label %if.then304.cleanup_crit_edge

if.then304.cleanup_crit_edge:                     ; preds = %if.then304
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end316:                                        ; preds = %if.then304
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_handler = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 18, i32 9
  %161 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %ctrl_hdl_vid_cap, ptr %ctrl_handler, align 4
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end301.if.end317_crit_edge
  %162 = ptrtoint ptr %has_vid_out to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %has_vid_out, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool319.not = icmp eq i8 %163, 0
  br i1 %tobool319.not, label %if.end317.if.end331_crit_edge, label %if.then320

if.end317.if.end331_crit_edge:                    ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end331

if.then320:                                       ; preds = %if.end317
  %call321 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_vid_out, ptr noundef %ctrl_hdl_user_gen, ptr noundef null, i1 noundef zeroext false) #6
  %call322 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_vid_out, ptr noundef %ctrl_hdl_user_aud, ptr noundef null, i1 noundef zeroext false) #6
  %call323 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_vid_out, ptr noundef %ctrl_hdl_streaming, ptr noundef null, i1 noundef zeroext false) #6
  %call324 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_vid_out, ptr noundef %ctrl_hdl_fb, ptr noundef null, i1 noundef zeroext false) #6
  %error325 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 21, i32 9
  %164 = ptrtoint ptr %error325 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %error325, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool326.not = icmp eq i32 %165, 0
  br i1 %tobool326.not, label %if.end329, label %if.then320.cleanup_crit_edge

if.then320.cleanup_crit_edge:                     ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end329:                                        ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_handler330 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 20, i32 9
  %166 = ptrtoint ptr %ctrl_handler330 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %ctrl_hdl_vid_out, ptr %ctrl_handler330, align 4
  br label %if.end331

if.end331:                                        ; preds = %if.end329, %if.end317.if.end331_crit_edge
  %has_vbi_cap332 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 63
  %167 = ptrtoint ptr %has_vbi_cap332 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %has_vbi_cap332, align 8, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool333.not = icmp eq i8 %168, 0
  br i1 %tobool333.not, label %if.end331.if.end345_crit_edge, label %if.then334

if.end331.if.end345_crit_edge:                    ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end345

if.then334:                                       ; preds = %if.end331
  %call335 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_vbi_cap, ptr noundef %ctrl_hdl_user_gen, ptr noundef null, i1 noundef zeroext false) #6
  %call336 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_vbi_cap, ptr noundef %ctrl_hdl_streaming, ptr noundef null, i1 noundef zeroext false) #6
  %call337 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_vbi_cap, ptr noundef %ctrl_hdl_sdtv_cap, ptr noundef null, i1 noundef zeroext false) #6
  %call338 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_vbi_cap, ptr noundef %ctrl_hdl_loop_cap, ptr noundef null, i1 noundef zeroext false) #6
  %error339 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 23, i32 9
  %169 = ptrtoint ptr %error339 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %error339, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool340.not = icmp eq i32 %170, 0
  br i1 %tobool340.not, label %if.end343, label %if.then334.cleanup_crit_edge

if.then334.cleanup_crit_edge:                     ; preds = %if.then334
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end343:                                        ; preds = %if.then334
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_handler344 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 22, i32 9
  %171 = ptrtoint ptr %ctrl_handler344 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %ctrl_hdl_vbi_cap, ptr %ctrl_handler344, align 4
  br label %if.end345

if.end345:                                        ; preds = %if.end343, %if.end331.if.end345_crit_edge
  %has_vbi_out346 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 66
  %172 = ptrtoint ptr %has_vbi_out346 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %has_vbi_out346, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool347.not = icmp eq i8 %173, 0
  br i1 %tobool347.not, label %if.end345.if.end357_crit_edge, label %if.then348

if.end345.if.end357_crit_edge:                    ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end357

if.then348:                                       ; preds = %if.end345
  %call349 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_vbi_out, ptr noundef %ctrl_hdl_user_gen, ptr noundef null, i1 noundef zeroext false) #6
  %call350 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_vbi_out, ptr noundef %ctrl_hdl_streaming, ptr noundef null, i1 noundef zeroext false) #6
  %error351 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 25, i32 9
  %174 = ptrtoint ptr %error351 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %error351, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool352.not = icmp eq i32 %175, 0
  br i1 %tobool352.not, label %if.end355, label %if.then348.cleanup_crit_edge

if.then348.cleanup_crit_edge:                     ; preds = %if.then348
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end355:                                        ; preds = %if.then348
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_handler356 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 24, i32 9
  %176 = ptrtoint ptr %ctrl_handler356 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %ctrl_hdl_vbi_out, ptr %ctrl_handler356, align 4
  br label %if.end357

if.end357:                                        ; preds = %if.end355, %if.end345.if.end357_crit_edge
  %177 = ptrtoint ptr %has_radio_rx to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %has_radio_rx, align 2, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool359.not = icmp eq i8 %178, 0
  br i1 %tobool359.not, label %if.end357.if.end369_crit_edge, label %if.then360

if.end357.if.end369_crit_edge:                    ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end369

if.then360:                                       ; preds = %if.end357
  %call361 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_radio_rx, ptr noundef %ctrl_hdl_user_gen, ptr noundef null, i1 noundef zeroext false) #6
  %call362 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_radio_rx, ptr noundef %ctrl_hdl_user_aud, ptr noundef null, i1 noundef zeroext false) #6
  %error363 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 27, i32 9
  %179 = ptrtoint ptr %error363 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %error363, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool364.not = icmp eq i32 %180, 0
  br i1 %tobool364.not, label %if.end367, label %if.then360.cleanup_crit_edge

if.then360.cleanup_crit_edge:                     ; preds = %if.then360
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end367:                                        ; preds = %if.then360
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_handler368 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 26, i32 9
  %181 = ptrtoint ptr %ctrl_handler368 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %ctrl_hdl_radio_rx, ptr %ctrl_handler368, align 4
  br label %if.end369

if.end369:                                        ; preds = %if.end367, %if.end357.if.end369_crit_edge
  %182 = ptrtoint ptr %has_radio_tx to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %has_radio_tx, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool371.not = icmp eq i8 %183, 0
  br i1 %tobool371.not, label %if.end369.if.end381_crit_edge, label %if.then372

if.end369.if.end381_crit_edge:                    ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end381

if.then372:                                       ; preds = %if.end369
  %call373 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_radio_tx, ptr noundef %ctrl_hdl_user_gen, ptr noundef null, i1 noundef zeroext false) #6
  %call374 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_radio_tx, ptr noundef %ctrl_hdl_user_aud, ptr noundef null, i1 noundef zeroext false) #6
  %error375 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 29, i32 9
  %184 = ptrtoint ptr %error375 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %error375, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool376.not = icmp eq i32 %185, 0
  br i1 %tobool376.not, label %if.end379, label %if.then372.cleanup_crit_edge

if.then372.cleanup_crit_edge:                     ; preds = %if.then372
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end379:                                        ; preds = %if.then372
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_handler380 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 28, i32 9
  %186 = ptrtoint ptr %ctrl_handler380 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %ctrl_hdl_radio_tx, ptr %ctrl_handler380, align 4
  br label %if.end381

if.end381:                                        ; preds = %if.end379, %if.end369.if.end381_crit_edge
  %187 = ptrtoint ptr %has_sdr_cap to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %has_sdr_cap, align 8, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool383.not = icmp eq i8 %188, 0
  br i1 %tobool383.not, label %if.end381.if.end393_crit_edge, label %if.then384

if.end381.if.end393_crit_edge:                    ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end393

if.then384:                                       ; preds = %if.end381
  %call385 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_sdr_cap, ptr noundef %ctrl_hdl_user_gen, ptr noundef null, i1 noundef zeroext false) #6
  %call386 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_sdr_cap, ptr noundef %ctrl_hdl_streaming, ptr noundef null, i1 noundef zeroext false) #6
  %189 = ptrtoint ptr %error287 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %error287, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool388.not = icmp eq i32 %190, 0
  br i1 %tobool388.not, label %if.end391, label %if.then384.cleanup_crit_edge

if.then384.cleanup_crit_edge:                     ; preds = %if.then384
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end391:                                        ; preds = %if.then384
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_handler392 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 30, i32 9
  %191 = ptrtoint ptr %ctrl_handler392 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %ctrl_hdl_sdr_cap, ptr %ctrl_handler392, align 4
  br label %if.end393

if.end393:                                        ; preds = %if.end391, %if.end381.if.end393_crit_edge
  %192 = ptrtoint ptr %has_meta_cap to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %has_meta_cap, align 2, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool395.not = icmp eq i8 %193, 0
  br i1 %tobool395.not, label %if.end393.if.end405_crit_edge, label %if.then396

if.end393.if.end405_crit_edge:                    ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end405

if.then396:                                       ; preds = %if.end393
  %call397 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_meta_cap, ptr noundef %ctrl_hdl_user_gen, ptr noundef null, i1 noundef zeroext false) #6
  %call398 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_meta_cap, ptr noundef %ctrl_hdl_streaming, ptr noundef null, i1 noundef zeroext false) #6
  %error399 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 33, i32 9
  %194 = ptrtoint ptr %error399 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %error399, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool400.not = icmp eq i32 %195, 0
  br i1 %tobool400.not, label %if.end403, label %if.then396.cleanup_crit_edge

if.then396.cleanup_crit_edge:                     ; preds = %if.then396
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end403:                                        ; preds = %if.then396
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_handler404 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 32, i32 9
  %196 = ptrtoint ptr %ctrl_handler404 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %ctrl_hdl_meta_cap, ptr %ctrl_handler404, align 4
  br label %if.end405

if.end405:                                        ; preds = %if.end403, %if.end393.if.end405_crit_edge
  %has_meta_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 74
  %197 = ptrtoint ptr %has_meta_out to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %has_meta_out, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool406.not = icmp eq i8 %198, 0
  br i1 %tobool406.not, label %if.end405.if.end416_crit_edge, label %if.then407

if.end405.if.end416_crit_edge:                    ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end416

if.then407:                                       ; preds = %if.end405
  %call408 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_meta_out, ptr noundef %ctrl_hdl_user_gen, ptr noundef null, i1 noundef zeroext false) #6
  %call409 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_meta_out, ptr noundef %ctrl_hdl_streaming, ptr noundef null, i1 noundef zeroext false) #6
  %error410 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 35, i32 9
  %199 = ptrtoint ptr %error410 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %error410, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool411.not = icmp eq i32 %200, 0
  br i1 %tobool411.not, label %if.end414, label %if.then407.cleanup_crit_edge

if.then407.cleanup_crit_edge:                     ; preds = %if.then407
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end414:                                        ; preds = %if.then407
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_handler415 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 34, i32 9
  %201 = ptrtoint ptr %ctrl_handler415 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %ctrl_hdl_meta_out, ptr %ctrl_handler415, align 4
  br label %if.end416

if.end416:                                        ; preds = %if.end414, %if.end405.if.end416_crit_edge
  %has_touch_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 76
  %202 = ptrtoint ptr %has_touch_cap to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %has_touch_cap, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool417.not = icmp eq i8 %203, 0
  br i1 %tobool417.not, label %if.end416.cleanup_crit_edge, label %if.then418

if.end416.cleanup_crit_edge:                      ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then418:                                       ; preds = %if.end416
  %call419 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_touch_cap, ptr noundef %ctrl_hdl_user_gen, ptr noundef null, i1 noundef zeroext false) #6
  %call420 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl_touch_cap, ptr noundef %ctrl_hdl_streaming, ptr noundef null, i1 noundef zeroext false) #6
  %error421 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 37, i32 9
  %204 = ptrtoint ptr %error421 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %error421, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool422.not = icmp eq i32 %205, 0
  br i1 %tobool422.not, label %if.end425, label %if.then418.cleanup_crit_edge

if.then418.cleanup_crit_edge:                     ; preds = %if.then418
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end425:                                        ; preds = %if.then418
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_handler426 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 36, i32 9
  %206 = ptrtoint ptr %ctrl_handler426 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %ctrl_hdl_touch_cap, ptr %ctrl_handler426, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end425, %if.then418.cleanup_crit_edge, %if.end416.cleanup_crit_edge, %if.then407.cleanup_crit_edge, %if.then396.cleanup_crit_edge, %if.then384.cleanup_crit_edge, %if.then372.cleanup_crit_edge, %if.then360.cleanup_crit_edge, %if.then348.cleanup_crit_edge, %if.then334.cleanup_crit_edge, %if.then320.cleanup_crit_edge, %if.then304.cleanup_crit_edge, %if.end291.cleanup_crit_edge, %if.end286.cleanup_crit_edge, %if.end281.cleanup_crit_edge, %if.end276.cleanup_crit_edge, %if.end271.cleanup_crit_edge, %if.end267.cleanup_crit_edge
  %retval.0 = phi i32 [ %143, %if.end267.cleanup_crit_edge ], [ %145, %if.end271.cleanup_crit_edge ], [ %147, %if.end276.cleanup_crit_edge ], [ %149, %if.end281.cleanup_crit_edge ], [ %151, %if.end286.cleanup_crit_edge ], [ %153, %if.end291.cleanup_crit_edge ], [ %160, %if.then304.cleanup_crit_edge ], [ %165, %if.then320.cleanup_crit_edge ], [ %170, %if.then334.cleanup_crit_edge ], [ %175, %if.then348.cleanup_crit_edge ], [ %180, %if.then360.cleanup_crit_edge ], [ %185, %if.then372.cleanup_crit_edge ], [ %190, %if.then384.cleanup_crit_edge ], [ %195, %if.then396.cleanup_crit_edge ], [ %200, %if.then407.cleanup_crit_edge ], [ %205, %if.then418.cleanup_crit_edge ], [ 0, %if.end425 ], [ 0, %if.end416.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %vivid_ctrl_dv_timings) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_free_controls(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_hdl_vid_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 19
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl_vid_cap) #6
  %ctrl_hdl_vid_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 21
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl_vid_out) #6
  %ctrl_hdl_vbi_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 23
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl_vbi_cap) #6
  %ctrl_hdl_vbi_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 25
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl_vbi_out) #6
  %ctrl_hdl_radio_rx = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 27
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl_radio_rx) #6
  %ctrl_hdl_radio_tx = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 29
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl_radio_tx) #6
  %ctrl_hdl_sdr_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 31
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl_sdr_cap) #6
  %ctrl_hdl_user_gen = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 11
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl_user_gen) #6
  %ctrl_hdl_user_vid = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 12
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl_user_vid) #6
  %ctrl_hdl_user_aud = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 13
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl_user_aud) #6
  %ctrl_hdl_streaming = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 14
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl_streaming) #6
  %ctrl_hdl_sdtv_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 15
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl_sdtv_cap) #6
  %ctrl_hdl_loop_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 16
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl_loop_cap) #6
  %ctrl_hdl_fb = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 17
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl_fb) #6
  %ctrl_hdl_meta_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 33
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl_meta_cap) #6
  %ctrl_hdl_meta_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 35
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl_meta_out) #6
  %ctrl_hdl_touch_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 37
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl_touch_cap) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_vid_cap_s_ctrl(ptr noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -3640
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 15790080, label %sw.bb
    i32 15790105, label %sw.bb1
    i32 15790106, label %sw.bb4
    i32 15790107, label %sw.bb7
    i32 15790123, label %sw.bb10
    i32 15790108, label %sw.bb13
    i32 10488165, label %sw.bb16
    i32 15790109, label %sw.bb19
    i32 15790110, label %sw.bb24
    i32 15790082, label %sw.bb28
    i32 15790083, label %sw.bb31
    i32 15790081, label %sw.bb34
    i32 15790121, label %sw.bb36
    i32 15790086, label %sw.bb42
    i32 15790087, label %sw.bb46
    i32 15790100, label %sw.bb50
    i32 15790101, label %sw.bb60
    i32 15790122, label %sw.bb72
    i32 15790111, label %sw.bb76
    i32 15790112, label %sw.bb80
    i32 15790113, label %sw.bb84
    i32 15790084, label %sw.bb88
    i32 15790085, label %sw.bb92
    i32 15790102, label %sw.bb96
    i32 15790142, label %sw.bb101
    i32 15790103, label %sw.bb137
    i32 15790104, label %sw.bb143
    i32 15790120, label %sw.bb154
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  tail call void @vivid_update_quality(ptr noundef %add.ptr) #6
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %pattern1.i = getelementptr i8, ptr %1, i32 23272
  %7 = ptrtoint ptr %pattern1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pattern1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp.i = icmp eq i32 %8, %6
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %pattern1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %pattern1.i, align 4
  %recalc_colors.i = getelementptr i8, ptr %1, i32 23316
  %10 = ptrtoint ptr %recalc_colors.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %recalc_colors.i, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val3, align 4
  %arrayidx = getelementptr [9 x i32], ptr @vivid_vid_cap_s_ctrl.colorspaces, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %colorspace1.i = getelementptr i8, ptr %1, i32 22276
  %15 = ptrtoint ptr %colorspace1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %colorspace1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp.i288 = icmp eq i32 %16, %14
  br i1 %cmp.i288, label %sw.bb1.tpg_s_colorspace.exit_crit_edge, label %if.end.i290

sw.bb1.tpg_s_colorspace.exit_crit_edge:           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %tpg_s_colorspace.exit

if.end.i290:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %colorspace1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %colorspace1.i, align 4
  %recalc_colors.i289 = getelementptr i8, ptr %1, i32 23316
  %18 = ptrtoint ptr %recalc_colors.i289 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %recalc_colors.i289, align 4
  br label %tpg_s_colorspace.exit

tpg_s_colorspace.exit:                            ; preds = %if.end.i290, %sw.bb1.tpg_s_colorspace.exit_crit_edge
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 1) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 2) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 3) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 0) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %19 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val6, align 4
  %xfer_func1.i = getelementptr i8, ptr %1, i32 22280
  %21 = ptrtoint ptr %xfer_func1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xfer_func1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp.i291 = icmp eq i32 %22, %20
  br i1 %cmp.i291, label %sw.bb4.tpg_s_xfer_func.exit_crit_edge, label %if.end.i293

sw.bb4.tpg_s_xfer_func.exit_crit_edge:            ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %tpg_s_xfer_func.exit

if.end.i293:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %xfer_func1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %xfer_func1.i, align 4
  %recalc_colors.i292 = getelementptr i8, ptr %1, i32 23316
  %24 = ptrtoint ptr %recalc_colors.i292 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %recalc_colors.i292, align 4
  br label %tpg_s_xfer_func.exit

tpg_s_xfer_func.exit:                             ; preds = %if.end.i293, %sw.bb4.tpg_s_xfer_func.exit_crit_edge
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 1) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 2) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 3) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 0) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %25 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val9, align 4
  %ycbcr_enc1.i = getelementptr i8, ptr %1, i32 22284
  %27 = ptrtoint ptr %ycbcr_enc1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ycbcr_enc1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp.i294 = icmp eq i32 %28, %26
  br i1 %cmp.i294, label %sw.bb7.tpg_s_ycbcr_enc.exit_crit_edge, label %if.end.i296

sw.bb7.tpg_s_ycbcr_enc.exit_crit_edge:            ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %tpg_s_ycbcr_enc.exit

if.end.i296:                                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %ycbcr_enc1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %ycbcr_enc1.i, align 4
  %recalc_colors.i295 = getelementptr i8, ptr %1, i32 23316
  %30 = ptrtoint ptr %recalc_colors.i295 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %recalc_colors.i295, align 4
  br label %tpg_s_ycbcr_enc.exit

tpg_s_ycbcr_enc.exit:                             ; preds = %if.end.i296, %sw.bb7.tpg_s_ycbcr_enc.exit_crit_edge
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 1) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 2) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 3) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 0) #6
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %31 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not = icmp eq i32 %32, 0
  %cond = select i1 %tobool.not, i32 128, i32 129
  %hsv_enc1.i = getelementptr i8, ptr %1, i32 22288
  %33 = ptrtoint ptr %hsv_enc1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hsv_enc1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %cond)
  %cmp.i297 = icmp eq i32 %34, %cond
  br i1 %cmp.i297, label %sw.bb10.tpg_s_hsv_enc.exit_crit_edge, label %if.end.i299

sw.bb10.tpg_s_hsv_enc.exit_crit_edge:             ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %tpg_s_hsv_enc.exit

if.end.i299:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %hsv_enc1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond, ptr %hsv_enc1.i, align 4
  %recalc_colors.i298 = getelementptr i8, ptr %1, i32 23316
  %36 = ptrtoint ptr %recalc_colors.i298 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %recalc_colors.i298, align 4
  br label %tpg_s_hsv_enc.exit

tpg_s_hsv_enc.exit:                               ; preds = %if.end.i299, %sw.bb10.tpg_s_hsv_enc.exit_crit_edge
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 1) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 2) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 3) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 0) #6
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %37 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val15, align 4
  %quantization1.i = getelementptr i8, ptr %1, i32 22304
  %39 = ptrtoint ptr %quantization1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %quantization1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %38)
  %cmp.i300 = icmp eq i32 %40, %38
  br i1 %cmp.i300, label %sw.bb13.tpg_s_quantization.exit_crit_edge, label %if.end.i302

sw.bb13.tpg_s_quantization.exit_crit_edge:        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %tpg_s_quantization.exit

if.end.i302:                                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %quantization1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %quantization1.i, align 4
  %recalc_colors.i301 = getelementptr i8, ptr %1, i32 23316
  %42 = ptrtoint ptr %recalc_colors.i301 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %recalc_colors.i301, align 4
  br label %tpg_s_quantization.exit

tpg_s_quantization.exit:                          ; preds = %if.end.i302, %sw.bb13.tpg_s_quantization.exit_crit_edge
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 1) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 2) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 3) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 0) #6
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %input.i = getelementptr i8, ptr %1, i32 16580
  %43 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %input.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %add.ptr, i32 0, i32 53, i32 %44
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %46)
  %cmp.i303 = icmp eq i8 %46, 3
  br i1 %cmp.i303, label %if.end, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb16
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %47 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val18, align 4
  %rgb_range1.i = getelementptr i8, ptr %1, i32 22320
  %49 = ptrtoint ptr %rgb_range1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rgb_range1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %48)
  %cmp.i304 = icmp eq i32 %50, %48
  br i1 %cmp.i304, label %if.end.sw.epilog_crit_edge, label %if.end.i306

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i306:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %rgb_range1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %48, ptr %rgb_range1.i, align 4
  %recalc_colors.i305 = getelementptr i8, ptr %1, i32 23316
  %52 = ptrtoint ptr %recalc_colors.i305 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %recalc_colors.i305, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %53 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool22.not = icmp eq i32 %54, 0
  %cond23 = select i1 %tobool22.not, i32 2, i32 1
  %real_rgb_range.i = getelementptr i8, ptr %1, i32 22324
  %55 = ptrtoint ptr %real_rgb_range.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %real_rgb_range.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %cond23)
  %cmp.i307 = icmp eq i32 %56, %cond23
  br i1 %cmp.i307, label %sw.bb19.sw.epilog_crit_edge, label %if.end.i309

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i309:                                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %real_rgb_range.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %cond23, ptr %real_rgb_range.i, align 4
  %recalc_colors.i308 = getelementptr i8, ptr %1, i32 23316
  %58 = ptrtoint ptr %recalc_colors.i308 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %recalc_colors.i308, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %val26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %59 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool27 = icmp ne i32 %60, 0
  %alpha_red_only.i = getelementptr i8, ptr %1, i32 22261
  %61 = ptrtoint ptr %alpha_red_only.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %alpha_red_only.i, align 1, !range !520
  %63 = zext i1 %tobool27 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %63)
  %cmp.i310 = icmp eq i8 %62, %63
  br i1 %cmp.i310, label %sw.bb24.sw.epilog_crit_edge, label %if.end.i312

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i312:                                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %alpha_red_only.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %alpha_red_only.i, align 1
  %recalc_colors.i311 = getelementptr i8, ptr %1, i32 23316
  %65 = ptrtoint ptr %recalc_colors.i311 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %recalc_colors.i311, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tpg29 = getelementptr i8, ptr %1, i32 22164
  %val30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %66 = ptrtoint ptr %val30 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val30, align 4
  %mv_hor_mode1.i = getelementptr i8, ptr %1, i32 23292
  %68 = ptrtoint ptr %mv_hor_mode1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %mv_hor_mode1.i, align 4
  tail call void @tpg_update_mv_step(ptr noundef %tpg29) #6
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tpg32 = getelementptr i8, ptr %1, i32 22164
  %val33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %69 = ptrtoint ptr %val33 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val33, align 4
  %mv_vert_mode1.i = getelementptr i8, ptr %1, i32 23304
  %71 = ptrtoint ptr %mv_vert_mode1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %mv_vert_mode1.i, align 4
  tail call void @tpg_update_mv_step(ptr noundef %tpg32) #6
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val35 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %72 = ptrtoint ptr %val35 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val35, align 4
  %osd_mode = getelementptr i8, ptr %1, i32 14576
  %74 = ptrtoint ptr %osd_mode to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %osd_mode, align 8
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  %val38 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %75 = ptrtoint ptr %val38 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %val38, align 4
  %perc_fill1.i = getelementptr i8, ptr %1, i32 23280
  %77 = ptrtoint ptr %perc_fill1.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %perc_fill1.i, align 4
  %must_blank = getelementptr i8, ptr %1, i32 23556
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb36
  %i.0329 = phi i32 [ 0, %sw.bb36 ], [ %inc, %for.body.for.body_crit_edge ]
  %78 = ptrtoint ptr %val38 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %79)
  %cmp40 = icmp slt i32 %79, 100
  %arrayidx41 = getelementptr [32 x i8], ptr %must_blank, i32 0, i32 %i.0329
  %frombool = zext i1 %cmp40 to i8
  %80 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %frombool, ptr %arrayidx41, align 1
  %inc = add nuw nsw i32 %i.0329, 1
  %exitcond330.not = icmp eq i32 %inc, 32
  br i1 %exitcond330.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val44 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %81 = ptrtoint ptr %val44 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %val44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool45 = icmp ne i32 %82, 0
  %frombool.i = zext i1 %tobool45 to i8
  %insert_sav1.i = getelementptr i8, ptr %1, i32 23287
  %83 = ptrtoint ptr %insert_sav1.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %frombool.i, ptr %insert_sav1.i, align 1
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val48 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %84 = ptrtoint ptr %val48 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %val48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool49 = icmp ne i32 %85, 0
  %frombool.i313 = zext i1 %tobool49 to i8
  %insert_eav1.i = getelementptr i8, ptr %1, i32 23288
  %86 = ptrtoint ptr %insert_eav1.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %frombool.i313, ptr %insert_eav1.i, align 4
  br label %sw.epilog

sw.bb50:                                          ; preds = %entry
  %val51 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %87 = ptrtoint ptr %val51 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %val51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool52 = icmp ne i32 %88, 0
  %sensor_hflip = getelementptr i8, ptr %1, i32 14584
  %frombool53 = zext i1 %tobool52 to i8
  %89 = ptrtoint ptr %sensor_hflip to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %frombool53, ptr %sensor_hflip, align 8
  %hflip = getelementptr i8, ptr %1, i32 14586
  %90 = ptrtoint ptr %hflip to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %hflip, align 2, !range !520
  %hflip1.i = getelementptr i8, ptr %1, i32 23276
  %92 = ptrtoint ptr %hflip1.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %hflip1.i, align 4, !range !520
  %94 = xor i8 %91, %frombool53
  call void @__sanitizer_cov_trace_cmp1(i8 %93, i8 %94)
  %cmp.i314 = icmp eq i8 %93, %94
  br i1 %cmp.i314, label %sw.bb50.sw.epilog_crit_edge, label %if.end.i315

sw.bb50.sw.epilog_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i315:                                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #8
  %tpg54 = getelementptr i8, ptr %1, i32 22164
  %95 = ptrtoint ptr %hflip1.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %hflip1.i, align 4
  tail call void @tpg_update_mv_step(ptr noundef %tpg54) #6
  %recalc_lines.i = getelementptr i8, ptr %1, i32 23317
  %96 = ptrtoint ptr %recalc_lines.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %recalc_lines.i, align 1
  br label %sw.epilog

sw.bb60:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val61 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %97 = ptrtoint ptr %val61 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %val61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool62 = icmp ne i32 %98, 0
  %sensor_vflip = getelementptr i8, ptr %1, i32 14585
  %frombool63 = zext i1 %tobool62 to i8
  %99 = ptrtoint ptr %sensor_vflip to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %frombool63, ptr %sensor_vflip, align 1
  %vflip = getelementptr i8, ptr %1, i32 14587
  %100 = ptrtoint ptr %vflip to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %vflip, align 1, !range !520
  %102 = xor i8 %101, %frombool63
  %vflip1.i = getelementptr i8, ptr %1, i32 23277
  %103 = ptrtoint ptr %vflip1.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %vflip1.i, align 1
  br label %sw.epilog

sw.bb72:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val73 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %104 = ptrtoint ptr %val73 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %val73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool74 = icmp ne i32 %105, 0
  %reduced_fps = getelementptr i8, ptr %1, i32 14590
  %frombool75 = zext i1 %tobool74 to i8
  %106 = ptrtoint ptr %reduced_fps to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %frombool75, ptr %reduced_fps, align 2
  tail call void @vivid_update_format_cap(ptr noundef %add.ptr, i1 noundef zeroext true) #6
  br label %sw.epilog

sw.bb76:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val77 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %107 = ptrtoint ptr %val77 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %val77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool78 = icmp ne i32 %108, 0
  %has_crop_cap = getelementptr i8, ptr %1, i32 28301
  %frombool79 = zext i1 %tobool78 to i8
  %109 = ptrtoint ptr %has_crop_cap to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %frombool79, ptr %has_crop_cap, align 1
  tail call void @vivid_update_format_cap(ptr noundef %add.ptr, i1 noundef zeroext true) #6
  br label %sw.epilog

sw.bb80:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val81 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %110 = ptrtoint ptr %val81 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %val81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool82 = icmp ne i32 %111, 0
  %has_compose_cap = getelementptr i8, ptr %1, i32 28302
  %frombool83 = zext i1 %tobool82 to i8
  %112 = ptrtoint ptr %has_compose_cap to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %frombool83, ptr %has_compose_cap, align 2
  tail call void @vivid_update_format_cap(ptr noundef %add.ptr, i1 noundef zeroext true) #6
  br label %sw.epilog

sw.bb84:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val85 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %113 = ptrtoint ptr %val85 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %val85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool86 = icmp ne i32 %114, 0
  %has_scaler_cap = getelementptr i8, ptr %1, i32 28303
  %frombool87 = zext i1 %tobool86 to i8
  %115 = ptrtoint ptr %has_scaler_cap to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %frombool87, ptr %has_scaler_cap, align 1
  tail call void @vivid_update_format_cap(ptr noundef %add.ptr, i1 noundef zeroext true) #6
  br label %sw.epilog

sw.bb88:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val90 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %116 = ptrtoint ptr %val90 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %val90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool91 = icmp ne i32 %117, 0
  %frombool.i317 = zext i1 %tobool91 to i8
  %show_border1.i = getelementptr i8, ptr %1, i32 23285
  %118 = ptrtoint ptr %show_border1.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %frombool.i317, ptr %show_border1.i, align 1
  br label %sw.epilog

sw.bb92:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val94 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %119 = ptrtoint ptr %val94 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %val94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool95 = icmp ne i32 %120, 0
  %frombool.i318 = zext i1 %tobool95 to i8
  %show_square1.i = getelementptr i8, ptr %1, i32 23286
  %121 = ptrtoint ptr %show_square1.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %frombool.i318, ptr %show_square1.i, align 2
  br label %sw.epilog

sw.bb96:                                          ; preds = %entry
  %val97 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %122 = ptrtoint ptr %val97 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %val97, align 4
  %std_aspect_ratio = getelementptr i8, ptr %1, i32 16248
  %input = getelementptr i8, ptr %1, i32 16580
  %124 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %input, align 4
  %arrayidx98 = getelementptr [16 x i32], ptr %std_aspect_ratio, i32 0, i32 %125
  %126 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %123, ptr %arrayidx98, align 4
  %call100 = tail call i32 @vivid_get_video_aspect(ptr noundef %add.ptr) #6
  %vid_aspect1.i = getelementptr i8, ptr %1, i32 22312
  %127 = ptrtoint ptr %vid_aspect1.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %vid_aspect1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %call100)
  %cmp.i319 = icmp eq i32 %128, %call100
  br i1 %cmp.i319, label %sw.bb96.sw.epilog_crit_edge, label %if.end.i320

sw.bb96.sw.epilog_crit_edge:                      ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i320:                                      ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #8
  %129 = ptrtoint ptr %vid_aspect1.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %call100, ptr %vid_aspect1.i, align 4
  %recalc_square_border.i = getelementptr i8, ptr %1, i32 23318
  %130 = ptrtoint ptr %recalc_square_border.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %recalc_square_border.i, align 2
  br label %sw.epilog

sw.bb101:                                         ; preds = %entry
  %131 = getelementptr i8, ptr %1, i32 14384
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 8
  %val102 = getelementptr inbounds %struct.v4l2_ctrl, ptr %133, i32 0, i32 22
  %134 = ptrtoint ptr %val102 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %val102, align 4
  %dv_timings_signal_mode = getelementptr i8, ptr %1, i32 16312
  %input103 = getelementptr i8, ptr %1, i32 16580
  %136 = ptrtoint ptr %input103 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %input103, align 4
  %arrayidx104 = getelementptr [16 x i32], ptr %dv_timings_signal_mode, i32 0, i32 %137
  %138 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %135, ptr %arrayidx104, align 4
  %ctrl_dv_timings = getelementptr i8, ptr %1, i32 14388
  %139 = ptrtoint ptr %ctrl_dv_timings to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ctrl_dv_timings, align 4
  %val105 = getelementptr inbounds %struct.v4l2_ctrl, ptr %140, i32 0, i32 22
  %141 = ptrtoint ptr %val105 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %val105, align 4
  %query_dv_timings = getelementptr i8, ptr %1, i32 16452
  %143 = load i32, ptr %input103, align 4
  %arrayidx107 = getelementptr [16 x i32], ptr %query_dv_timings, i32 0, i32 %143
  %144 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %142, ptr %arrayidx107, align 4
  %power_present = getelementptr i8, ptr %1, i32 20544
  %145 = ptrtoint ptr %power_present to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %power_present, align 8
  %input_type = getelementptr i8, ptr %1, i32 14196
  br label %for.body111

for.body111:                                      ; preds = %for.inc126.for.body111_crit_edge, %sw.bb101
  %j.0328 = phi i32 [ 0, %sw.bb101 ], [ %j.1, %for.inc126.for.body111_crit_edge ]
  %i.1326 = phi i32 [ 0, %sw.bb101 ], [ %inc127, %for.inc126.for.body111_crit_edge ]
  %arrayidx112 = getelementptr [16 x i8], ptr %input_type, i32 0, i32 %i.1326
  %146 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx112, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %147)
  %cmp114 = icmp eq i8 %147, 3
  br i1 %cmp114, label %if.then116, label %for.body111.for.inc126_crit_edge

for.body111.for.inc126_crit_edge:                 ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc126

if.then116:                                       ; preds = %for.body111
  %arrayidx118 = getelementptr [16 x i32], ptr %dv_timings_signal_mode, i32 0, i32 %i.1326
  %148 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %149)
  %cmp119.not = icmp eq i32 %149, 1
  br i1 %cmp119.not, label %if.then116.if.end123_crit_edge, label %if.then121

if.then116.if.end123_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.then121:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw i32 1, %j.0328
  %150 = ptrtoint ptr %power_present to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %power_present, align 8
  %or = or i32 %151, %shl
  store i32 %or, ptr %power_present, align 8
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %if.then116.if.end123_crit_edge
  %inc124 = add i32 %j.0328, 1
  br label %for.inc126

for.inc126:                                       ; preds = %if.end123, %for.body111.for.inc126_crit_edge
  %j.1 = phi i32 [ %inc124, %if.end123 ], [ %j.0328, %for.body111.for.inc126_crit_edge ]
  %inc127 = add nuw nsw i32 %i.1326, 1
  %exitcond.not = icmp eq i32 %inc127, 16
  br i1 %exitcond.not, label %for.end128, label %for.inc126.for.body111_crit_edge

for.inc126.for.body111_crit_edge:                 ; preds = %for.inc126
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body111

for.end128:                                       ; preds = %for.inc126
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_rx_power_present = getelementptr i8, ptr %1, i32 14440
  %152 = ptrtoint ptr %ctrl_rx_power_present to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ctrl_rx_power_present, align 8
  %154 = ptrtoint ptr %power_present to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %power_present, align 8
  %call130 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %153, i32 noundef %155) #6
  %156 = ptrtoint ptr %ctrl_dv_timings to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ctrl_dv_timings, align 4
  %158 = ptrtoint ptr %input103 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %input103, align 4
  %arrayidx134 = getelementptr [16 x i32], ptr %dv_timings_signal_mode, i32 0, i32 %159
  %160 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %161)
  %cmp135 = icmp eq i32 %161, 4
  tail call void @v4l2_ctrl_activate(ptr noundef %157, i1 noundef zeroext %cmp135) #6
  tail call void @vivid_update_quality(ptr noundef %add.ptr) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 3) #6
  br label %sw.epilog

sw.bb137:                                         ; preds = %entry
  %val138 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %162 = ptrtoint ptr %val138 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %val138, align 4
  %dv_timings_aspect_ratio = getelementptr i8, ptr %1, i32 16516
  %input139 = getelementptr i8, ptr %1, i32 16580
  %164 = ptrtoint ptr %input139 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %input139, align 4
  %arrayidx140 = getelementptr [16 x i32], ptr %dv_timings_aspect_ratio, i32 0, i32 %165
  %166 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %163, ptr %arrayidx140, align 4
  %call142 = tail call i32 @vivid_get_video_aspect(ptr noundef %add.ptr) #6
  %vid_aspect1.i321 = getelementptr i8, ptr %1, i32 22312
  %167 = ptrtoint ptr %vid_aspect1.i321 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %vid_aspect1.i321, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %168, i32 %call142)
  %cmp.i322 = icmp eq i32 %168, %call142
  br i1 %cmp.i322, label %sw.bb137.sw.epilog_crit_edge, label %if.end.i324

sw.bb137.sw.epilog_crit_edge:                     ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i324:                                      ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #8
  %169 = ptrtoint ptr %vid_aspect1.i321 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %call142, ptr %vid_aspect1.i321, align 4
  %recalc_square_border.i323 = getelementptr i8, ptr %1, i32 23318
  %170 = ptrtoint ptr %recalc_square_border.i323 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 1, ptr %recalc_square_border.i323, align 2
  br label %sw.epilog

sw.bb143:                                         ; preds = %entry
  %val144 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %171 = ptrtoint ptr %val144 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %val144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool145 = icmp ne i32 %172, 0
  %tstamp_src_is_soe = getelementptr i8, ptr %1, i32 28300
  %frombool146 = zext i1 %tobool145 to i8
  %173 = ptrtoint ptr %tstamp_src_is_soe to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %frombool146, ptr %tstamp_src_is_soe, align 4
  %timestamp_flags = getelementptr i8, ptr %1, i32 23736
  %174 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %timestamp_flags, align 4
  %and = and i32 %175, -458753
  store i32 %and, ptr %timestamp_flags, align 4
  br i1 %tobool145, label %if.then149, label %sw.bb143.sw.epilog_crit_edge

sw.bb143.sw.epilog_crit_edge:                     ; preds = %sw.bb143
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then149:                                       ; preds = %sw.bb143
  call void @__sanitizer_cov_trace_pc() #8
  %or152 = or i32 %and, 65536
  %176 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %or152, ptr %timestamp_flags, align 4
  br label %sw.epilog

sw.bb154:                                         ; preds = %entry
  %val155 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %177 = ptrtoint ptr %val155 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %val155, align 4
  %edid_max_blocks = getelementptr i8, ptr %1, i32 20516
  %179 = ptrtoint ptr %edid_max_blocks to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %edid_max_blocks, align 4
  %edid_blocks = getelementptr i8, ptr %1, i32 20512
  %180 = ptrtoint ptr %edid_blocks to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %edid_blocks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %181, i32 %178)
  %cmp157 = icmp ugt i32 %181, %178
  br i1 %cmp157, label %if.then159, label %sw.bb154.sw.epilog_crit_edge

sw.bb154.sw.epilog_crit_edge:                     ; preds = %sw.bb154
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then159:                                       ; preds = %sw.bb154
  call void @__sanitizer_cov_trace_pc() #8
  %182 = ptrtoint ptr %edid_blocks to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %178, ptr %edid_blocks, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then159, %sw.bb154.sw.epilog_crit_edge, %if.then149, %sw.bb143.sw.epilog_crit_edge, %if.end.i324, %sw.bb137.sw.epilog_crit_edge, %for.end128, %if.end.i320, %sw.bb96.sw.epilog_crit_edge, %sw.bb92, %sw.bb88, %sw.bb84, %sw.bb80, %sw.bb76, %sw.bb72, %sw.bb60, %if.end.i315, %sw.bb50.sw.epilog_crit_edge, %sw.bb46, %sw.bb42, %for.body.sw.epilog_crit_edge, %sw.bb34, %sw.bb31, %sw.bb28, %if.end.i312, %sw.bb24.sw.epilog_crit_edge, %if.end.i309, %sw.bb19.sw.epilog_crit_edge, %if.end.i306, %if.end.sw.epilog_crit_edge, %sw.bb16.sw.epilog_crit_edge, %tpg_s_quantization.exit, %tpg_s_hsv_enc.exit, %tpg_s_ycbcr_enc.exit, %tpg_s_xfer_func.exit, %tpg_s_colorspace.exit, %if.end.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_update_quality(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_send_source_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_update_format_cap(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_get_video_aspect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_update_mv_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_user_gen_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 15790145, label %do.end
    i32 10025216, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  %name = getelementptr i8, ptr %1, i32 -936
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name) #9
  %disconnect_error = getelementptr i8, ptr %1, i32 18608
  %5 = ptrtoint ptr %disconnect_error to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %disconnect_error, align 8
  %has_vid_cap = getelementptr i8, ptr %1, i32 16910
  %6 = ptrtoint ptr %has_vid_cap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_vid_cap, align 2, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.end.vivid_unregister_dev.exit_crit_edge, label %if.end.i

do.end.vivid_unregister_dev.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %vivid_unregister_dev.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %vid_cap_dev = getelementptr i8, ptr %1, i32 1288
  %flags.i = getelementptr i8, ptr %1, i32 2528
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #6
  tail call void @v4l2_event_wake_all(ptr noundef %vid_cap_dev) #6
  br label %vivid_unregister_dev.exit

vivid_unregister_dev.exit:                        ; preds = %if.end.i, %do.end.vivid_unregister_dev.exit_crit_edge
  %has_vid_out = getelementptr i8, ptr %1, i32 16911
  %8 = ptrtoint ptr %has_vid_out to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_vid_out, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %vivid_unregister_dev.exit.vivid_unregister_dev.exit37_crit_edge, label %if.end.i36

vivid_unregister_dev.exit.vivid_unregister_dev.exit37_crit_edge: ; preds = %vivid_unregister_dev.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %vivid_unregister_dev.exit37

if.end.i36:                                       ; preds = %vivid_unregister_dev.exit
  call void @__sanitizer_cov_trace_pc() #8
  %vid_out_dev = getelementptr i8, ptr %1, i32 2824
  %flags.i35 = getelementptr i8, ptr %1, i32 4064
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i35) #6
  tail call void @v4l2_event_wake_all(ptr noundef %vid_out_dev) #6
  br label %vivid_unregister_dev.exit37

vivid_unregister_dev.exit37:                      ; preds = %if.end.i36, %vivid_unregister_dev.exit.vivid_unregister_dev.exit37_crit_edge
  %has_vbi_cap = getelementptr i8, ptr %1, i32 16912
  %10 = ptrtoint ptr %has_vbi_cap to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_vbi_cap, align 8, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %vivid_unregister_dev.exit37.vivid_unregister_dev.exit40_crit_edge, label %if.end.i39

vivid_unregister_dev.exit37.vivid_unregister_dev.exit40_crit_edge: ; preds = %vivid_unregister_dev.exit37
  call void @__sanitizer_cov_trace_pc() #8
  br label %vivid_unregister_dev.exit40

if.end.i39:                                       ; preds = %vivid_unregister_dev.exit37
  call void @__sanitizer_cov_trace_pc() #8
  %vbi_cap_dev = getelementptr i8, ptr %1, i32 4360
  %flags.i38 = getelementptr i8, ptr %1, i32 5600
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i38) #6
  tail call void @v4l2_event_wake_all(ptr noundef %vbi_cap_dev) #6
  br label %vivid_unregister_dev.exit40

vivid_unregister_dev.exit40:                      ; preds = %if.end.i39, %vivid_unregister_dev.exit37.vivid_unregister_dev.exit40_crit_edge
  %has_vbi_out = getelementptr i8, ptr %1, i32 16915
  %12 = ptrtoint ptr %has_vbi_out to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_vbi_out, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  br i1 %tobool4.not, label %vivid_unregister_dev.exit40.vivid_unregister_dev.exit43_crit_edge, label %if.end.i42

vivid_unregister_dev.exit40.vivid_unregister_dev.exit43_crit_edge: ; preds = %vivid_unregister_dev.exit40
  call void @__sanitizer_cov_trace_pc() #8
  br label %vivid_unregister_dev.exit43

if.end.i42:                                       ; preds = %vivid_unregister_dev.exit40
  call void @__sanitizer_cov_trace_pc() #8
  %vbi_out_dev = getelementptr i8, ptr %1, i32 5896
  %flags.i41 = getelementptr i8, ptr %1, i32 7136
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i41) #6
  tail call void @v4l2_event_wake_all(ptr noundef %vbi_out_dev) #6
  br label %vivid_unregister_dev.exit43

vivid_unregister_dev.exit43:                      ; preds = %if.end.i42, %vivid_unregister_dev.exit40.vivid_unregister_dev.exit43_crit_edge
  %has_radio_rx = getelementptr i8, ptr %1, i32 16918
  %14 = ptrtoint ptr %has_radio_rx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_radio_rx, align 2, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  br i1 %tobool5.not, label %vivid_unregister_dev.exit43.vivid_unregister_dev.exit46_crit_edge, label %if.end.i45

vivid_unregister_dev.exit43.vivid_unregister_dev.exit46_crit_edge: ; preds = %vivid_unregister_dev.exit43
  call void @__sanitizer_cov_trace_pc() #8
  br label %vivid_unregister_dev.exit46

if.end.i45:                                       ; preds = %vivid_unregister_dev.exit43
  call void @__sanitizer_cov_trace_pc() #8
  %radio_rx_dev = getelementptr i8, ptr %1, i32 7432
  %flags.i44 = getelementptr i8, ptr %1, i32 8672
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i44) #6
  tail call void @v4l2_event_wake_all(ptr noundef %radio_rx_dev) #6
  br label %vivid_unregister_dev.exit46

vivid_unregister_dev.exit46:                      ; preds = %if.end.i45, %vivid_unregister_dev.exit43.vivid_unregister_dev.exit46_crit_edge
  %has_radio_tx = getelementptr i8, ptr %1, i32 16919
  %16 = ptrtoint ptr %has_radio_tx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_radio_tx, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6.not = icmp eq i8 %17, 0
  br i1 %tobool6.not, label %vivid_unregister_dev.exit46.vivid_unregister_dev.exit49_crit_edge, label %if.end.i48

vivid_unregister_dev.exit46.vivid_unregister_dev.exit49_crit_edge: ; preds = %vivid_unregister_dev.exit46
  call void @__sanitizer_cov_trace_pc() #8
  br label %vivid_unregister_dev.exit49

if.end.i48:                                       ; preds = %vivid_unregister_dev.exit46
  call void @__sanitizer_cov_trace_pc() #8
  %radio_tx_dev = getelementptr i8, ptr %1, i32 8968
  %flags.i47 = getelementptr i8, ptr %1, i32 10208
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i47) #6
  tail call void @v4l2_event_wake_all(ptr noundef %radio_tx_dev) #6
  br label %vivid_unregister_dev.exit49

vivid_unregister_dev.exit49:                      ; preds = %if.end.i48, %vivid_unregister_dev.exit46.vivid_unregister_dev.exit49_crit_edge
  %has_sdr_cap = getelementptr i8, ptr %1, i32 16920
  %18 = ptrtoint ptr %has_sdr_cap to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_sdr_cap, align 8, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool7.not = icmp eq i8 %19, 0
  br i1 %tobool7.not, label %vivid_unregister_dev.exit49.vivid_unregister_dev.exit52_crit_edge, label %if.end.i51

vivid_unregister_dev.exit49.vivid_unregister_dev.exit52_crit_edge: ; preds = %vivid_unregister_dev.exit49
  call void @__sanitizer_cov_trace_pc() #8
  br label %vivid_unregister_dev.exit52

if.end.i51:                                       ; preds = %vivid_unregister_dev.exit49
  call void @__sanitizer_cov_trace_pc() #8
  %sdr_cap_dev = getelementptr i8, ptr %1, i32 10504
  %flags.i50 = getelementptr i8, ptr %1, i32 11744
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i50) #6
  tail call void @v4l2_event_wake_all(ptr noundef %sdr_cap_dev) #6
  br label %vivid_unregister_dev.exit52

vivid_unregister_dev.exit52:                      ; preds = %if.end.i51, %vivid_unregister_dev.exit49.vivid_unregister_dev.exit52_crit_edge
  %has_meta_cap = getelementptr i8, ptr %1, i32 16922
  %20 = ptrtoint ptr %has_meta_cap to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %has_meta_cap, align 2, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool8.not = icmp eq i8 %21, 0
  br i1 %tobool8.not, label %vivid_unregister_dev.exit52.vivid_unregister_dev.exit55_crit_edge, label %if.end.i54

vivid_unregister_dev.exit52.vivid_unregister_dev.exit55_crit_edge: ; preds = %vivid_unregister_dev.exit52
  call void @__sanitizer_cov_trace_pc() #8
  br label %vivid_unregister_dev.exit55

if.end.i54:                                       ; preds = %vivid_unregister_dev.exit52
  call void @__sanitizer_cov_trace_pc() #8
  %meta_cap_dev = getelementptr i8, ptr %1, i32 12040
  %flags.i53 = getelementptr i8, ptr %1, i32 13280
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i53) #6
  tail call void @v4l2_event_wake_all(ptr noundef %meta_cap_dev) #6
  br label %vivid_unregister_dev.exit55

vivid_unregister_dev.exit55:                      ; preds = %if.end.i54, %vivid_unregister_dev.exit52.vivid_unregister_dev.exit55_crit_edge
  %has_meta_out = getelementptr i8, ptr %1, i32 16923
  %22 = ptrtoint ptr %has_meta_out to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_meta_out, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool9.not = icmp eq i8 %23, 0
  br i1 %tobool9.not, label %vivid_unregister_dev.exit55.vivid_unregister_dev.exit58_crit_edge, label %if.end.i57

vivid_unregister_dev.exit55.vivid_unregister_dev.exit58_crit_edge: ; preds = %vivid_unregister_dev.exit55
  call void @__sanitizer_cov_trace_pc() #8
  br label %vivid_unregister_dev.exit58

if.end.i57:                                       ; preds = %vivid_unregister_dev.exit55
  call void @__sanitizer_cov_trace_pc() #8
  %meta_out_dev = getelementptr i8, ptr %1, i32 13576
  %flags.i56 = getelementptr i8, ptr %1, i32 14816
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i56) #6
  tail call void @v4l2_event_wake_all(ptr noundef %meta_out_dev) #6
  br label %vivid_unregister_dev.exit58

vivid_unregister_dev.exit58:                      ; preds = %if.end.i57, %vivid_unregister_dev.exit55.vivid_unregister_dev.exit58_crit_edge
  %has_touch_cap = getelementptr i8, ptr %1, i32 16925
  %24 = ptrtoint ptr %has_touch_cap to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %has_touch_cap, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool10.not = icmp eq i8 %25, 0
  br i1 %tobool10.not, label %vivid_unregister_dev.exit58.sw.epilog_crit_edge, label %if.end.i60

vivid_unregister_dev.exit58.sw.epilog_crit_edge:  ; preds = %vivid_unregister_dev.exit58
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i60:                                       ; preds = %vivid_unregister_dev.exit58
  call void @__sanitizer_cov_trace_pc() #8
  %touch_cap_dev = getelementptr i8, ptr %1, i32 15112
  %flags.i59 = getelementptr i8, ptr %1, i32 16352
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i59) #6
  tail call void @v4l2_event_wake_all(ptr noundef %touch_cap_dev) #6
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %button_pressed = getelementptr i8, ptr %1, i32 17220
  %26 = ptrtoint ptr %button_pressed to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 30, ptr %button_pressed, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %if.end.i60, %vivid_unregister_dev.exit58.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_wake_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_user_vid_g_volatile_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963794, i32 %1)
  %cond = icmp eq i32 %1, 9963794
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %4) #6
  %div = udiv i32 %call, 1000
  %and = and i32 %div, 255
  %gain = getelementptr i8, ptr %3, i32 16764
  %5 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gain, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_user_vid_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb5
    i32 9963778, label %sw.bb9
    i32 9963779, label %sw.bb13
    i32 9963796, label %sw.bb17
    i32 9963797, label %sw.bb26
    i32 9963817, label %sw.bb38
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %input = getelementptr i8, ptr %1, i32 19036
  %7 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %input, align 4
  %mul.neg = mul i32 %8, -128
  %sub = add i32 %mul.neg, %6
  %input_brightness = getelementptr i8, ptr %1, i32 16968
  %arrayidx = getelementptr [16 x i32], ptr %input_brightness, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %arrayidx, align 4
  %10 = load i32, ptr %input, align 4
  %arrayidx4 = getelementptr [16 x i32], ptr %input_brightness, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx4, align 4
  %conv = trunc i32 %12 to i8
  %brightness1.i = getelementptr i8, ptr %1, i32 24718
  %13 = ptrtoint ptr %brightness1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %brightness1.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %conv)
  %cmp.i = icmp eq i8 %14, %conv
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %brightness1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %brightness1.i, align 2
  %recalc_colors.i = getelementptr i8, ptr %1, i32 25772
  %16 = ptrtoint ptr %recalc_colors.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %recalc_colors.i, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val7, align 4
  %conv8 = trunc i32 %18 to i8
  %contrast1.i = getelementptr i8, ptr %1, i32 24719
  %19 = ptrtoint ptr %contrast1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %contrast1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %conv8)
  %cmp.i67 = icmp eq i8 %20, %conv8
  br i1 %cmp.i67, label %sw.bb5.sw.epilog_crit_edge, label %if.end.i69

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i69:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %contrast1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv8, ptr %contrast1.i, align 1
  %recalc_colors.i68 = getelementptr i8, ptr %1, i32 25772
  %22 = ptrtoint ptr %recalc_colors.i68 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %recalc_colors.i68, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %23 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val11, align 4
  %conv12 = trunc i32 %24 to i8
  %saturation1.i = getelementptr i8, ptr %1, i32 24720
  %25 = ptrtoint ptr %saturation1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %saturation1.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %conv12)
  %cmp.i70 = icmp eq i8 %26, %conv12
  br i1 %cmp.i70, label %sw.bb9.sw.epilog_crit_edge, label %if.end.i72

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i72:                                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %saturation1.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv12, ptr %saturation1.i, align 4
  %recalc_colors.i71 = getelementptr i8, ptr %1, i32 25772
  %28 = ptrtoint ptr %recalc_colors.i71 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %recalc_colors.i71, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val15, align 4
  %conv16 = trunc i32 %30 to i16
  %31 = tail call i16 @llvm.smax.i16(i16 %conv16, i16 -128) #6
  %32 = tail call i16 @llvm.smin.i16(i16 %31, i16 128) #6
  %hue18.i = getelementptr i8, ptr %1, i32 24722
  %33 = ptrtoint ptr %hue18.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %hue18.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %34)
  %cmp21.i = icmp eq i16 %32, %34
  br i1 %cmp21.i, label %sw.bb13.sw.epilog_crit_edge, label %if.end.i74

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i74:                                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %hue18.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %32, ptr %hue18.i, align 2
  %recalc_colors.i73 = getelementptr i8, ptr %1, i32 25772
  %36 = ptrtoint ptr %recalc_colors.i73 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %recalc_colors.i73, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %37 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool = icmp ne i32 %38, 0
  %hflip = getelementptr i8, ptr %1, i32 17042
  %frombool = zext i1 %tobool to i8
  %39 = ptrtoint ptr %hflip to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %frombool, ptr %hflip, align 2
  %sensor_hflip = getelementptr i8, ptr %1, i32 17040
  %40 = ptrtoint ptr %sensor_hflip to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sensor_hflip, align 8, !range !520
  %hflip1.i = getelementptr i8, ptr %1, i32 25732
  %42 = ptrtoint ptr %hflip1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %hflip1.i, align 4, !range !520
  %44 = xor i8 %41, %frombool
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %44)
  %cmp.i75 = icmp eq i8 %43, %44
  br i1 %cmp.i75, label %sw.bb17.sw.epilog_crit_edge, label %if.end.i76

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i76:                                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  %tpg19 = getelementptr i8, ptr %1, i32 24620
  %45 = ptrtoint ptr %hflip1.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %hflip1.i, align 4
  tail call void @tpg_update_mv_step(ptr noundef %tpg19) #6
  %recalc_lines.i = getelementptr i8, ptr %1, i32 25773
  %46 = ptrtoint ptr %recalc_lines.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %recalc_lines.i, align 1
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %47 = ptrtoint ptr %val27 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool28 = icmp ne i32 %48, 0
  %vflip = getelementptr i8, ptr %1, i32 17043
  %frombool29 = zext i1 %tobool28 to i8
  %49 = ptrtoint ptr %vflip to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %frombool29, ptr %vflip, align 1
  %sensor_vflip = getelementptr i8, ptr %1, i32 17041
  %50 = ptrtoint ptr %sensor_vflip to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %sensor_vflip, align 1, !range !520
  %52 = xor i8 %51, %frombool29
  %vflip1.i = getelementptr i8, ptr %1, i32 25733
  %53 = ptrtoint ptr %vflip1.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %vflip1.i, align 1
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  %val40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %54 = ptrtoint ptr %val40 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val40, align 4
  %conv41 = trunc i32 %55 to i8
  %alpha_component1.i = getelementptr i8, ptr %1, i32 24716
  %56 = ptrtoint ptr %alpha_component1.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %alpha_component1.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %conv41)
  %cmp.i77 = icmp eq i8 %57, %conv41
  br i1 %cmp.i77, label %sw.bb38.sw.epilog_crit_edge, label %if.end.i79

sw.bb38.sw.epilog_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i79:                                       ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %alpha_component1.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv41, ptr %alpha_component1.i, align 4
  %recalc_colors.i78 = getelementptr i8, ptr %1, i32 25772
  %59 = ptrtoint ptr %recalc_colors.i78 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %recalc_colors.i78, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i79, %sw.bb38.sw.epilog_crit_edge, %sw.bb26, %if.end.i76, %sw.bb17.sw.epilog_crit_edge, %if.end.i74, %sw.bb13.sw.epilog_crit_edge, %if.end.i72, %sw.bb9.sw.epilog_crit_edge, %if.end.i69, %sw.bb5.sw.epilog_crit_edge, %if.end.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_vid_out_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -5176
  %2 = getelementptr i8, ptr %1, i32 19740
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %4, label %entry.sw.epilog_crit_edge [
    i32 15790114, label %sw.bb
    i32 15790115, label %sw.bb1
    i32 15790116, label %sw.bb5
    i32 10488068, label %sw.bb9
    i32 15790124, label %sw.bb31
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  %has_crop_out = getelementptr i8, ptr %1, i32 26768
  %frombool = zext i1 %tobool to i8
  %8 = ptrtoint ptr %has_crop_out to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %has_crop_out, align 8
  tail call void @vivid_update_format_out(ptr noundef %add.ptr) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3 = icmp ne i32 %10, 0
  %has_compose_out = getelementptr i8, ptr %1, i32 26769
  %frombool4 = zext i1 %tobool3 to i8
  %11 = ptrtoint ptr %has_compose_out to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool4, ptr %has_compose_out, align 1
  tail call void @vivid_update_format_out(ptr noundef %add.ptr) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7 = icmp ne i32 %13, 0
  %has_scaler_out = getelementptr i8, ptr %1, i32 26770
  %frombool8 = zext i1 %tobool7 to i8
  %14 = ptrtoint ptr %has_scaler_out to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool8, ptr %has_scaler_out, align 2
  tail call void @vivid_update_format_out(ptr noundef %add.ptr) #6
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  %dvi_d_out = getelementptr i8, ptr %1, i32 19921
  %frombool11 = zext i1 %cmp to i8
  %17 = ptrtoint ptr %dvi_d_out to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool11, ptr %dvi_d_out, align 1
  %output.i = getelementptr i8, ptr %1, i32 19724
  %18 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %output.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %add.ptr, i32 0, i32 57, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp.i = icmp eq i8 %21, 3
  br i1 %cmp.i, label %if.end, label %sw.bb9.sw.epilog_crit_edge

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb9
  br i1 %cmp, label %if.end.if.end27_crit_edge, label %land.lhs.true

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr i8, ptr %1, i32 19804
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %flags, align 1
  %and = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end27_crit_edge, label %if.then15

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then15:                                        ; preds = %land.lhs.true
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %25)
  %cmp16 = icmp eq i32 %25, 720
  br i1 %cmp16, label %land.lhs.true17, label %if.then15.if.else_crit_edge

if.then15.if.else_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true17:                                  ; preds = %if.then15
  %height = getelementptr i8, ptr %1, i32 19744
  %26 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %height, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 577, i32 %27)
  %cmp18 = icmp ult i32 %27, 577
  br i1 %cmp18, label %land.lhs.true17.if.end27_crit_edge, label %land.lhs.true17.if.else_crit_edge

land.lhs.true17.if.else_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true17.if.end27_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.else:                                          ; preds = %land.lhs.true17.if.else_crit_edge, %if.then15.if.else_crit_edge
  br label %if.end27

if.end27:                                         ; preds = %if.else, %land.lhs.true17.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %.sink141 = phi i32 [ 3, %if.else ], [ 1, %land.lhs.true17.if.end27_crit_edge ], [ 8, %land.lhs.true.if.end27_crit_edge ], [ 8, %if.end.if.end27_crit_edge ]
  %cond.sink = phi i32 [ 0, %if.else ], [ 0, %land.lhs.true17.if.end27_crit_edge ], [ 0, %land.lhs.true.if.end27_crit_edge ], [ 2, %if.end.if.end27_crit_edge ]
  %colorspace_out23 = getelementptr i8, ptr %1, i32 19868
  %28 = ptrtoint ptr %colorspace_out23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink141, ptr %colorspace_out23, align 4
  %quantization_out26 = getelementptr i8, ptr %1, i32 19880
  %29 = ptrtoint ptr %quantization_out26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond.sink, ptr %quantization_out26, align 8
  %loop_video = getelementptr i8, ptr %1, i32 13053
  %30 = ptrtoint ptr %loop_video to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %loop_video, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool28.not = icmp eq i8 %31, 0
  br i1 %tobool28.not, label %if.end27.sw.epilog_crit_edge, label %if.then29

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 3) #6
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  %output_type = getelementptr i8, ptr %1, i32 12700
  %output = getelementptr i8, ptr %1, i32 19724
  %32 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %output, align 4
  %arrayidx = getelementptr [16 x i8], ptr %output_type, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %35)
  %cmp32.not = icmp eq i8 %35, 3
  br i1 %cmp32.not, label %if.end35, label %sw.bb31.sw.epilog_crit_edge

sw.bb31.sw.epilog_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end35:                                         ; preds = %sw.bb31
  %val36 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %36 = ptrtoint ptr %val36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool37 = icmp ne i32 %37, 0
  %display_present38 = getelementptr i8, ptr %1, i32 19936
  %arrayidx40 = getelementptr [16 x i8], ptr %display_present38, i32 0, i32 %33
  %frombool41 = zext i1 %tobool37 to i8
  %38 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool41, ptr %arrayidx40, align 1
  %num_outputs = getelementptr i8, ptr %1, i32 12692
  %39 = ptrtoint ptr %num_outputs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_outputs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp42136.not = icmp eq i32 %40, 0
  br i1 %cmp42136.not, label %if.end35.for.end_crit_edge, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  br label %for.body

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end35.for.body_crit_edge
  %j.0140 = phi i32 [ %j.1, %for.inc.for.body_crit_edge ], [ 0, %if.end35.for.body_crit_edge ]
  %i.0138 = phi i32 [ %inc55, %for.inc.for.body_crit_edge ], [ 0, %if.end35.for.body_crit_edge ]
  %display_present.0137 = phi i32 [ %display_present.1, %for.inc.for.body_crit_edge ], [ 0, %if.end35.for.body_crit_edge ]
  %arrayidx45 = getelementptr [16 x i8], ptr %output_type, i32 0, i32 %i.0138
  %41 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %42)
  %cmp47 = icmp eq i8 %42, 3
  br i1 %cmp47, label %if.then49, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then49:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx51 = getelementptr [16 x i8], ptr %display_present38, i32 0, i32 %i.0138
  %43 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx51, align 1, !range !520
  %45 = zext i8 %44 to i32
  %inc = add i32 %j.0140, 1
  %shl = shl nuw i32 %45, %j.0140
  %or = or i32 %shl, %display_present.0137
  br label %for.inc

for.inc:                                          ; preds = %if.then49, %for.body.for.inc_crit_edge
  %display_present.1 = phi i32 [ %or, %if.then49 ], [ %display_present.0137, %for.body.for.inc_crit_edge ]
  %j.1 = phi i32 [ %inc, %if.then49 ], [ %j.0140, %for.body.for.inc_crit_edge ]
  %inc55 = add nuw i32 %i.0138, 1
  %exitcond.not = icmp eq i32 %inc55, %40
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end35.for.end_crit_edge
  %display_present.0.lcssa = phi i32 [ 0, %if.end35.for.end_crit_edge ], [ %display_present.1, %for.inc.for.end_crit_edge ]
  %ctrl_tx_rxsense = getelementptr i8, ptr %1, i32 12900
  %46 = ptrtoint ptr %ctrl_tx_rxsense to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctrl_tx_rxsense, align 4
  %call56 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %47, i32 noundef %display_present.0.lcssa) #6
  %edid_blocks = getelementptr i8, ptr %1, i32 18976
  %48 = ptrtoint ptr %edid_blocks to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %edid_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool57.not = icmp eq i32 %49, 0
  br i1 %tobool57.not, label %for.end.if.end61_crit_edge, label %if.then58

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then58:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_tx_edid_present = getelementptr i8, ptr %1, i32 12892
  %50 = ptrtoint ptr %ctrl_tx_edid_present to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctrl_tx_edid_present, align 4
  %call59 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %51, i32 noundef %display_present.0.lcssa) #6
  %ctrl_tx_hotplug = getelementptr i8, ptr %1, i32 12896
  %52 = ptrtoint ptr %ctrl_tx_hotplug to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctrl_tx_hotplug, align 8
  %call60 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %53, i32 noundef %display_present.0.lcssa) #6
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %for.end.if.end61_crit_edge
  %cec_output2bus_map = getelementptr i8, ptr %1, i32 27692
  %54 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %output, align 4
  %arrayidx63 = getelementptr [16 x i8], ptr %cec_output2bus_map, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %57 to i32
  %cec_tx_adap = getelementptr i8, ptr %1, i32 27628
  %arrayidx65 = getelementptr [16 x ptr], ptr %cec_tx_adap, i32 0, i32 %conv64
  %58 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx65, align 4
  %tobool66.not = icmp eq ptr %59, null
  br i1 %tobool66.not, label %if.end61.sw.epilog_crit_edge, label %if.end68

if.end61.sw.epilog_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end68:                                         ; preds = %if.end61
  %60 = ptrtoint ptr %val36 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool70.not = icmp eq i32 %61, 0
  br i1 %tobool70.not, label %if.end68.if.else79_crit_edge, label %land.lhs.true71

if.end68.if.else79_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else79

land.lhs.true71:                                  ; preds = %if.end68
  %62 = ptrtoint ptr %edid_blocks to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %edid_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool73.not = icmp eq i32 %63, 0
  br i1 %tobool73.not, label %land.lhs.true71.if.else79_crit_edge, label %if.then74

land.lhs.true71.if.else79_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else79

if.then74:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #8
  %phys_addr = getelementptr inbounds %struct.cec_adapter, ptr %59, i32 0, i32 18
  %64 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %phys_addr, align 2
  tail call void @cec_s_phys_addr(ptr noundef nonnull %59, i16 noundef zeroext %65, i1 noundef zeroext false) #6
  br label %sw.epilog

if.else79:                                        ; preds = %land.lhs.true71.if.else79_crit_edge, %if.end68.if.else79_crit_edge
  tail call void @cec_s_phys_addr(ptr noundef nonnull %59, i16 noundef zeroext -1, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else79, %if.then74, %if.end61.sw.epilog_crit_edge, %sw.bb31.sw.epilog_crit_edge, %if.then29, %if.end27.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge, %sw.bb5, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_update_format_out(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_streaming_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %rem = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem) #6
  %2 = ptrtoint ptr %rem to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %rem, align 8, !annotation !521
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %4, label %entry.sw.epilog_crit_edge [
    i32 15790146, label %sw.bb
    i32 15790144, label %sw.bb1
    i32 15790147, label %sw.bb2
    i32 15790148, label %sw.bb3
    i32 15790149, label %sw.bb4
    i32 15790152, label %sw.bb5
    i32 15790150, label %sw.bb6
    i32 15790118, label %sw.bb24
    i32 15790119, label %sw.bb26
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dqbuf_error = getelementptr i8, ptr %1, i32 18060
  %6 = ptrtoint ptr %dqbuf_error to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %dqbuf_error, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %perc_dropped_buffers = getelementptr i8, ptr %1, i32 18072
  %9 = ptrtoint ptr %perc_dropped_buffers to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %perc_dropped_buffers, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %queue_setup_error = getelementptr i8, ptr %1, i32 18057
  %10 = ptrtoint ptr %queue_setup_error to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %queue_setup_error, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %buf_prepare_error = getelementptr i8, ptr %1, i32 18058
  %11 = ptrtoint ptr %buf_prepare_error to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %buf_prepare_error, align 2
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %start_streaming_error = getelementptr i8, ptr %1, i32 18059
  %12 = ptrtoint ptr %start_streaming_error to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %start_streaming_error, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %req_validate_error = getelementptr i8, ptr %1, i32 18061
  %13 = ptrtoint ptr %req_validate_error to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %req_validate_error, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %start_streaming_called.i = getelementptr i8, ptr %1, i32 26220
  %14 = ptrtoint ptr %start_streaming_called.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i = load i16, ptr %start_streaming_called.i, align 4
  %15 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.i.not = icmp eq i16 %15, 0
  br i1 %tobool.i.not, label %sw.bb6.if.end_crit_edge, label %if.then

sw.bb6.if.end_crit_edge:                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %vb_vid_cap_q = getelementptr i8, ptr %1, i32 25772
  tail call void @vb2_queue_error(ptr noundef %vb_vid_cap_q) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb6.if.end_crit_edge
  %start_streaming_called.i60 = getelementptr i8, ptr %1, i32 26740
  %16 = ptrtoint ptr %start_streaming_called.i60 to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i61 = load i16, ptr %start_streaming_called.i60, align 4
  %17 = and i16 %bf.load.i61, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.i62.not = icmp eq i16 %17, 0
  br i1 %tobool.i62.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %vb_vbi_cap_q = getelementptr i8, ptr %1, i32 26292
  tail call void @vb2_queue_error(ptr noundef %vb_vbi_cap_q) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %start_streaming_called.i63 = getelementptr i8, ptr %1, i32 28576
  %18 = ptrtoint ptr %start_streaming_called.i63 to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i64 = load i16, ptr %start_streaming_called.i63, align 4
  %19 = and i16 %bf.load.i64, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.i65.not = icmp eq i16 %19, 0
  br i1 %tobool.i65.not, label %if.end11.if.end15_crit_edge, label %if.then13

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %vb_vid_out_q = getelementptr i8, ptr %1, i32 28128
  tail call void @vb2_queue_error(ptr noundef %vb_vid_out_q) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  %start_streaming_called.i66 = getelementptr i8, ptr %1, i32 29096
  %20 = ptrtoint ptr %start_streaming_called.i66 to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i67 = load i16, ptr %start_streaming_called.i66, align 4
  %21 = and i16 %bf.load.i67, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.i68.not = icmp eq i16 %21, 0
  br i1 %tobool.i68.not, label %if.end15.if.end19_crit_edge, label %if.then17

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %vb_vbi_out_q = getelementptr i8, ptr %1, i32 28648
  tail call void @vb2_queue_error(ptr noundef %vb_vbi_out_q) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %start_streaming_called.i69 = getelementptr i8, ptr %1, i32 30288
  %22 = ptrtoint ptr %start_streaming_called.i69 to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i70 = load i16, ptr %start_streaming_called.i69, align 4
  %23 = and i16 %bf.load.i70, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.i71.not = icmp eq i16 %23, 0
  br i1 %tobool.i71.not, label %if.end19.sw.epilog_crit_edge, label %if.then21

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %vb_sdr_cap_q = getelementptr i8, ptr %1, i32 29840
  tail call void @vb2_queue_error(ptr noundef %vb_sdr_cap_q) #6
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %24 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool = icmp ne i32 %25, 0
  %seq_wrap = getelementptr i8, ptr %1, i32 18062
  %frombool = zext i1 %tobool to i8
  %26 = ptrtoint ptr %seq_wrap to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool, ptr %seq_wrap, align 2
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %val27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %27 = ptrtoint ptr %val27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool28 = icmp ne i32 %28, 0
  %time_wrap = getelementptr i8, ptr %1, i32 18063
  %frombool29 = zext i1 %tobool28 to i8
  %29 = ptrtoint ptr %time_wrap to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool29, ptr %time_wrap, align 1
  %30 = ptrtoint ptr %val27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp = icmp eq i32 %31, 0
  br i1 %cmp, label %if.then31, label %if.end32

if.then31:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  %time_wrap_offset = getelementptr i8, ptr %1, i32 18064
  %32 = ptrtoint ptr %time_wrap_offset to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %time_wrap_offset, align 8
  br label %sw.epilog

if.end32:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i64 @ktime_get() #6
  %call34 = call i64 @div64_u64_rem(i64 noundef %call.i, i64 noundef 4294967296000000000, ptr noundef nonnull %rem) #6
  %33 = ptrtoint ptr %rem to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %rem, align 8
  %sub = sub i64 4294967280000000000, %34
  %time_wrap_offset35 = getelementptr i8, ptr %1, i32 18064
  %35 = ptrtoint ptr %time_wrap_offset35 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %sub, ptr %time_wrap_offset35, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end32, %if.then31, %sw.bb24, %if.then21, %if.end19.sw.epilog_crit_edge, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_sdtv_cap_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1736
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15790140, i32 %3)
  %cond = icmp eq i32 %3, 15790140
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %4 = getelementptr i8, ptr %1, i32 16280
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %std_signal_mode = getelementptr i8, ptr %1, i32 17892
  %input = getelementptr i8, ptr %1, i32 18484
  %9 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %input, align 4
  %arrayidx = getelementptr [16 x i32], ptr %std_signal_mode, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %arrayidx, align 4
  %12 = load i32, ptr %input, align 4
  %arrayidx3 = getelementptr [16 x i32], ptr %std_signal_mode, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp = icmp eq i32 %14, 4
  br i1 %cmp, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_standard = getelementptr i8, ptr %1, i32 16284
  %15 = ptrtoint ptr %ctrl_standard to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl_standard, align 4
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 22
  %17 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val4, align 4
  %arrayidx5 = getelementptr [0 x i64], ptr @vivid_standard, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx5, align 8
  %query_std = getelementptr i8, ptr %1, i32 18024
  %arrayidx7 = getelementptr [16 x i64], ptr %query_std, i32 0, i32 %12
  %21 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %arrayidx7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %ctrl_standard8 = getelementptr i8, ptr %1, i32 16284
  %22 = ptrtoint ptr %ctrl_standard8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl_standard8, align 4
  %24 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %input, align 4
  %arrayidx11 = getelementptr [16 x i32], ptr %std_signal_mode, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp12 = icmp eq i32 %27, 4
  tail call void @v4l2_ctrl_activate(ptr noundef %23, i1 noundef zeroext %cmp12) #6
  tail call void @vivid_update_quality(ptr noundef %add.ptr) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 1) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 2) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vivid_vbi_cap_s_ctrl(ptr nocapture noundef readonly %ctrl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15790088, i32 %1)
  %cond = icmp eq i32 %1, 15790088
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool = icmp ne i32 %5, 0
  %vbi_cap_interlaced = getelementptr i8, ptr %3, i32 11516
  %frombool = zext i1 %tobool to i8
  %6 = ptrtoint ptr %vbi_cap_interlaced to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %vbi_cap_interlaced, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_loop_cap_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15790117, i32 %1)
  %cond = icmp eq i32 %1, 15790117
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -1920
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool = icmp ne i32 %5, 0
  %loop_video = getelementptr i8, ptr %3, i32 16309
  %frombool = zext i1 %tobool to i8
  %6 = ptrtoint ptr %loop_video to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %loop_video, align 1
  tail call void @vivid_update_quality(ptr noundef %add.ptr) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 2) #6
  tail call void @vivid_send_source_change(ptr noundef %add.ptr, i32 noundef 3) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_fb_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15790151, i32 %1)
  %cond = icmp eq i32 %1, 15790151
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -2104
  tail call void @vivid_clear_fb(ptr noundef %add.ptr) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_clear_fb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_radio_rx_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 15790170, label %sw.bb
    i32 15790171, label %sw.bb1
    i32 15790172, label %sw.bb3
    i32 15790173, label %sw.bb7
    i32 10553602, label %sw.bb38
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %radio_rx_hw_seek_mode = getelementptr i8, ptr %1, i32 22964
  %7 = ptrtoint ptr %radio_rx_hw_seek_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %radio_rx_hw_seek_mode, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool = icmp ne i32 %9, 0
  %radio_rx_hw_seek_prog_lim = getelementptr i8, ptr %1, i32 22968
  %frombool = zext i1 %tobool to i8
  %10 = ptrtoint ptr %radio_rx_hw_seek_prog_lim to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %radio_rx_hw_seek_prog_lim, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5 = icmp ne i32 %12, 0
  %use_rbds = getelementptr i8, ptr %1, i32 22866
  %frombool6 = zext i1 %tobool5 to i8
  %13 = ptrtoint ptr %use_rbds to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool6, ptr %use_rbds, align 2
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9 = icmp ne i32 %15, 0
  %radio_rx_rds_controls = getelementptr i8, ptr %1, i32 22969
  %frombool10 = zext i1 %tobool9 to i8
  %16 = ptrtoint ptr %radio_rx_rds_controls to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool10, ptr %radio_rx_rds_controls, align 1
  %radio_rx_caps = getelementptr i8, ptr %1, i32 8020
  %17 = ptrtoint ptr %radio_rx_caps to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %radio_rx_caps, align 4
  %and = and i32 %18, -16777217
  store i32 %and, ptr %radio_rx_caps, align 4
  %radio_rx_rds_use_alternates = getelementptr i8, ptr %1, i32 22972
  %19 = ptrtoint ptr %radio_rx_rds_use_alternates to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %radio_rx_rds_use_alternates, align 4
  br i1 %tobool9, label %sw.bb7.if.end_crit_edge, label %if.then

sw.bb7.if.end_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %18, 16777216
  %20 = ptrtoint ptr %radio_rx_caps to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %radio_rx_caps, align 4
  %radio_rx_rds_pty = getelementptr i8, ptr %1, i32 8344
  %21 = ptrtoint ptr %radio_rx_rds_pty to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %radio_rx_rds_pty, align 8
  %call = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %22, i32 noundef 0) #6
  %radio_rx_rds_ta = getelementptr i8, ptr %1, i32 8348
  %23 = ptrtoint ptr %radio_rx_rds_ta to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %radio_rx_rds_ta, align 4
  %call14 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %24, i32 noundef 0) #6
  %radio_rx_rds_tp = getelementptr i8, ptr %1, i32 8352
  %25 = ptrtoint ptr %radio_rx_rds_tp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %radio_rx_rds_tp, align 8
  %call15 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %26, i32 noundef 0) #6
  %radio_rx_rds_ms = getelementptr i8, ptr %1, i32 8356
  %27 = ptrtoint ptr %radio_rx_rds_ms to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %radio_rx_rds_ms, align 4
  %call16 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %28, i32 noundef 0) #6
  %radio_rx_rds_psname = getelementptr i8, ptr %1, i32 8360
  %29 = ptrtoint ptr %radio_rx_rds_psname to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %radio_rx_rds_psname, align 8
  %call17 = tail call i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef %30, ptr noundef nonnull @.str.110) #6
  %radio_rx_rds_radiotext = getelementptr i8, ptr %1, i32 8364
  %31 = ptrtoint ptr %radio_rx_rds_radiotext to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %radio_rx_rds_radiotext, align 4
  %call18 = tail call i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef %32, ptr noundef nonnull @.str.110) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb7.if.end_crit_edge
  %radio_rx_rds_pty19 = getelementptr i8, ptr %1, i32 8344
  %33 = ptrtoint ptr %radio_rx_rds_pty19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %radio_rx_rds_pty19, align 8
  %35 = ptrtoint ptr %radio_rx_rds_controls to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %radio_rx_rds_controls, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool21 = icmp ne i8 %36, 0
  tail call void @v4l2_ctrl_activate(ptr noundef %34, i1 noundef zeroext %tobool21) #6
  %radio_rx_rds_psname22 = getelementptr i8, ptr %1, i32 8360
  %37 = ptrtoint ptr %radio_rx_rds_psname22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %radio_rx_rds_psname22, align 8
  %39 = ptrtoint ptr %radio_rx_rds_controls to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %radio_rx_rds_controls, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool24 = icmp ne i8 %40, 0
  tail call void @v4l2_ctrl_activate(ptr noundef %38, i1 noundef zeroext %tobool24) #6
  %radio_rx_rds_radiotext25 = getelementptr i8, ptr %1, i32 8364
  %41 = ptrtoint ptr %radio_rx_rds_radiotext25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %radio_rx_rds_radiotext25, align 4
  %43 = ptrtoint ptr %radio_rx_rds_controls to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %radio_rx_rds_controls, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool27 = icmp ne i8 %44, 0
  tail call void @v4l2_ctrl_activate(ptr noundef %42, i1 noundef zeroext %tobool27) #6
  %radio_rx_rds_ta28 = getelementptr i8, ptr %1, i32 8348
  %45 = ptrtoint ptr %radio_rx_rds_ta28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %radio_rx_rds_ta28, align 4
  %47 = ptrtoint ptr %radio_rx_rds_controls to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %radio_rx_rds_controls, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool30 = icmp ne i8 %48, 0
  tail call void @v4l2_ctrl_activate(ptr noundef %46, i1 noundef zeroext %tobool30) #6
  %radio_rx_rds_tp31 = getelementptr i8, ptr %1, i32 8352
  %49 = ptrtoint ptr %radio_rx_rds_tp31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %radio_rx_rds_tp31, align 8
  %51 = ptrtoint ptr %radio_rx_rds_controls to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %radio_rx_rds_controls, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool33 = icmp ne i8 %52, 0
  tail call void @v4l2_ctrl_activate(ptr noundef %50, i1 noundef zeroext %tobool33) #6
  %radio_rx_rds_ms34 = getelementptr i8, ptr %1, i32 8356
  %53 = ptrtoint ptr %radio_rx_rds_ms34 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %radio_rx_rds_ms34, align 4
  %55 = ptrtoint ptr %radio_rx_rds_controls to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %radio_rx_rds_controls, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool36 = icmp ne i8 %56, 0
  tail call void @v4l2_ctrl_activate(ptr noundef %54, i1 noundef zeroext %tobool36) #6
  %57 = ptrtoint ptr %radio_rx_caps to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %radio_rx_caps, align 4
  %device_caps = getelementptr i8, ptr %1, i32 -1120
  %59 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %device_caps, align 8
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val39 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %60 = ptrtoint ptr %val39 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool40 = icmp ne i32 %61, 0
  %radio_rx_rds_enabled = getelementptr i8, ptr %1, i32 22970
  %frombool41 = zext i1 %tobool40 to i8
  %62 = ptrtoint ptr %radio_rx_rds_enabled to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %frombool41, ptr %radio_rx_rds_enabled, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb38, %if.end, %sw.bb3, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_radio_tx_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 15790174, label %sw.bb
    i32 10160387, label %sw.bb5
    i32 10160389, label %sw.bb10
    i32 10160390, label %sw.bb16
    i32 10160395, label %sw.bb23
    i32 10160396, label %sw.bb30
    i32 10160397, label %sw.bb37
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool = icmp ne i32 %6, 0
  %radio_tx_rds_controls = getelementptr i8, ptr %1, i32 21456
  %frombool = zext i1 %tobool to i8
  %7 = ptrtoint ptr %radio_tx_rds_controls to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %radio_tx_rds_controls, align 8
  %radio_tx_caps = getelementptr i8, ptr %1, i32 6488
  %8 = ptrtoint ptr %radio_tx_caps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %radio_tx_caps, align 8
  %and = and i32 %9, -16777217
  %masksel = select i1 %tobool, i32 0, i32 16777216
  %spec.select = or i32 %and, %masksel
  store i32 %spec.select, ptr %radio_tx_caps, align 8
  %device_caps = getelementptr i8, ptr %1, i32 -1120
  %10 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select, ptr %device_caps, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %radio_rx_rds_controls = getelementptr i8, ptr %1, i32 21433
  %11 = ptrtoint ptr %radio_rx_rds_controls to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %radio_rx_rds_controls, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  br i1 %tobool6.not, label %sw.bb5.sw.epilog_crit_edge, label %if.then7

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then7:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %radio_rx_rds_pty = getelementptr i8, ptr %1, i32 6808
  %13 = ptrtoint ptr %radio_rx_rds_pty to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %radio_rx_rds_pty, align 8
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val8, align 4
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %20, i32 noundef 0) #6
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %14, i32 noundef %16) #6
  %21 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %24) #6
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %radio_rx_rds_controls11 = getelementptr i8, ptr %1, i32 21433
  %25 = ptrtoint ptr %radio_rx_rds_controls11 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %radio_rx_rds_controls11, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool12.not = icmp eq i8 %26, 0
  br i1 %tobool12.not, label %sw.bb10.sw.epilog_crit_edge, label %if.then13

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then13:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %radio_rx_rds_psname = getelementptr i8, ptr %1, i32 6824
  %27 = ptrtoint ptr %radio_rx_rds_psname to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %radio_rx_rds_psname, align 8
  %p_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 25
  %29 = ptrtoint ptr %p_new to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p_new, align 8
  %handler.i.i69 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %handler.i.i69 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %handler.i.i69, align 8
  %lock.i.i70 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %lock.i.i70 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lock.i.i70, align 4
  tail call void @mutex_lock_nested(ptr noundef %34, i32 noundef 0) #6
  %call.i71 = tail call i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef %28, ptr noundef %30) #6
  %35 = ptrtoint ptr %handler.i.i69 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %handler.i.i69, align 8
  %lock.i2.i72 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %lock.i2.i72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lock.i2.i72, align 4
  tail call void @mutex_unlock(ptr noundef %38) #6
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %radio_rx_rds_controls17 = getelementptr i8, ptr %1, i32 21433
  %39 = ptrtoint ptr %radio_rx_rds_controls17 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %radio_rx_rds_controls17, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool18.not = icmp eq i8 %40, 0
  br i1 %tobool18.not, label %sw.bb16.sw.epilog_crit_edge, label %if.then19

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then19:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  %radio_rx_rds_radiotext = getelementptr i8, ptr %1, i32 6828
  %41 = ptrtoint ptr %radio_rx_rds_radiotext to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %radio_rx_rds_radiotext, align 4
  %p_new20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 25
  %43 = ptrtoint ptr %p_new20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %p_new20, align 8
  %handler.i.i73 = getelementptr inbounds %struct.v4l2_ctrl, ptr %42, i32 0, i32 2
  %45 = ptrtoint ptr %handler.i.i73 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %handler.i.i73, align 8
  %lock.i.i74 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %lock.i.i74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lock.i.i74, align 4
  tail call void @mutex_lock_nested(ptr noundef %48, i32 noundef 0) #6
  %call.i75 = tail call i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef %42, ptr noundef %44) #6
  %49 = ptrtoint ptr %handler.i.i73 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %handler.i.i73, align 8
  %lock.i2.i76 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %lock.i2.i76 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lock.i2.i76, align 4
  tail call void @mutex_unlock(ptr noundef %52) #6
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %radio_rx_rds_controls24 = getelementptr i8, ptr %1, i32 21433
  %53 = ptrtoint ptr %radio_rx_rds_controls24 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %radio_rx_rds_controls24, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool25.not = icmp eq i8 %54, 0
  br i1 %tobool25.not, label %sw.bb23.sw.epilog_crit_edge, label %if.then26

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then26:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  %radio_rx_rds_ta = getelementptr i8, ptr %1, i32 6812
  %55 = ptrtoint ptr %radio_rx_rds_ta to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %radio_rx_rds_ta, align 4
  %val27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %57 = ptrtoint ptr %val27 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val27, align 4
  %handler.i.i77 = getelementptr inbounds %struct.v4l2_ctrl, ptr %56, i32 0, i32 2
  %59 = ptrtoint ptr %handler.i.i77 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %handler.i.i77, align 8
  %lock.i.i78 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %lock.i.i78 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lock.i.i78, align 4
  tail call void @mutex_lock_nested(ptr noundef %62, i32 noundef 0) #6
  %call.i79 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %56, i32 noundef %58) #6
  %63 = ptrtoint ptr %handler.i.i77 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %handler.i.i77, align 8
  %lock.i2.i80 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %lock.i2.i80 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lock.i2.i80, align 4
  tail call void @mutex_unlock(ptr noundef %66) #6
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %radio_rx_rds_controls31 = getelementptr i8, ptr %1, i32 21433
  %67 = ptrtoint ptr %radio_rx_rds_controls31 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %radio_rx_rds_controls31, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool32.not = icmp eq i8 %68, 0
  br i1 %tobool32.not, label %sw.bb30.sw.epilog_crit_edge, label %if.then33

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then33:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  %radio_rx_rds_tp = getelementptr i8, ptr %1, i32 6816
  %69 = ptrtoint ptr %radio_rx_rds_tp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %radio_rx_rds_tp, align 8
  %val34 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %71 = ptrtoint ptr %val34 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val34, align 4
  %handler.i.i81 = getelementptr inbounds %struct.v4l2_ctrl, ptr %70, i32 0, i32 2
  %73 = ptrtoint ptr %handler.i.i81 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %handler.i.i81, align 8
  %lock.i.i82 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %lock.i.i82 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lock.i.i82, align 4
  tail call void @mutex_lock_nested(ptr noundef %76, i32 noundef 0) #6
  %call.i83 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %70, i32 noundef %72) #6
  %77 = ptrtoint ptr %handler.i.i81 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %handler.i.i81, align 8
  %lock.i2.i84 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %lock.i2.i84 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lock.i2.i84, align 4
  tail call void @mutex_unlock(ptr noundef %80) #6
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  %radio_rx_rds_controls38 = getelementptr i8, ptr %1, i32 21433
  %81 = ptrtoint ptr %radio_rx_rds_controls38 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %radio_rx_rds_controls38, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool39.not = icmp eq i8 %82, 0
  br i1 %tobool39.not, label %sw.bb37.sw.epilog_crit_edge, label %if.then40

sw.bb37.sw.epilog_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then40:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  %radio_rx_rds_ms = getelementptr i8, ptr %1, i32 6820
  %83 = ptrtoint ptr %radio_rx_rds_ms to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %radio_rx_rds_ms, align 4
  %val41 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %85 = ptrtoint ptr %val41 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val41, align 4
  %handler.i.i85 = getelementptr inbounds %struct.v4l2_ctrl, ptr %84, i32 0, i32 2
  %87 = ptrtoint ptr %handler.i.i85 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %handler.i.i85, align 8
  %lock.i.i86 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %lock.i.i86 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %lock.i.i86, align 4
  tail call void @mutex_lock_nested(ptr noundef %90, i32 noundef 0) #6
  %call.i87 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %84, i32 noundef %86) #6
  %91 = ptrtoint ptr %handler.i.i85 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %handler.i.i85, align 8
  %lock.i2.i88 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %lock.i2.i88 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lock.i2.i88, align 4
  tail call void @mutex_unlock(ptr noundef %94) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then40, %sw.bb37.sw.epilog_crit_edge, %if.then33, %sw.bb30.sw.epilog_crit_edge, %if.then26, %sw.bb23.sw.epilog_crit_edge, %if.then19, %sw.bb16.sw.epilog_crit_edge, %if.then13, %sw.bb10.sw.epilog_crit_edge, %if.then7, %sw.bb5.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vivid_sdr_cap_s_ctrl(ptr nocapture noundef readonly %ctrl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15790190, i32 %1)
  %cond = icmp eq i32 %1, 15790190
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %sdr_fm_deviation = getelementptr i8, ptr %3, i32 19072
  %6 = ptrtoint ptr %sdr_fm_deviation to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %sdr_fm_deviation, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vivid_meta_cap_s_ctrl(ptr nocapture noundef readonly %ctrl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 15790191, label %sw.bb
    i32 15790192, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool = icmp ne i32 %6, 0
  %meta_pts = getelementptr i8, ptr %1, i32 19064
  %frombool = zext i1 %tobool to i8
  %7 = ptrtoint ptr %meta_pts to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %meta_pts, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3 = icmp ne i32 %9, 0
  %meta_scr = getelementptr i8, ptr %1, i32 19065
  %frombool4 = zext i1 %tobool3 to i8
  %10 = ptrtoint ptr %meta_scr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool4, ptr %meta_scr, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 265)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 265)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509}
!llvm.module.flags = !{!511, !512, !513, !514, !515, !516, !517, !518}
!llvm.ident = !{!519}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1539, i32 11}
!2 = !{ptr @vivid_create_controls._key, !3, !"_key", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1544, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @vivid_create_controls._key.2, !6, !"_key", i1 false, i1 false}
!6 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1546, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @vivid_create_controls._key.4, !9, !"_key", i1 false, i1 false}
!9 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1548, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vivid_create_controls._key.6, !12, !"_key", i1 false, i1 false}
!12 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1550, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @vivid_create_controls._key.8, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1552, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @vivid_create_controls._key.10, !18, !"_key", i1 false, i1 false}
!18 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1554, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @vivid_create_controls._key.12, !21, !"_key", i1 false, i1 false}
!21 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1556, i32 2}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @vivid_create_controls._key.14, !24, !"_key", i1 false, i1 false}
!24 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1558, i32 2}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @vivid_create_controls._key.16, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1560, i32 2}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @vivid_create_controls._key.18, !30, !"_key", i1 false, i1 false}
!30 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1563, i32 2}
!31 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @vivid_create_controls._key.20, !33, !"_key", i1 false, i1 false}
!33 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1565, i32 2}
!34 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @vivid_create_controls._key.22, !36, !"_key", i1 false, i1 false}
!36 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1568, i32 2}
!37 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @vivid_create_controls._key.24, !39, !"_key", i1 false, i1 false}
!39 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1570, i32 2}
!40 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @vivid_create_controls._key.26, !42, !"_key", i1 false, i1 false}
!42 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1572, i32 2}
!43 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @vivid_create_controls._key.28, !45, !"_key", i1 false, i1 false}
!45 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1574, i32 2}
!46 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @vivid_create_controls._key.30, !48, !"_key", i1 false, i1 false}
!48 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1576, i32 2}
!49 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @vivid_create_controls._key.32, !51, !"_key", i1 false, i1 false}
!51 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1578, i32 2}
!52 = !{ptr @.str.33, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.34, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1627, i32 12}
!55 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1806, i32 54}
!57 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1812, i32 11}
!59 = !{ptr @vivid_vid_cap_ctrl_ops, !60, !"vivid_vid_cap_ctrl_ops", i1 false, i1 false}
!60 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 554, i32 35}
!61 = !{ptr @vivid_vid_cap_s_ctrl.colorspaces, !62, !"colorspaces", i1 false, i1 false}
!62 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 390, i32 19}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1510, i32 10}
!65 = !{ptr @vivid_ctrl_class, !66, !"vivid_ctrl_class", i1 false, i1 false}
!66 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1506, i32 38}
!67 = !{ptr @vivid_user_gen_ctrl_ops, !68, !"vivid_user_gen_ctrl_ops", i1 false, i1 false}
!68 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 138, i32 35}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 118, i32 3}
!71 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @vivid_user_gen_s_ctrl._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @vivid_user_gen_s_ctrl._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @vivid_user_vid_ctrl_ops, !76, !"vivid_user_vid_ctrl_ops", i1 false, i1 false}
!76 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 380, i32 35}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 145, i32 10}
!79 = !{ptr @vivid_ctrl_button, !80, !"vivid_ctrl_button", i1 false, i1 false}
!80 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 142, i32 38}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 163, i32 10}
!83 = !{ptr @vivid_ctrl_int32, !84, !"vivid_ctrl_int32", i1 false, i1 false}
!84 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 160, i32 38}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 173, i32 10}
!87 = !{ptr @vivid_ctrl_int64, !88, !"vivid_ctrl_int64", i1 false, i1 false}
!88 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 170, i32 38}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 152, i32 10}
!91 = !{ptr @vivid_ctrl_boolean, !92, !"vivid_ctrl_boolean", i1 false, i1 false}
!92 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 149, i32 38}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 229, i32 10}
!95 = !{ptr @vivid_ctrl_menu, !96, !"vivid_ctrl_menu", i1 false, i1 false}
!96 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 226, i32 38}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 217, i32 2}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 218, i32 2}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 219, i32 2}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 220, i32 2}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 221, i32 2}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 222, i32 2}
!109 = !{ptr @vivid_ctrl_menu_strings, !110, !"vivid_ctrl_menu_strings", i1 false, i1 false}
!110 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 216, i32 27}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 241, i32 10}
!113 = !{ptr @vivid_ctrl_string, !114, !"vivid_ctrl_string", i1 false, i1 false}
!114 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 238, i32 38}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 251, i32 10}
!117 = !{ptr @vivid_ctrl_bitmask, !118, !"vivid_ctrl_bitmask", i1 false, i1 false}
!118 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 248, i32 38}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 266, i32 10}
!121 = !{ptr @vivid_ctrl_int_menu, !122, !"vivid_ctrl_int_menu", i1 false, i1 false}
!122 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 263, i32 38}
!123 = !{ptr @vivid_ctrl_int_menu_values, !124, !"vivid_ctrl_int_menu_values", i1 false, i1 false}
!124 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 259, i32 18}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 298, i32 10}
!127 = !{ptr @vivid_ctrl_ro_int32, !128, !"vivid_ctrl_ro_int32", i1 false, i1 false}
!128 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 295, i32 38}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 290, i32 10}
!131 = !{ptr @vivid_ctrl_area, !132, !"vivid_ctrl_area", i1 false, i1 false}
!132 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 287, i32 38}
!133 = !{ptr @area, !134, !"area", i1 false, i1 false}
!134 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 282, i32 31}
!135 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 183, i32 10}
!137 = !{ptr @vivid_ctrl_u32_array, !138, !"vivid_ctrl_u32_array", i1 false, i1 false}
!138 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 180, i32 38}
!139 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 195, i32 10}
!141 = !{ptr @vivid_ctrl_u16_matrix, !142, !"vivid_ctrl_u16_matrix", i1 false, i1 false}
!142 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 192, i32 38}
!143 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 207, i32 10}
!145 = !{ptr @vivid_ctrl_u8_4d_array, !146, !"vivid_ctrl_u8_4d_array", i1 false, i1 false}
!146 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 204, i32 38}
!147 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 637, i32 10}
!149 = !{ptr @vivid_ctrl_perc_fill, !150, !"vivid_ctrl_perc_fill", i1 false, i1 false}
!150 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 634, i32 38}
!151 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 572, i32 10}
!153 = !{ptr @vivid_ctrl_hor_movement, !154, !"vivid_ctrl_hor_movement", i1 false, i1 false}
!154 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 569, i32 38}
!155 = !{ptr @.str.62, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 559, i32 2}
!157 = !{ptr @.str.63, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 560, i32 2}
!159 = !{ptr @.str.64, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 561, i32 2}
!161 = !{ptr @.str.65, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 562, i32 2}
!163 = !{ptr @.str.66, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 563, i32 2}
!165 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 564, i32 2}
!167 = !{ptr @.str.68, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 565, i32 2}
!169 = !{ptr @vivid_ctrl_hor_movement_strings, !170, !"vivid_ctrl_hor_movement_strings", i1 false, i1 false}
!170 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 558, i32 27}
!171 = !{ptr @.str.69, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 593, i32 10}
!173 = !{ptr @vivid_ctrl_vert_movement, !174, !"vivid_ctrl_vert_movement", i1 false, i1 false}
!174 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 590, i32 38}
!175 = !{ptr @.str.70, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 580, i32 2}
!177 = !{ptr @.str.71, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 581, i32 2}
!179 = !{ptr @.str.72, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 582, i32 2}
!181 = !{ptr @.str.73, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 584, i32 2}
!183 = !{ptr @.str.74, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 585, i32 2}
!185 = !{ptr @.str.75, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 586, i32 2}
!187 = !{ptr @vivid_ctrl_vert_movement_strings, !188, !"vivid_ctrl_vert_movement_strings", i1 false, i1 false}
!188 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 579, i32 27}
!189 = !{ptr @.str.76, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 628, i32 10}
!191 = !{ptr @vivid_ctrl_osd_mode, !192, !"vivid_ctrl_osd_mode", i1 false, i1 false}
!192 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 625, i32 38}
!193 = !{ptr @.str.77, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 619, i32 2}
!195 = !{ptr @.str.78, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 620, i32 2}
!197 = !{ptr @.str.79, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 621, i32 2}
!199 = !{ptr @vivid_ctrl_osd_mode_strings, !200, !"vivid_ctrl_osd_mode_strings", i1 false, i1 false}
!200 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 618, i32 27}
!201 = !{ptr @.str.80, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 603, i32 10}
!203 = !{ptr @vivid_ctrl_show_border, !204, !"vivid_ctrl_show_border", i1 false, i1 false}
!204 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 600, i32 38}
!205 = !{ptr @.str.81, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 612, i32 10}
!207 = !{ptr @vivid_ctrl_show_square, !208, !"vivid_ctrl_show_square", i1 false, i1 false}
!208 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 609, i32 38}
!209 = !{ptr @.str.82, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 666, i32 10}
!211 = !{ptr @vivid_ctrl_hflip, !212, !"vivid_ctrl_hflip", i1 false, i1 false}
!212 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 663, i32 38}
!213 = !{ptr @.str.83, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 675, i32 10}
!215 = !{ptr @vivid_ctrl_vflip, !216, !"vivid_ctrl_vflip", i1 false, i1 false}
!216 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 672, i32 38}
!217 = !{ptr @.str.84, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 648, i32 10}
!219 = !{ptr @vivid_ctrl_insert_sav, !220, !"vivid_ctrl_insert_sav", i1 false, i1 false}
!220 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 645, i32 38}
!221 = !{ptr @.str.85, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 657, i32 10}
!223 = !{ptr @vivid_ctrl_insert_eav, !224, !"vivid_ctrl_insert_eav", i1 false, i1 false}
!224 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 654, i32 38}
!225 = !{ptr @.str.86, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 684, i32 10}
!227 = !{ptr @vivid_ctrl_reduced_fps, !228, !"vivid_ctrl_reduced_fps", i1 false, i1 false}
!228 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 681, i32 38}
!229 = !{ptr @.str.87, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 693, i32 10}
!231 = !{ptr @vivid_ctrl_has_crop_cap, !232, !"vivid_ctrl_has_crop_cap", i1 false, i1 false}
!232 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 690, i32 38}
!233 = !{ptr @.str.88, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 703, i32 10}
!235 = !{ptr @vivid_ctrl_has_compose_cap, !236, !"vivid_ctrl_has_compose_cap", i1 false, i1 false}
!236 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 700, i32 38}
!237 = !{ptr @.str.89, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 713, i32 10}
!239 = !{ptr @vivid_ctrl_has_scaler_cap, !240, !"vivid_ctrl_has_scaler_cap", i1 false, i1 false}
!240 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 710, i32 38}
!241 = !{ptr @.str.90, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 729, i32 10}
!243 = !{ptr @vivid_ctrl_tstamp_src, !244, !"vivid_ctrl_tstamp_src", i1 false, i1 false}
!244 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 726, i32 38}
!245 = !{ptr @.str.91, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 721, i32 2}
!247 = !{ptr @.str.92, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 722, i32 2}
!249 = !{ptr @vivid_ctrl_tstamp_src_strings, !250, !"vivid_ctrl_tstamp_src_strings", i1 false, i1 false}
!250 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 720, i32 27}
!251 = !{ptr @.str.93, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 802, i32 10}
!253 = !{ptr @vivid_ctrl_colorspace, !254, !"vivid_ctrl_colorspace", i1 false, i1 false}
!254 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 799, i32 38}
!255 = !{ptr @.str.94, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 787, i32 2}
!257 = !{ptr @.str.95, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 788, i32 2}
!259 = !{ptr @.str.96, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 789, i32 2}
!261 = !{ptr @.str.97, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 790, i32 2}
!263 = !{ptr @.str.98, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 791, i32 2}
!265 = !{ptr @.str.99, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 792, i32 2}
!267 = !{ptr @.str.100, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 793, i32 2}
!269 = !{ptr @.str.101, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 794, i32 2}
!271 = !{ptr @.str.102, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 795, i32 2}
!273 = !{ptr @vivid_ctrl_colorspace_strings, !274, !"vivid_ctrl_colorspace_strings", i1 false, i1 false}
!274 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 786, i32 27}
!275 = !{ptr @.str.103, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 824, i32 10}
!277 = !{ptr @vivid_ctrl_xfer_func, !278, !"vivid_ctrl_xfer_func", i1 false, i1 false}
!278 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 821, i32 38}
!279 = !{ptr @.str.104, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 810, i32 2}
!281 = !{ptr @.str.105, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 817, i32 2}
!283 = !{ptr @vivid_ctrl_xfer_func_strings, !284, !"vivid_ctrl_xfer_func_strings", i1 false, i1 false}
!284 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 809, i32 27}
!285 = !{ptr @.str.106, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 846, i32 10}
!287 = !{ptr @vivid_ctrl_ycbcr_enc, !288, !"vivid_ctrl_ycbcr_enc", i1 false, i1 false}
!288 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 843, i32 38}
!289 = !{ptr @.str.107, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 832, i32 2}
!291 = !{ptr @.str.108, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 834, i32 2}
!293 = !{ptr @.str.109, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 835, i32 2}
!295 = !{ptr @.str.110, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 836, i32 2}
!297 = !{ptr @.str.111, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 838, i32 2}
!299 = !{ptr @vivid_ctrl_ycbcr_enc_strings, !300, !"vivid_ctrl_ycbcr_enc_strings", i1 false, i1 false}
!300 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 830, i32 27}
!301 = !{ptr @.str.112, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 862, i32 10}
!303 = !{ptr @vivid_ctrl_hsv_enc, !304, !"vivid_ctrl_hsv_enc", i1 false, i1 false}
!304 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 859, i32 38}
!305 = !{ptr @.str.113, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 854, i32 2}
!307 = !{ptr @.str.114, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 855, i32 2}
!309 = !{ptr @vivid_ctrl_hsv_enc_strings, !310, !"vivid_ctrl_hsv_enc_strings", i1 false, i1 false}
!310 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 853, i32 27}
!311 = !{ptr @.str.115, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 878, i32 10}
!313 = !{ptr @vivid_ctrl_quantization, !314, !"vivid_ctrl_quantization", i1 false, i1 false}
!314 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 875, i32 38}
!315 = !{ptr @.str.116, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 870, i32 2}
!317 = !{ptr @.str.117, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 871, i32 2}
!319 = !{ptr @vivid_ctrl_quantization_strings, !320, !"vivid_ctrl_quantization_strings", i1 false, i1 false}
!320 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 868, i32 27}
!321 = !{ptr @.str.118, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 887, i32 10}
!323 = !{ptr @vivid_ctrl_alpha_mode, !324, !"vivid_ctrl_alpha_mode", i1 false, i1 false}
!324 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 884, i32 38}
!325 = !{ptr @.str.119, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1045, i32 10}
!327 = !{ptr @vivid_ctrl_has_crop_out, !328, !"vivid_ctrl_has_crop_out", i1 false, i1 false}
!328 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1042, i32 38}
!329 = !{ptr @vivid_vid_out_ctrl_ops, !330, !"vivid_vid_out_ctrl_ops", i1 false, i1 false}
!330 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1038, i32 35}
!331 = !{ptr @.str.120, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1055, i32 10}
!333 = !{ptr @vivid_ctrl_has_compose_out, !334, !"vivid_ctrl_has_compose_out", i1 false, i1 false}
!334 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1052, i32 38}
!335 = !{ptr @.str.121, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1065, i32 10}
!337 = !{ptr @vivid_ctrl_has_scaler_out, !338, !"vivid_ctrl_has_scaler_out", i1 false, i1 false}
!338 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1062, i32 38}
!339 = !{ptr @.str.122, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 278, i32 10}
!341 = !{ptr @vivid_ctrl_disconnect, !342, !"vivid_ctrl_disconnect", i1 false, i1 false}
!342 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 275, i32 38}
!343 = !{ptr @.str.123, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1151, i32 10}
!345 = !{ptr @vivid_ctrl_dqbuf_error, !346, !"vivid_ctrl_dqbuf_error", i1 false, i1 false}
!346 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1148, i32 38}
!347 = !{ptr @vivid_streaming_ctrl_ops, !348, !"vivid_streaming_ctrl_ops", i1 false, i1 false}
!348 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1144, i32 35}
!349 = !{ptr @.str.124, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1158, i32 10}
!351 = !{ptr @vivid_ctrl_perc_dropped, !352, !"vivid_ctrl_perc_dropped", i1 false, i1 false}
!352 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1155, i32 38}
!353 = !{ptr @.str.125, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1168, i32 10}
!355 = !{ptr @vivid_ctrl_queue_setup_error, !356, !"vivid_ctrl_queue_setup_error", i1 false, i1 false}
!356 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1165, i32 38}
!357 = !{ptr @.str.126, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1175, i32 10}
!359 = !{ptr @vivid_ctrl_buf_prepare_error, !360, !"vivid_ctrl_buf_prepare_error", i1 false, i1 false}
!360 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1172, i32 38}
!361 = !{ptr @.str.127, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1182, i32 10}
!363 = !{ptr @vivid_ctrl_start_streaming_error, !364, !"vivid_ctrl_start_streaming_error", i1 false, i1 false}
!364 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1179, i32 38}
!365 = !{ptr @.str.128, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1189, i32 10}
!367 = !{ptr @vivid_ctrl_queue_error, !368, !"vivid_ctrl_queue_error", i1 false, i1 false}
!368 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1186, i32 38}
!369 = !{ptr @.str.129, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1197, i32 10}
!371 = !{ptr @vivid_ctrl_req_validate_error, !372, !"vivid_ctrl_req_validate_error", i1 false, i1 false}
!372 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1194, i32 38}
!373 = !{ptr @.str.130, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1205, i32 10}
!375 = !{ptr @vivid_ctrl_seq_wrap, !376, !"vivid_ctrl_seq_wrap", i1 false, i1 false}
!376 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1202, i32 38}
!377 = !{ptr @.str.131, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1214, i32 10}
!379 = !{ptr @vivid_ctrl_time_wrap, !380, !"vivid_ctrl_time_wrap", i1 false, i1 false}
!380 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1211, i32 38}
!381 = !{ptr @.str.132, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 738, i32 10}
!383 = !{ptr @vivid_ctrl_std_aspect_ratio, !384, !"vivid_ctrl_std_aspect_ratio", i1 false, i1 false}
!384 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 735, i32 38}
!385 = !{ptr @.str.133, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1262, i32 10}
!387 = !{ptr @vivid_ctrl_std_signal_mode, !388, !"vivid_ctrl_std_signal_mode", i1 false, i1 false}
!388 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1259, i32 38}
!389 = !{ptr @vivid_sdtv_cap_ctrl_ops, !390, !"vivid_sdtv_cap_ctrl_ops", i1 false, i1 false}
!390 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1245, i32 35}
!391 = !{ptr @.str.134, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1250, i32 2}
!393 = !{ptr @.str.135, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1251, i32 2}
!395 = !{ptr @.str.136, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1252, i32 2}
!397 = !{ptr @.str.137, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1254, i32 2}
!399 = !{ptr @.str.138, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1255, i32 2}
!401 = !{ptr @vivid_ctrl_std_signal_mode_strings, !402, !"vivid_ctrl_std_signal_mode_strings", i1 false, i1 false}
!402 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1249, i32 27}
!403 = !{ptr @.str.139, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1272, i32 10}
!405 = !{ptr @vivid_ctrl_standard, !406, !"vivid_ctrl_standard", i1 false, i1 false}
!406 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1269, i32 38}
!407 = !{ptr @.str.140, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 955, i32 10}
!409 = !{ptr @vivid_ctrl_vbi_cap_interlaced, !410, !"vivid_ctrl_vbi_cap_interlaced", i1 false, i1 false}
!410 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 952, i32 38}
!411 = !{ptr @vivid_vbi_cap_ctrl_ops, !412, !"vivid_vbi_cap_ctrl_ops", i1 false, i1 false}
!412 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 948, i32 35}
!413 = !{ptr @.str.141, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 760, i32 10}
!415 = !{ptr @vivid_ctrl_dv_timings_signal_mode, !416, !"vivid_ctrl_dv_timings_signal_mode", i1 false, i1 false}
!416 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 757, i32 38}
!417 = !{ptr @.str.142, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 747, i32 2}
!419 = !{ptr @.str.143, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 750, i32 2}
!421 = !{ptr @.str.144, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 751, i32 2}
!423 = !{ptr @.str.145, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 752, i32 2}
!425 = !{ptr @.str.146, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 753, i32 2}
!427 = !{ptr @vivid_ctrl_dv_timings_signal_mode_strings, !428, !"vivid_ctrl_dv_timings_signal_mode_strings", i1 false, i1 false}
!428 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 746, i32 27}
!429 = !{ptr @.str.147, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 769, i32 10}
!431 = !{ptr @vivid_ctrl_dv_timings_aspect_ratio, !432, !"vivid_ctrl_dv_timings_aspect_ratio", i1 false, i1 false}
!432 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 766, i32 38}
!433 = !{ptr @.str.148, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 778, i32 10}
!435 = !{ptr @vivid_ctrl_max_edid_blocks, !436, !"vivid_ctrl_max_edid_blocks", i1 false, i1 false}
!436 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 775, i32 38}
!437 = !{ptr @.str.149, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 896, i32 10}
!439 = !{ptr @vivid_ctrl_limited_rgb_range, !440, !"vivid_ctrl_limited_rgb_range", i1 false, i1 false}
!440 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 893, i32 38}
!441 = !{ptr @.str.150, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1075, i32 10}
!443 = !{ptr @vivid_ctrl_display_present, !444, !"vivid_ctrl_display_present", i1 false, i1 false}
!444 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1072, i32 38}
!445 = !{ptr @.str.151, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 927, i32 10}
!447 = !{ptr @vivid_ctrl_loop_video, !448, !"vivid_ctrl_loop_video", i1 false, i1 false}
!448 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 924, i32 38}
!449 = !{ptr @vivid_loop_cap_ctrl_ops, !450, !"vivid_loop_cap_ctrl_ops", i1 false, i1 false}
!450 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 920, i32 35}
!451 = !{ptr @.str.152, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 328, i32 10}
!453 = !{ptr @vivid_ctrl_clear_fb, !454, !"vivid_ctrl_clear_fb", i1 false, i1 false}
!454 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 325, i32 38}
!455 = !{ptr @vivid_fb_ctrl_ops, !456, !"vivid_fb_ctrl_ops", i1 false, i1 false}
!456 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 321, i32 35}
!457 = !{ptr @.str.153, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1362, i32 10}
!459 = !{ptr @vivid_ctrl_radio_hw_seek_mode, !460, !"vivid_ctrl_radio_hw_seek_mode", i1 false, i1 false}
!460 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1359, i32 38}
!461 = !{ptr @.str.154, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1353, i32 2}
!463 = !{ptr @.str.155, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1354, i32 2}
!465 = !{ptr @.str.156, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1355, i32 2}
!467 = !{ptr @vivid_ctrl_radio_hw_seek_mode_strings, !468, !"vivid_ctrl_radio_hw_seek_mode_strings", i1 false, i1 false}
!468 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1352, i32 27}
!469 = !{ptr @.str.157, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1371, i32 10}
!471 = !{ptr @vivid_ctrl_radio_hw_seek_prog_lim, !472, !"vivid_ctrl_radio_hw_seek_prog_lim", i1 false, i1 false}
!472 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1368, i32 38}
!473 = !{ptr @.str.158, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1337, i32 10}
!475 = !{ptr @vivid_ctrl_radio_rx_rds_blockio, !476, !"vivid_ctrl_radio_rx_rds_blockio", i1 false, i1 false}
!476 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1334, i32 38}
!477 = !{ptr @.str.159, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1329, i32 2}
!479 = !{ptr @.str.160, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1330, i32 2}
!481 = !{ptr @vivid_ctrl_radio_rds_mode_strings, !482, !"vivid_ctrl_radio_rds_mode_strings", i1 false, i1 false}
!482 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1328, i32 27}
!483 = !{ptr @.str.161, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1346, i32 10}
!485 = !{ptr @vivid_ctrl_radio_rx_rds_rbds, !486, !"vivid_ctrl_radio_rx_rds_rbds", i1 false, i1 false}
!486 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1343, i32 38}
!487 = !{ptr @vivid_radio_rx_ctrl_ops, !488, !"vivid_radio_rx_ctrl_ops", i1 false, i1 false}
!488 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1324, i32 35}
!489 = !{ptr @.str.162, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1427, i32 10}
!491 = !{ptr @vivid_ctrl_radio_tx_rds_blockio, !492, !"vivid_ctrl_radio_tx_rds_blockio", i1 false, i1 false}
!492 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1424, i32 38}
!493 = !{ptr @vivid_radio_tx_ctrl_ops, !494, !"vivid_radio_tx_ctrl_ops", i1 false, i1 false}
!494 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1420, i32 35}
!495 = !{ptr @.str.163, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1456, i32 10}
!497 = !{ptr @vivid_ctrl_sdr_cap_fm_deviation, !498, !"vivid_ctrl_sdr_cap_fm_deviation", i1 false, i1 false}
!498 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1453, i32 38}
!499 = !{ptr @vivid_sdr_cap_ctrl_ops, !500, !"vivid_sdr_cap_ctrl_ops", i1 false, i1 false}
!500 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1449, i32 35}
!501 = !{ptr @.str.164, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1489, i32 10}
!503 = !{ptr @vivid_ctrl_meta_has_pts, !504, !"vivid_ctrl_meta_has_pts", i1 false, i1 false}
!504 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1486, i32 38}
!505 = !{ptr @vivid_meta_cap_ctrl_ops, !506, !"vivid_meta_cap_ctrl_ops", i1 false, i1 false}
!506 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1482, i32 35}
!507 = !{ptr @.str.165, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1499, i32 10}
!509 = !{ptr @vivid_ctrl_meta_has_src_clk, !510, !"vivid_ctrl_meta_has_src_clk", i1 false, i1 false}
!510 = !{!"../drivers/media/test-drivers/vivid/vivid-ctrls.c", i32 1496, i32 38}
!511 = !{i32 1, !"wchar_size", i32 2}
!512 = !{i32 1, !"min_enum_size", i32 4}
!513 = !{i32 8, !"branch-target-enforcement", i32 0}
!514 = !{i32 8, !"sign-return-address", i32 0}
!515 = !{i32 8, !"sign-return-address-all", i32 0}
!516 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!517 = !{i32 7, !"uwtable", i32 1}
!518 = !{i32 7, !"frame-pointer", i32 2}
!519 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!520 = !{i8 0, i8 2}
!521 = !{!"auto-init"}
