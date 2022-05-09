; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-vbi-out.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-vbi-out.c"
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
%struct.vivid_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_format = type { i32, %union.anon.92 }
%union.anon.92 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.94, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.94 = type { i8 }

@vivid_vbi_out_qops = dso_local constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @vbi_out_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @vbi_out_buf_prepare, ptr null, ptr null, ptr @vbi_out_start_streaming, ptr @vbi_out_stop_streaming, ptr @vbi_out_buf_queue, ptr @vbi_out_buf_request_complete }, [48 x i8] zeroinitializer }, align 32
@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@vbi_out_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vbi_out_buf_prepare\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/media/test-drivers/vivid/vivid-vbi-out.c\00", [47 x i8] zeroinitializer }, align 32
@vbi_out_buf_prepare._entry_ptr = internal global ptr @vbi_out_buf_prepare._entry, section ".printk_index", align 4
@vbi_out_buf_prepare._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: %s data will not fit into plane (%lu < %u)\0A\00", [46 x i8] zeroinitializer }, align 32
@vbi_out_buf_prepare._entry_ptr.5 = internal global ptr @vbi_out_buf_prepare._entry.3, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@vbi_out_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vbi_out_start_streaming\00", [40 x i8] zeroinitializer }, align 32
@vbi_out_start_streaming._entry_ptr = internal global ptr @vbi_out_start_streaming._entry, section ".printk_index", align 4
@vbi_out_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vbi_out_stop_streaming\00", [41 x i8] zeroinitializer }, align 32
@vbi_out_stop_streaming._entry_ptr = internal global ptr @vbi_out_stop_streaming._entry, section ".printk_index", align 4
@vbi_out_buf_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vbi_out_buf_queue\00", [46 x i8] zeroinitializer }, align 32
@vbi_out_buf_queue._entry_ptr = internal global ptr @vbi_out_buf_queue._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4096, i64 16384]
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"vivid_vbi_out_qops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 125, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 48, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 59, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 1163, i32 7 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 86, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 111, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [52 x i8] c"../drivers/media/test-drivers/vivid/vivid-vbi-out.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 74, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @vbi_out_buf_prepare._entry, ptr @vbi_out_buf_prepare._entry.3, ptr @vbi_out_buf_prepare._entry_ptr, ptr @vbi_out_buf_prepare._entry_ptr.5, ptr @vbi_out_buf_queue._entry, ptr @vbi_out_buf_queue._entry_ptr, ptr @vbi_out_start_streaming._entry, ptr @vbi_out_start_streaming._entry_ptr, ptr @vbi_out_stop_streaming._entry, ptr @vbi_out_stop_streaming._entry_ptr, ptr @vivid_vbi_out_qops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_vbi_out_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_out_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_out_buf_prepare._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_out_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_out_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_out_buf_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vbi_out_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef writeonly %nplanes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp = icmp eq i32 %3, 7
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %std_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 200
  %4 = ptrtoint ptr %std_out to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %std_out, align 8
  %and = and i64 %5, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %mul = select i1 %tobool.not, i32 51840, i32 34560
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond2 = phi i32 [ %mul, %cond.false ], [ 2304, %entry.cond.end_crit_edge ]
  %output.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 199
  %6 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %output.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp.i = icmp eq i8 %9, 2
  br i1 %cmp.i, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %10 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond2, ptr %sizes, align 4
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %11 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_buffers, align 4
  %13 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nbuffers, align 4
  %add = add i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp4 = icmp ult i32 %add, 2
  br i1 %cmp4, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %sub = sub i32 2, %12
  %15 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %16 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %nplanes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vbi_out_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
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
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp = icmp eq i32 %5, 7
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %std_out = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 200
  %6 = ptrtoint ptr %std_out to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %std_out, align 8
  %and = and i64 %7, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %mul = select i1 %tobool.not, i32 51840, i32 34560
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond3 = phi i32 [ %mul, %cond.false ], [ 2304, %entry.cond.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %8 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4.not = icmp eq i32 %8, 0
  br i1 %cmp4.not, label %cond.end.do.end8_crit_edge, label %do.end

cond.end.do.end8_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end8

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1) #7
  br label %do.end8

do.end8:                                          ; preds = %do.end, %cond.end.do.end8_crit_edge
  %buf_prepare_error = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 154
  %9 = ptrtoint ptr %buf_prepare_error to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf_prepare_error, align 2, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not = icmp eq i8 %10, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %buf_prepare_error to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buf_prepare_error, align 2
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %12 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %do.body16, label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.end12
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %cond3)
  %cmp14 = icmp ult i32 %15, %cond3
  br i1 %cmp14, label %do.body16.thread, label %if.then.i53

do.body16:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %16 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp17.not = icmp eq i32 %16, 0
  br i1 %cmp17.not, label %do.body16.cleanup_crit_edge, label %do.body16.vb2_plane_size.exit49_crit_edge

do.body16.vb2_plane_size.exit49_crit_edge:        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  br label %vb2_plane_size.exit49

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body16.thread:                                 ; preds = %vb2_plane_size.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %17 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp17.not56 = icmp eq i32 %17, 0
  br i1 %cmp17.not56, label %do.body16.thread.cleanup_crit_edge, label %if.then.i47

do.body16.thread.cleanup_crit_edge:               ; preds = %do.body16.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i47:                                      ; preds = %do.body16.thread
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit49

vb2_plane_size.exit49:                            ; preds = %if.then.i47, %do.body16.vb2_plane_size.exit49_crit_edge
  %retval.0.i48 = phi i32 [ %19, %if.then.i47 ], [ 0, %do.body16.vb2_plane_size.exit49_crit_edge ]
  %name2459 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name2459, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i48, i32 noundef %cond3) #7
  br label %cleanup

if.then.i53:                                      ; preds = %vb2_plane_size.exit
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %cond3)
  %cmp1.i = icmp ult i32 %21, %cond3
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i53.vb2_set_plane_payload.exit_crit_edge

if.then.i53.vb2_set_plane_payload.exit_crit_edge: ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #6
  br label %vb2_set_plane_payload.exit

land.rhs.i:                                       ; preds = %if.then.i53
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !37

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1163, i32 noundef 9, ptr noundef null) #4
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %22 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.i, align 8
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then38.i, %if.then.i53.vb2_set_plane_payload.exit_crit_edge
  %size.addr.0.i = phi i32 [ %23, %if.then38.i ], [ %cond3, %if.then.i53.vb2_set_plane_payload.exit_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %24 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit, %vb2_plane_size.exit49, %do.body16.thread.cleanup_crit_edge, %do.body16.cleanup_crit_edge, %if.then10
  %retval.0 = phi i32 [ -22, %if.then10 ], [ 0, %vb2_set_plane_payload.exit ], [ -22, %vb2_plane_size.exit49 ], [ -22, %do.body16.cleanup_crit_edge ], [ -22, %do.body16.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vbi_out_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
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
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.7) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %vbi_out_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 307
  %3 = ptrtoint ptr %vbi_out_seq_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %vbi_out_seq_count, align 4
  %start_streaming_error = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 155
  %4 = ptrtoint ptr %start_streaming_error to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %start_streaming_error, align 1, !range !36
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
  %vbi_out_streaming = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 308
  %call7 = tail call i32 @vivid_start_generating_vid_out(ptr noundef %1, ptr noundef %vbi_out_streaming) #4
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
  %vbi_out_active = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 289
  %7 = ptrtoint ptr %vbi_out_active to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vbi_out_active, align 8
  %cmp19.not44 = icmp eq ptr %8, %vbi_out_active
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
  %cmp19.not = icmp eq ptr %.pn, %vbi_out_active
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
define internal void @vbi_out_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
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
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.8) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %vbi_out_streaming = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 308
  tail call void @vivid_stop_generating_vid_out(ptr noundef %1, ptr noundef %vbi_out_streaming) #4
  %vbi_out_have_wss = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 211
  %3 = ptrtoint ptr %vbi_out_have_wss to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %vbi_out_have_wss, align 8
  %vbi_out_have_cc = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 213
  %4 = ptrtoint ptr %vbi_out_have_cc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %vbi_out_have_cc, align 1
  %arrayidx6 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 213, i32 1
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx6, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vbi_out_buf_queue(ptr noundef %vb) #2 align 64 {
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
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.9) #7
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %slock = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %slock) #4
  %list = getelementptr inbounds %struct.vivid_buffer, ptr %vb, i32 0, i32 1
  %vbi_out_active = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 289
  %prev.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 289, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %6, ptr noundef %vbi_out_active) #4
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
  store ptr %vbi_out_active, ptr %list, align 4
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
define internal void @vbi_out_buf_request_complete(ptr nocapture noundef readonly %vb) #2 align 64 {
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
  %ctrl_hdl_vbi_out = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 25
  tail call void @v4l2_ctrl_request_complete(ptr noundef %5, ptr noundef %ctrl_hdl_vbi_out) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_vbi_out(ptr noundef %file, ptr nocapture readnone %priv, ptr nocapture noundef writeonly %f) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #4
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %std_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 200
  %2 = ptrtoint ptr %std_out to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std_out, align 8
  %and = and i64 %3, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %output.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 199
  %4 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %output.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.i = icmp eq i8 %7, 2
  br i1 %cmp.i, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %has_raw_vbi_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 67
  %8 = ptrtoint ptr %has_raw_vbi_out to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_raw_vbi_out, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 25000000, ptr %fmt, align 4
  %offset = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 24, ptr %offset, align 4
  %samples_per_line = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %samples_per_line to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1440, ptr %samples_per_line, align 4
  %sample_format = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %sample_format to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1497715271, ptr %sample_format, align 4
  %cond = select i1 %tobool.not, i32 6, i32 10
  %start = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %14 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond, ptr %start, align 4
  %cond5 = select i1 %tobool.not, i32 319, i32 273
  %arrayidx7 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond5, ptr %arrayidx7, align 4
  %cond9 = select i1 %tobool.not, i32 18, i32 12
  %count = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %arrayidx10 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond9, ptr %arrayidx10, align 4
  %17 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond9, ptr %count, align 4
  %vbi_cap_interlaced = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 138
  %18 = ptrtoint ptr %vbi_cap_interlaced to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %vbi_cap_interlaced, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool13.not = icmp eq i8 %19, 0
  %cond14 = select i1 %tobool13.not, i32 0, i32 2
  %flags = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond14, ptr %flags, align 4
  %reserved = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %reserved, align 4
  %arrayidx17 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_vbi_out(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #4
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %std_out.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 200
  %4 = ptrtoint ptr %std_out.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %std_out.i, align 8
  %and.i = and i64 %5, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %output.i.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 199
  %6 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %output.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %3, i32 0, i32 57, i32 %7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp.i.i = icmp eq i8 %9, 2
  br i1 %cmp.i.i, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %has_raw_vbi_out.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 67
  %10 = ptrtoint ptr %has_raw_vbi_out.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_raw_vbi_out.i, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not.i = icmp eq i8 %11, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %12 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 25000000, ptr %fmt.i, align 4
  %offset.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 24, ptr %offset.i, align 4
  %samples_per_line.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %samples_per_line.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1440, ptr %samples_per_line.i, align 4
  %sample_format.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %sample_format.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1497715271, ptr %sample_format.i, align 4
  %cond.i = select i1 %tobool.not.i, i32 6, i32 10
  %start.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %16 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond.i, ptr %start.i, align 4
  %cond5.i = select i1 %tobool.not.i, i32 319, i32 273
  %arrayidx7.i = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond5.i, ptr %arrayidx7.i, align 4
  %cond9.i = select i1 %tobool.not.i, i32 18, i32 12
  %count.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %arrayidx10.i = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond9.i, ptr %arrayidx10.i, align 4
  %19 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond9.i, ptr %count.i, align 4
  %vbi_cap_interlaced.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 138
  %20 = ptrtoint ptr %vbi_cap_interlaced.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vbi_cap_interlaced.i, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool13.not.i = icmp eq i8 %21, 0
  %cond14.i = select i1 %tobool13.not.i, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond14.i, ptr %flags.i, align 4
  %reserved.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %reserved.i, align 4
  %arrayidx17.i = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx17.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 288, i32 21
  %25 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.not = icmp eq i32 %26, 0
  br i1 %cmp.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %stream_sliced_vbi_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 309
  %27 = ptrtoint ptr %stream_sliced_vbi_out to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %stream_sliced_vbi_out, align 1
  %queue = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 24, i32 10
  %28 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %queue, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 5, ptr %29, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -16, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_sliced_vbi_out(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %fmt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #4
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
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
  br i1 %cmp.i, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %has_sliced_vbi_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 68
  %6 = ptrtoint ptr %has_sliced_vbi_out to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_sliced_vbi_out, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %service_set_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 207
  %8 = ptrtoint ptr %service_set_out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %service_set_out, align 8
  tail call void @vivid_fill_service_lines(ptr noundef %fmt1, i32 noundef %9) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_fill_service_lines(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_try_fmt_sliced_vbi_out(ptr noundef %file, ptr nocapture readnone %fh, ptr noundef %fmt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #4
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %std_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 200
  %2 = ptrtoint ptr %std_out to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std_out, align 8
  %and = and i64 %3, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %4 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fmt1, align 4
  %conv = zext i16 %5 to i32
  %output.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 199
  %6 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %output.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp.i = icmp eq i8 %9, 2
  br i1 %cmp.i, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %has_sliced_vbi_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 68
  %10 = ptrtoint ptr %has_sliced_vbi_out to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_sliced_vbi_out, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %cond = select i1 %tobool.not, i32 16385, i32 4096
  %and7 = and i32 %cond, %conv
  tail call void @vivid_fill_service_lines(ptr noundef %fmt1, i32 noundef %and7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_sliced_vbi_out(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %fmt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #4
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %std_out.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 200
  %4 = ptrtoint ptr %std_out.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %std_out.i, align 8
  %and.i = and i64 %5, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %6 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fmt1, align 4
  %conv.i = zext i16 %7 to i32
  %output.i.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 199
  %8 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %output.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %3, i32 0, i32 57, i32 %9
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp.i.i = icmp eq i8 %11, 2
  br i1 %cmp.i.i, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %has_sliced_vbi_out.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 68
  %12 = ptrtoint ptr %has_sliced_vbi_out.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_sliced_vbi_out.i, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not.i = icmp eq i8 %13, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %cond.i = select i1 %tobool.not.i, i32 16385, i32 4096
  %and7.i = and i32 %cond.i, %conv.i
  tail call void @vivid_fill_service_lines(ptr noundef %fmt1, i32 noundef %and7.i) #4
  %num_buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 288, i32 21
  %14 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.not = icmp eq i32 %15, 0
  br i1 %cmp.i.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %fmt1, align 4
  %conv = zext i16 %17 to i32
  %service_set_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 207
  %18 = ptrtoint ptr %service_set_out to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %service_set_out, align 8
  %stream_sliced_vbi_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 309
  %19 = ptrtoint ptr %stream_sliced_vbi_out to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %stream_sliced_vbi_out, align 1
  %queue = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 24, i32 10
  %20 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %queue, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 7, ptr %21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -16, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_sliced_vbi_out_process(ptr nocapture noundef %dev, ptr noundef %buf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @vb2_plane_vaddr(ptr noundef %buf, i32 noundef 0) #4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 4
  %0 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %entry.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

entry.vb2_get_plane_payload.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 3
  %2 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytesused.i, align 4
  %phi.bo = lshr i32 %3, 6
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %entry.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %if.then.i ], [ 0, %entry.vb2_get_plane_payload.exit_crit_edge ]
  %vbi_out_have_cc = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 213
  %4 = ptrtoint ptr %vbi_out_have_cc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %vbi_out_have_cc, align 1
  %arrayidx5 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 213, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx5, align 1
  %vbi_out_have_wss = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 211
  %6 = ptrtoint ptr %vbi_out_have_wss to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %vbi_out_have_wss, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not75 = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not75, label %vb2_get_plane_payload.exit.while.end_crit_edge, label %while.body.lr.ph

vb2_get_plane_payload.exit.while.end_crit_edge:   ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %vb2_get_plane_payload.exit
  %std_out32 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 200
  %vbi_out_wss = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 212
  %arrayidx49 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 212, i32 1
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %dec78.in = phi i32 [ %retval.0.i, %while.body.lr.ph ], [ %dec78, %sw.epilog.while.body_crit_edge ]
  %vbi.076 = phi ptr [ %call, %while.body.lr.ph ], [ %incdec.ptr, %sw.epilog.while.body_crit_edge ]
  %dec78 = add nsw i32 %dec78.in, -1
  %7 = ptrtoint ptr %vbi.076 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vbi.076, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %while.body.sw.epilog_crit_edge [
    i32 4096, label %sw.bb
    i32 16384, label %sw.bb31
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  %10 = ptrtoint ptr %std_out32 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %std_out32, align 8
  %and = and i64 %11, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool6.not = icmp eq i64 %and, 0
  br i1 %tobool6.not, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %line = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %vbi.076, i32 0, i32 2
  %12 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %13)
  %cmp = icmp eq i32 %13, 21
  br i1 %cmp, label %if.then, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %field = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %vbi.076, i32 0, i32 1
  %14 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8 = icmp ne i32 %15, 0
  %lnot.ext = zext i1 %tobool8 to i32
  %arrayidx10 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 213, i32 %lnot.ext
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx10, align 1
  %data = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %vbi.076, i32 0, i32 4
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %data, align 4
  %19 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool13 = icmp ne i32 %20, 0
  %lnot.ext17 = zext i1 %tobool13 to i32
  %arrayidx18 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 214, i32 %lnot.ext17
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %18, ptr %arrayidx18, align 1
  %arrayidx21 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi.076, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx21, align 1
  %24 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool24 = icmp ne i32 %25, 0
  %lnot.ext28 = zext i1 %tobool24 to i32
  %arrayidx30 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 214, i32 %lnot.ext28, i32 1
  %26 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %23, ptr %arrayidx30, align 1
  br label %sw.epilog

sw.bb31:                                          ; preds = %while.body
  %27 = ptrtoint ptr %std_out32 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %std_out32, align 8
  %and33 = and i64 %28, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33)
  %tobool34.not = icmp eq i64 %and33, 0
  br i1 %tobool34.not, label %sw.bb31.sw.epilog_crit_edge, label %land.lhs.true35

sw.bb31.sw.epilog_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true35:                                  ; preds = %sw.bb31
  %field36 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %vbi.076, i32 0, i32 1
  %29 = ptrtoint ptr %field36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %field36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp37 = icmp eq i32 %30, 0
  br i1 %cmp37, label %land.lhs.true38, label %land.lhs.true35.sw.epilog_crit_edge

land.lhs.true35.sw.epilog_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true38:                                  ; preds = %land.lhs.true35
  %line39 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %vbi.076, i32 0, i32 2
  %31 = ptrtoint ptr %line39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %line39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %32)
  %cmp40 = icmp eq i32 %32, 23
  br i1 %cmp40, label %if.then41, label %land.lhs.true38.sw.epilog_crit_edge

land.lhs.true38.sw.epilog_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then41:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %vbi_out_have_wss to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %vbi_out_have_wss, align 8
  %data43 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %vbi.076, i32 0, i32 4
  %34 = ptrtoint ptr %data43 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %data43, align 4
  %36 = ptrtoint ptr %vbi_out_wss to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %vbi_out_wss, align 1
  %arrayidx47 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi.076, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx47, align 1
  %39 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx49, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then41, %land.lhs.true38.sw.epilog_crit_edge, %land.lhs.true35.sw.epilog_crit_edge, %sw.bb31.sw.epilog_crit_edge, %if.then, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge
  %incdec.ptr = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi.076, i32 1
  %tobool.not = icmp eq i32 %dec78, 0
  br i1 %tobool.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %vb2_get_plane_payload.exit.while.end_crit_edge
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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @vivid_vbi_out_qops, !1, !"vivid_vbi_out_qops", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-vbi-out.c", i32 125, i32 22}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vivid/vivid-vbi-out.c", i32 48, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vbi_out_buf_prepare._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @vbi_out_buf_prepare._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/test-drivers/vivid/vivid-vbi-out.c", i32 59, i32 3}
!10 = !{ptr @vbi_out_buf_prepare._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @vbi_out_buf_prepare._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/test-drivers/vivid/vivid-vbi-out.c", i32 86, i32 2}
!17 = !{ptr @vbi_out_start_streaming._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @vbi_out_start_streaming._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/test-drivers/vivid/vivid-vbi-out.c", i32 111, i32 2}
!21 = !{ptr @vbi_out_stop_streaming._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @vbi_out_stop_streaming._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/test-drivers/vivid/vivid-vbi-out.c", i32 74, i32 2}
!25 = !{ptr @vbi_out_buf_queue._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @vbi_out_buf_queue._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i8 0, i8 2}
!37 = !{!"branch_weights", i32 2000, i32 1}
