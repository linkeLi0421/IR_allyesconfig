; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-meta-cap.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-meta-cap.c"
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
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.vivid_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.110 }
%union.anon.110 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.111, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.111 = type { i8 }
%struct.vivid_uvc_meta_buf = type <{ i64, i16, i8, i8, [10 x i8] }>

@vivid_meta_cap_qops = dso_local constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @meta_cap_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @meta_cap_buf_prepare, ptr null, ptr null, ptr @meta_cap_start_streaming, ptr @meta_cap_stop_streaming, ptr @meta_cap_buf_queue, ptr @meta_cap_buf_request_complete }, [48 x i8] zeroinitializer }, align 32
@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@vivid_meta_cap_fillbuff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: %s ns:%llu sof:%4d len:%u flags: 0x%02x\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vivid_meta_cap_fillbuff\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/media/test-drivers/vivid/vivid-meta-cap.c\00", [46 x i8] zeroinitializer }, align 32
@vivid_meta_cap_fillbuff._entry_ptr = internal global ptr @vivid_meta_cap_fillbuff._entry, section ".printk_index", align 4
@vivid_meta_cap_fillbuff._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s:  pts: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@vivid_meta_cap_fillbuff._entry_ptr.5 = internal global ptr @vivid_meta_cap_fillbuff._entry.3, section ".printk_index", align 4
@vivid_meta_cap_fillbuff._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:  stc: %u, sof counter: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@vivid_meta_cap_fillbuff._entry_ptr.8 = internal global ptr @vivid_meta_cap_fillbuff._entry.6, section ".printk_index", align 4
@vivid_meta_cap_fillbuff._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\017%s: \0A\00", [24 x i8] zeroinitializer }, align 32
@vivid_meta_cap_fillbuff._entry_ptr.11 = internal global ptr @vivid_meta_cap_fillbuff._entry.9, section ".printk_index", align 4
@meta_cap_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"meta_cap_buf_prepare\00", [43 x i8] zeroinitializer }, align 32
@meta_cap_buf_prepare._entry_ptr = internal global ptr @meta_cap_buf_prepare._entry, section ".printk_index", align 4
@meta_cap_buf_prepare._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: %s data will not fit into plane (%lu < %u)\0A\00", [46 x i8] zeroinitializer }, align 32
@meta_cap_buf_prepare._entry_ptr.16 = internal global ptr @meta_cap_buf_prepare._entry.14, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@meta_cap_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.18, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"meta_cap_start_streaming\00", [39 x i8] zeroinitializer }, align 32
@meta_cap_start_streaming._entry_ptr = internal global ptr @meta_cap_start_streaming._entry, section ".printk_index", align 4
@meta_cap_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.19, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"meta_cap_stop_streaming\00", [40 x i8] zeroinitializer }, align 32
@meta_cap_stop_streaming._entry_ptr = internal global ptr @meta_cap_stop_streaming._entry, section ".printk_index", align 4
@meta_cap_buf_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.20, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"meta_cap_buf_queue\00", [45 x i8] zeroinitializer }, align 32
@meta_cap_buf_queue._entry_ptr = internal global ptr @meta_cap_buf_queue._entry, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"vivid_meta_cap_qops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 121, i32 22 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 181, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 187, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 196, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 200, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 45, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 56, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 1163, i32 7 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 83, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 110, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [53 x i8] c"../drivers/media/test-drivers/vivid/vivid-meta-cap.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 71, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @meta_cap_buf_prepare._entry, ptr @meta_cap_buf_prepare._entry.14, ptr @meta_cap_buf_prepare._entry_ptr, ptr @meta_cap_buf_prepare._entry_ptr.16, ptr @meta_cap_buf_queue._entry, ptr @meta_cap_buf_queue._entry_ptr, ptr @meta_cap_start_streaming._entry, ptr @meta_cap_start_streaming._entry_ptr, ptr @meta_cap_stop_streaming._entry, ptr @meta_cap_stop_streaming._entry_ptr, ptr @vivid_meta_cap_fillbuff._entry, ptr @vivid_meta_cap_fillbuff._entry.3, ptr @vivid_meta_cap_fillbuff._entry.6, ptr @vivid_meta_cap_fillbuff._entry.9, ptr @vivid_meta_cap_fillbuff._entry_ptr, ptr @vivid_meta_cap_fillbuff._entry_ptr.11, ptr @vivid_meta_cap_fillbuff._entry_ptr.5, ptr @vivid_meta_cap_fillbuff._entry_ptr.8, ptr @vivid_meta_cap_qops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_meta_cap_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_meta_cap_fillbuff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_meta_cap_fillbuff._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_meta_cap_fillbuff._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_meta_cap_fillbuff._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meta_cap_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meta_cap_buf_prepare._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meta_cap_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meta_cap_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meta_cap_buf_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @meta_cap_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
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
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %8 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %9)
  %cmp = icmp ult i32 %9, 22
  br i1 %cmp, label %if.then2.cleanup_crit_edge, label %if.then2.if.end6_crit_edge

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 22, ptr %sizes, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2.if.end6_crit_edge
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %11 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_buffers, align 4
  %13 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nbuffers, align 4
  %add = add i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp7 = icmp ult i32 %add, 2
  br i1 %cmp7, label %if.then8, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %sub = sub i32 2, %12
  %15 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %16 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %nplanes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meta_cap_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef nonnull @.str.13) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %buf_prepare_error = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 154
  %5 = ptrtoint ptr %buf_prepare_error to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf_prepare_error, align 2, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %buf_prepare_error to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %buf_prepare_error, align 2
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %8 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %do.body11, label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.end7
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %11)
  %cmp9 = icmp ult i32 %11, 22
  br i1 %cmp9, label %do.body11.thread, label %if.then.i45

do.body11:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %12 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp12.not = icmp eq i32 %12, 0
  br i1 %cmp12.not, label %do.body11.cleanup_crit_edge, label %do.body11.vb2_plane_size.exit41_crit_edge

do.body11.vb2_plane_size.exit41_crit_edge:        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  br label %vb2_plane_size.exit41

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body11.thread:                                 ; preds = %vb2_plane_size.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %13 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp12.not48 = icmp eq i32 %13, 0
  br i1 %cmp12.not48, label %do.body11.thread.cleanup_crit_edge, label %if.then.i39

do.body11.thread.cleanup_crit_edge:               ; preds = %do.body11.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i39:                                      ; preds = %do.body11.thread
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit41

vb2_plane_size.exit41:                            ; preds = %if.then.i39, %do.body11.vb2_plane_size.exit41_crit_edge
  %retval.0.i40 = phi i32 [ %15, %if.then.i39 ], [ 0, %do.body11.vb2_plane_size.exit41_crit_edge ]
  %name1951 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name1951, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i40, i32 noundef 22) #7
  br label %cleanup

if.then.i45:                                      ; preds = %vb2_plane_size.exit
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %17)
  %cmp1.i = icmp ult i32 %17, 22
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i45.vb2_set_plane_payload.exit_crit_edge

if.then.i45.vb2_set_plane_payload.exit_crit_edge: ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #6
  br label %vb2_set_plane_payload.exit

land.rhs.i:                                       ; preds = %if.then.i45
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !54

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1163, i32 noundef 9, ptr noundef null) #4
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i, align 8
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then38.i, %if.then.i45.vb2_set_plane_payload.exit_crit_edge
  %size.addr.0.i = phi i32 [ %19, %if.then38.i ], [ 22, %if.then.i45.vb2_set_plane_payload.exit_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %20 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit, %vb2_plane_size.exit41, %do.body11.thread.cleanup_crit_edge, %do.body11.cleanup_crit_edge, %if.then5
  %retval.0 = phi i32 [ -22, %if.then5 ], [ 0, %vb2_set_plane_payload.exit ], [ -22, %vb2_plane_size.exit41 ], [ -22, %do.body11.cleanup_crit_edge ], [ -22, %do.body11.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meta_cap_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef nonnull @.str.18) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %meta_cap_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 265
  %3 = ptrtoint ptr %meta_cap_seq_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %meta_cap_seq_count, align 8
  %start_streaming_error = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 155
  %4 = ptrtoint ptr %start_streaming_error to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %start_streaming_error, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end8, label %if.end8.thread

if.end8.thread:                                   ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %start_streaming_error to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %start_streaming_error, align 1
  br label %if.then10

if.end8:                                          ; preds = %do.end4
  %meta_cap_streaming = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 266
  %call7 = tail call i32 @vivid_start_generating_vid_cap(ptr noundef %1, ptr noundef %meta_cap_streaming) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool9.not = icmp eq i32 %call7, 0
  br i1 %tobool9.not, label %if.end8.if.end26_crit_edge, label %if.end8.if.then10_crit_edge

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

if.end8.if.end26_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %if.end8.thread
  %err.042 = phi i32 [ -22, %if.end8.thread ], [ %call7, %if.end8.if.then10_crit_edge ]
  %meta_cap_active = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 247
  %7 = ptrtoint ptr %meta_cap_active to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %meta_cap_active, align 4
  %cmp19.not44 = icmp eq ptr %8, %meta_cap_active
  br i1 %cmp19.not44, label %if.then10.if.end26_crit_edge, label %if.then10.for.body_crit_edge

if.then10.for.body_crit_edge:                     ; preds = %if.then10
  br label %for.body

if.then10.if.end26_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.then10.for.body_crit_edge
  %.pn.in45 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %8, %if.then10.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in45, i32 -736
  %9 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in45, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in45) #4
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in45, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn.in45, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %16 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in45, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in45, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 3) #4
  %cmp19.not = icmp eq ptr %.pn, %meta_cap_active
  br i1 %cmp19.not, label %list_del.exit.if.end26_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

list_del.exit.if.end26_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.end26:                                         ; preds = %list_del.exit.if.end26_crit_edge, %if.then10.if.end26_crit_edge, %if.end8.if.end26_crit_edge
  %err.043 = phi i32 [ 0, %if.end8.if.end26_crit_edge ], [ %err.042, %if.then10.if.end26_crit_edge ], [ %err.042, %list_del.exit.if.end26_crit_edge ]
  ret i32 %err.043
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meta_cap_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef nonnull @.str.19) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %meta_cap_streaming = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 266
  tail call void @vivid_stop_generating_vid_cap(ptr noundef %1, ptr noundef %meta_cap_streaming) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meta_cap_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef nonnull @.str.20) #7
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %slock = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %slock) #4
  %list = getelementptr inbounds %struct.vivid_buffer, ptr %vb, i32 0, i32 1
  %meta_cap_active = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 247
  %prev.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 247, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %6, ptr noundef %meta_cap_active) #4
  br i1 %call.i.i, label %if.end.i.i, label %do.end8.list_add_tail.exit_crit_edge

do.end8.list_add_tail.exit_crit_edge:             ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %meta_cap_active, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.vivid_buffer, ptr %vb, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end8.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %slock) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meta_cap_buf_request_complete(ptr nocapture noundef readonly %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %ctrl_hdl_meta_cap = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 33
  tail call void @v4l2_ctrl_request_complete(ptr noundef %5, ptr noundef %ctrl_hdl_meta_cap) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_enum_fmt_meta_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #4
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
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 13, ptr %type, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1212372565, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_meta_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #4
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
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
  br i1 %cmp.i, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %has_meta_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 73
  %6 = ptrtoint ptr %has_meta_cap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_meta_cap, align 2, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 1212372565, ptr %fmt, align 1
  %buffersize = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %buffersize to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 22, ptr %buffersize, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_meta_cap_fillbuff(ptr noundef %dev, ptr noundef %buf, i64 noundef %soe) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @vb2_plane_vaddr(ptr noundef %buf, i32 noundef 0) #4
  %meta_cap_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 265
  %0 = ptrtoint ptr %meta_cap_seq_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %meta_cap_seq_count, align 8
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf, i32 0, i32 4
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %sequence, align 8
  %field_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 236
  %3 = ptrtoint ptr %field_cap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %field_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp = icmp eq i32 %4, 7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %div151 = lshr i32 %1, 1
  %5 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div151, ptr %sequence, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %if.end.vb2_plane_size.exit_crit_edge, label %if.then.i

if.end.vb2_plane_size.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %if.end.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.then.i ], [ 0, %if.end.vb2_plane_size.exit_crit_edge ]
  %10 = call ptr @memset(ptr %call, i32 1, i32 %retval.0.i)
  %call.i = tail call i64 @ktime_get() #4
  %11 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %call.i, ptr %call, align 1
  %12 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sequence, align 8
  %14 = trunc i32 %13 to i16
  %conv = mul i16 %14, 30
  %sof = getelementptr inbounds %struct.vivid_uvc_meta_buf, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %sof to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %conv, ptr %sof, align 1
  %length = getelementptr inbounds %struct.vivid_uvc_meta_buf, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 12, ptr %length, align 1
  %flags = getelementptr inbounds %struct.vivid_uvc_meta_buf, ptr %call, i32 0, i32 3
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -126, ptr %flags, align 1
  %18 = load i32, ptr %sequence, align 8
  %rem = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp12 = icmp eq i32 %rem, 0
  %spec.store.select = select i1 %cmp12, i8 -125, i8 -126
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.store.select, ptr %flags, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %20 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp19 = icmp ugt i32 %20, 1
  br i1 %cmp19, label %do.end, label %vb2_plane_size.exit.do.end33_crit_edge

vb2_plane_size.exit.do.end33_crit_edge:           ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end33

do.end:                                           ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %conv25 = zext i16 %conv to i32
  %conv29 = zext i8 %spec.store.select to i32
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1, i64 noundef %call.i, i32 noundef %conv25, i32 noundef 12, i32 noundef %conv29) #7
  br label %do.end33

do.end33:                                         ; preds = %do.end, %vb2_plane_size.exit.do.end33_crit_edge
  %meta_pts = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 363
  %21 = ptrtoint ptr %meta_pts to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %meta_pts, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %do.end33.if.end59_crit_edge, label %if.then34

do.end33.if.end59_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

if.then34:                                        ; preds = %do.end33
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags, align 1
  %25 = or i8 %24, 4
  store i8 %25, ptr %flags, align 1
  %div791.i.i = lshr i64 %soe, 1
  %26 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div791.i.i, i64 3689348814741910323) #8, !srcloc !55
  %27 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div791.i.i, i64 %26) #8, !srcloc !56
  %conv40 = trunc i64 %27 to i8
  %buf41 = getelementptr inbounds %struct.vivid_uvc_meta_buf, ptr %call, i32 0, i32 4
  %28 = ptrtoint ptr %buf41 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv40, ptr %buf41, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %29 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp43 = icmp ugt i32 %29, 1
  br i1 %cmp43, label %do.end48, label %if.then34.if.end59_crit_edge

if.then34.if.end59_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

do.end48:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  %name51 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %30 = ptrtoint ptr %buf41 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %buf41, align 1
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name51, i32 noundef %31) #7
  br label %if.end59

if.end59:                                         ; preds = %do.end48, %if.then34.if.end59_crit_edge, %do.end33.if.end59_crit_edge
  %buf_off.0 = phi i32 [ 4, %do.end48 ], [ 4, %if.then34.if.end59_crit_edge ], [ 0, %do.end33.if.end59_crit_edge ]
  %meta_scr = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 364
  %32 = ptrtoint ptr %meta_scr to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %meta_scr, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool60.not = icmp eq i8 %33, 0
  br i1 %tobool60.not, label %if.end59.do.body101_crit_edge, label %if.then61

if.end59.do.body101_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body101

if.then61:                                        ; preds = %if.end59
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flags, align 1
  %36 = or i8 %35, 8
  store i8 %36, ptr %flags, align 1
  %cap_frame_eof_offset = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 254
  %37 = ptrtoint ptr %cap_frame_eof_offset to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %cap_frame_eof_offset, align 8
  %add = add i64 %38, %soe
  %div791.i.i152 = lshr i64 %add, 1
  %39 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div791.i.i152, i64 3689348814741910323) #8, !srcloc !55
  %40 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div791.i.i152, i64 %39) #8, !srcloc !56
  %conv67 = trunc i64 %40 to i8
  %arrayidx69 = getelementptr %struct.vivid_uvc_meta_buf, ptr %call, i32 0, i32 4, i32 %buf_off.0
  %41 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv67, ptr %arrayidx69, align 1
  %42 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sequence, align 8
  %mul72 = mul i32 %43, 30
  %rem73 = urem i32 %mul72, 1000
  %conv74 = trunc i32 %rem73 to i8
  %add76 = add nuw nsw i32 %buf_off.0, 4
  %arrayidx77 = getelementptr %struct.vivid_uvc_meta_buf, ptr %call, i32 0, i32 4, i32 %add76
  %44 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv74, ptr %arrayidx77, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %45 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp79 = icmp ugt i32 %45, 1
  br i1 %cmp79, label %do.end84, label %if.then61.do.end115_crit_edge

if.then61.do.end115_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end115

do.end84:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #6
  %buf68 = getelementptr inbounds %struct.vivid_uvc_meta_buf, ptr %call, i32 0, i32 4
  %name87 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %add.ptr = getelementptr i8, ptr %buf68, i32 %buf_off.0
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr, align 4
  %add.ptr94 = getelementptr i8, ptr %add.ptr, i32 4
  %48 = ptrtoint ptr %add.ptr94 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr94, align 2
  %conv95 = zext i16 %49 to i32
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name87, i32 noundef %47, i32 noundef %conv95) #7
  br label %do.body101

do.body101:                                       ; preds = %do.end84, %if.end59.do.body101_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %.pr = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp102 = icmp ugt i32 %.pr, 1
  br i1 %cmp102, label %do.end107, label %do.body101.do.end115_crit_edge

do.body101.do.end115_crit_edge:                   ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end115

do.end107:                                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #6
  %name110 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name110) #7
  br label %do.end115

do.end115:                                        ; preds = %do.end107, %do.body101.do.end115_crit_edge, %if.then61.do.end115_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

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
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @vivid_meta_cap_qops, !1, !"vivid_meta_cap_qops", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-meta-cap.c", i32 121, i32 22}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vivid/vivid-meta-cap.c", i32 181, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vivid_meta_cap_fillbuff._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @vivid_meta_cap_fillbuff._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/test-drivers/vivid/vivid-meta-cap.c", i32 187, i32 3}
!10 = !{ptr @vivid_meta_cap_fillbuff._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @vivid_meta_cap_fillbuff._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/test-drivers/vivid/vivid-meta-cap.c", i32 196, i32 3}
!14 = !{ptr @vivid_meta_cap_fillbuff._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @vivid_meta_cap_fillbuff._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/test-drivers/vivid/vivid-meta-cap.c", i32 200, i32 2}
!18 = !{ptr @vivid_meta_cap_fillbuff._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @vivid_meta_cap_fillbuff._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/test-drivers/vivid/vivid-meta-cap.c", i32 45, i32 2}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @meta_cap_buf_prepare._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @meta_cap_buf_prepare._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/test-drivers/vivid/vivid-meta-cap.c", i32 56, i32 3}
!27 = !{ptr @meta_cap_buf_prepare._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @meta_cap_buf_prepare._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/test-drivers/vivid/vivid-meta-cap.c", i32 83, i32 2}
!34 = !{ptr @meta_cap_start_streaming._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @meta_cap_start_streaming._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/test-drivers/vivid/vivid-meta-cap.c", i32 110, i32 2}
!38 = !{ptr @meta_cap_stop_streaming._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @meta_cap_stop_streaming._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/test-drivers/vivid/vivid-meta-cap.c", i32 71, i32 2}
!42 = !{ptr @meta_cap_buf_queue._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @meta_cap_buf_queue._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i8 0, i8 2}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 1119466, i64 1119493}
!56 = !{i64 1119806, i64 1119833, i64 1119867, i64 1119888}
