; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-meta-out.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-meta-out.c"
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
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.93, %union.anon.94, i32, ptr, i32, %struct.anon.95, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.93 = type { i64 }
%union.anon.94 = type { ptr }
%struct.anon.95 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vivid_meta_out_buf = type { i16, i16, i16, i16 }

@vivid_meta_out_qops = dso_local constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @meta_out_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @meta_out_buf_prepare, ptr null, ptr null, ptr @meta_out_start_streaming, ptr @meta_out_stop_streaming, ptr @meta_out_buf_queue, ptr @meta_out_buf_request_complete }, [48 x i8] zeroinitializer }, align 32
@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@vivid_meta_out_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017%s:  %s brightness %u contrast %u saturation %u hue %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vivid_meta_out_process\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/media/test-drivers/vivid/vivid-meta-out.c\00", [46 x i8] zeroinitializer }, align 32
@vivid_meta_out_process._entry_ptr = internal global ptr @vivid_meta_out_process._entry, section ".printk_index", align 4
@meta_out_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"meta_out_buf_prepare\00", [43 x i8] zeroinitializer }, align 32
@meta_out_buf_prepare._entry_ptr = internal global ptr @meta_out_buf_prepare._entry, section ".printk_index", align 4
@meta_out_buf_prepare._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: %s data will not fit into plane (%lu < %u)\0A\00", [46 x i8] zeroinitializer }, align 32
@meta_out_buf_prepare._entry_ptr.7 = internal global ptr @meta_out_buf_prepare._entry.5, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@meta_out_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.9, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"meta_out_start_streaming\00", [39 x i8] zeroinitializer }, align 32
@meta_out_start_streaming._entry_ptr = internal global ptr @meta_out_start_streaming._entry, section ".printk_index", align 4
@meta_out_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.10, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"meta_out_stop_streaming\00", [40 x i8] zeroinitializer }, align 32
@meta_out_stop_streaming._entry_ptr = internal global ptr @meta_out_stop_streaming._entry, section ".printk_index", align 4
@meta_out_buf_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.11, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"meta_out_buf_queue\00", [45 x i8] zeroinitializer }, align 32
@meta_out_buf_queue._entry_ptr = internal global ptr @meta_out_buf_queue._entry, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"vivid_meta_out_qops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 121, i32 22 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 172, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 45, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 56, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 1163, i32 7 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 83, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 110, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [53 x i8] c"../drivers/media/test-drivers/vivid/vivid-meta-out.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 71, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @meta_out_buf_prepare._entry, ptr @meta_out_buf_prepare._entry.5, ptr @meta_out_buf_prepare._entry_ptr, ptr @meta_out_buf_prepare._entry_ptr.7, ptr @meta_out_buf_queue._entry, ptr @meta_out_buf_queue._entry_ptr, ptr @meta_out_start_streaming._entry, ptr @meta_out_start_streaming._entry_ptr, ptr @meta_out_stop_streaming._entry, ptr @meta_out_stop_streaming._entry_ptr, ptr @vivid_meta_out_process._entry, ptr @vivid_meta_out_process._entry_ptr, ptr @vivid_meta_out_qops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_meta_out_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_meta_out_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meta_out_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meta_out_buf_prepare._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meta_out_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meta_out_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meta_out_buf_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @meta_out_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp = icmp ult i32 %9, 8
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
  store i32 8, ptr %sizes, align 4
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
define internal i32 @meta_out_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
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
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull @.str.4) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %buf_prepare_error = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 154
  %5 = ptrtoint ptr %buf_prepare_error to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf_prepare_error, align 2, !range !41
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp9 = icmp ult i32 %11, 8
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
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name1951, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i40, i32 noundef 8) #7
  br label %cleanup

if.then.i45:                                      ; preds = %vb2_plane_size.exit
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %cmp1.i = icmp ult i32 %17, 8
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i45.vb2_set_plane_payload.exit_crit_edge

if.then.i45.vb2_set_plane_payload.exit_crit_edge: ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #6
  br label %vb2_set_plane_payload.exit

land.rhs.i:                                       ; preds = %if.then.i45
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !42

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1163, i32 noundef 9, ptr noundef null) #4
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i, align 8
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then38.i, %if.then.i45.vb2_set_plane_payload.exit_crit_edge
  %size.addr.0.i = phi i32 [ %19, %if.then38.i ], [ 8, %if.then.i45.vb2_set_plane_payload.exit_crit_edge ]
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
define internal i32 @meta_out_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
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
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull @.str.9) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %meta_out_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 311
  %3 = ptrtoint ptr %meta_out_seq_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %meta_out_seq_count, align 8
  %start_streaming_error = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 155
  %4 = ptrtoint ptr %start_streaming_error to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %start_streaming_error, align 1, !range !41
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
  %meta_out_streaming = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 312
  %call7 = tail call i32 @vivid_start_generating_vid_out(ptr noundef %1, ptr noundef %meta_out_streaming) #4
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
  %meta_out_active = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 291
  %7 = ptrtoint ptr %meta_out_active to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %meta_out_active, align 8
  %cmp19.not44 = icmp eq ptr %8, %meta_out_active
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
  %cmp19.not = icmp eq ptr %.pn, %meta_out_active
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
define internal void @meta_out_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
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
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull @.str.10) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %meta_out_streaming = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 312
  tail call void @vivid_stop_generating_vid_out(ptr noundef %1, ptr noundef %meta_out_streaming) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meta_out_buf_queue(ptr noundef %vb) #2 align 64 {
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
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull @.str.11) #7
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %slock = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %slock) #4
  %list = getelementptr inbounds %struct.vivid_buffer, ptr %vb, i32 0, i32 1
  %meta_out_active = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 291
  %prev.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 291, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %6, ptr noundef %meta_out_active) #4
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
  store ptr %meta_out_active, ptr %list, align 4
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
define internal void @meta_out_buf_request_complete(ptr nocapture noundef readonly %vb) #2 align 64 {
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
  %ctrl_hdl_meta_out = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 35
  tail call void @v4l2_ctrl_request_complete(ptr noundef %5, ptr noundef %ctrl_hdl_meta_out) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_enum_fmt_meta_out(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) local_unnamed_addr #2 align 64 {
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
  store i32 14, ptr %type, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1146505558, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_meta_out(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) local_unnamed_addr #2 align 64 {
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
  %has_meta_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 74
  %6 = ptrtoint ptr %has_meta_out to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_meta_out, align 1, !range !41
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
  store i32 1146505558, ptr %fmt, align 1
  %buffersize = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %buffersize to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 8, ptr %buffersize, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_meta_out_process(ptr noundef %dev, ptr noundef %buf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @vb2_plane_vaddr(ptr noundef %buf, i32 noundef 0) #4
  %brightness = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 78
  %0 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %brightness, align 8
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %call, align 2
  %conv = zext i16 %3 to i32
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %7, i32 noundef 0) #4
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %1, i32 noundef %conv) #4
  %8 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %11) #4
  %contrast = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 79
  %12 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %contrast, align 4
  %contrast3 = getelementptr inbounds %struct.vivid_meta_out_buf, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %contrast3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %contrast3, align 2
  %conv4 = zext i16 %15 to i32
  %handler.i.i36 = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %handler.i.i36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handler.i.i36, align 8
  %lock.i.i37 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %lock.i.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lock.i.i37, align 4
  tail call void @mutex_lock_nested(ptr noundef %19, i32 noundef 0) #4
  %call.i38 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %13, i32 noundef %conv4) #4
  %20 = ptrtoint ptr %handler.i.i36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handler.i.i36, align 8
  %lock.i2.i39 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %lock.i2.i39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock.i2.i39, align 4
  tail call void @mutex_unlock(ptr noundef %23) #4
  %saturation = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 80
  %24 = ptrtoint ptr %saturation to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %saturation, align 8
  %saturation6 = getelementptr inbounds %struct.vivid_meta_out_buf, ptr %call, i32 0, i32 2
  %26 = ptrtoint ptr %saturation6 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %saturation6, align 2
  %conv7 = zext i16 %27 to i32
  %handler.i.i40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %handler.i.i40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handler.i.i40, align 8
  %lock.i.i41 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %lock.i.i41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lock.i.i41, align 4
  tail call void @mutex_lock_nested(ptr noundef %31, i32 noundef 0) #4
  %call.i42 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %25, i32 noundef %conv7) #4
  %32 = ptrtoint ptr %handler.i.i40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %handler.i.i40, align 8
  %lock.i2.i43 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %lock.i2.i43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lock.i2.i43, align 4
  tail call void @mutex_unlock(ptr noundef %35) #4
  %hue = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 81
  %36 = ptrtoint ptr %hue to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hue, align 4
  %hue9 = getelementptr inbounds %struct.vivid_meta_out_buf, ptr %call, i32 0, i32 3
  %38 = ptrtoint ptr %hue9 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hue9, align 2
  %conv10 = sext i16 %39 to i32
  %handler.i.i44 = getelementptr inbounds %struct.v4l2_ctrl, ptr %37, i32 0, i32 2
  %40 = ptrtoint ptr %handler.i.i44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %handler.i.i44, align 8
  %lock.i.i45 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %lock.i.i45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lock.i.i45, align 4
  tail call void @mutex_lock_nested(ptr noundef %43, i32 noundef 0) #4
  %call.i46 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %37, i32 noundef %conv10) #4
  %44 = ptrtoint ptr %handler.i.i44 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %handler.i.i44, align 8
  %lock.i2.i47 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %lock.i2.i47 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lock.i2.i47, align 4
  tail call void @mutex_unlock(ptr noundef %47) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %48 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp = icmp ugt i32 %48, 1
  br i1 %cmp, label %do.end, label %entry.do.end24_crit_edge

entry.do.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end24

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %call, align 2
  %conv15 = zext i16 %50 to i32
  %51 = ptrtoint ptr %contrast3 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %contrast3, align 2
  %conv17 = zext i16 %52 to i32
  %53 = ptrtoint ptr %saturation6 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %saturation6, align 2
  %conv19 = zext i16 %54 to i32
  %55 = ptrtoint ptr %hue9 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %hue9, align 2
  %conv21 = sext i16 %56 to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef %conv15, i32 noundef %conv17, i32 noundef %conv19, i32 noundef %conv21) #7
  br label %do.end24

do.end24:                                         ; preds = %do.end, %entry.do.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

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
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @vivid_meta_out_qops, !1, !"vivid_meta_out_qops", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-meta-out.c", i32 121, i32 22}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vivid/vivid-meta-out.c", i32 172, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vivid_meta_out_process._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @vivid_meta_out_process._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/test-drivers/vivid/vivid-meta-out.c", i32 45, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @meta_out_buf_prepare._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @meta_out_buf_prepare._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/test-drivers/vivid/vivid-meta-out.c", i32 56, i32 3}
!15 = !{ptr @meta_out_buf_prepare._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @meta_out_buf_prepare._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/test-drivers/vivid/vivid-meta-out.c", i32 83, i32 2}
!22 = !{ptr @meta_out_start_streaming._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @meta_out_start_streaming._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/test-drivers/vivid/vivid-meta-out.c", i32 110, i32 2}
!26 = !{ptr @meta_out_stop_streaming._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @meta_out_stop_streaming._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/test-drivers/vivid/vivid-meta-out.c", i32 71, i32 2}
!30 = !{ptr @meta_out_buf_queue._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @meta_out_buf_queue._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i8 0, i8 2}
!42 = !{!"branch_weights", i32 2000, i32 1}
