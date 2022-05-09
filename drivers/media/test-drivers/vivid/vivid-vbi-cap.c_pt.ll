; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-vbi-cap.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-vbi-cap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.vivid_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.v4l2_format = type { i32, %union.anon.110 }
%union.anon.110 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.111, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.111 = type { i8 }
%struct.v4l2_sliced_vbi_format = type { i16, [2 x [24 x i16]], i32, [2 x i32] }
%struct.v4l2_sliced_vbi_cap = type { i16, [2 x [24 x i16]], i32, [3 x i32] }

@vivid_vbi_cap_qops = dso_local constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @vbi_cap_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @vbi_cap_buf_prepare, ptr null, ptr null, ptr @vbi_cap_start_streaming, ptr @vbi_cap_stop_streaming, ptr @vbi_cap_buf_queue, ptr @vbi_cap_buf_request_complete }, [48 x i8] zeroinitializer }, align 32
@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@vbi_cap_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vbi_cap_buf_prepare\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/media/test-drivers/vivid/vivid-vbi-cap.c\00", [47 x i8] zeroinitializer }, align 32
@vbi_cap_buf_prepare._entry_ptr = internal global ptr @vbi_cap_buf_prepare._entry, section ".printk_index", align 4
@vbi_cap_buf_prepare._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: %s data will not fit into plane (%lu < %u)\0A\00", [46 x i8] zeroinitializer }, align 32
@vbi_cap_buf_prepare._entry_ptr.5 = internal global ptr @vbi_cap_buf_prepare._entry.3, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@vbi_cap_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vbi_cap_start_streaming\00", [40 x i8] zeroinitializer }, align 32
@vbi_cap_start_streaming._entry_ptr = internal global ptr @vbi_cap_start_streaming._entry, section ".printk_index", align 4
@vbi_cap_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vbi_cap_stop_streaming\00", [41 x i8] zeroinitializer }, align 32
@vbi_cap_stop_streaming._entry_ptr = internal global ptr @vbi_cap_stop_streaming._entry, section ".printk_index", align 4
@vbi_cap_buf_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vbi_cap_buf_queue\00", [46 x i8] zeroinitializer }, align 32
@vbi_cap_buf_queue._entry_ptr = internal global ptr @vbi_cap_buf_queue._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"vivid_vbi_cap_qops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 226, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 152, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 163, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 1163, i32 7 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 190, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 215, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [52 x i8] c"../drivers/media/test-drivers/vivid/vivid-vbi-cap.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 178, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @vbi_cap_buf_prepare._entry, ptr @vbi_cap_buf_prepare._entry.3, ptr @vbi_cap_buf_prepare._entry_ptr, ptr @vbi_cap_buf_prepare._entry_ptr.5, ptr @vbi_cap_buf_queue._entry, ptr @vbi_cap_buf_queue._entry_ptr, ptr @vbi_cap_start_streaming._entry, ptr @vbi_cap_start_streaming._entry_ptr, ptr @vbi_cap_stop_streaming._entry, ptr @vbi_cap_stop_streaming._entry_ptr, ptr @vivid_vbi_cap_qops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_vbi_cap_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_cap_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_cap_buf_prepare._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_cap_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_cap_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_cap_buf_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_raw_vbi_cap_process(ptr noundef %dev, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %vbi = alloca %struct.v4l2_vbi_format, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %vbi) #6
  %call = tail call ptr @vb2_plane_vaddr(ptr noundef %buf, i32 noundef 0) #6
  %input.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 173
  %0 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 174, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx.i, align 8
  %and.i = and i64 %3, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %4 = ptrtoint ptr %vbi to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 27000000, ptr %vbi, align 4
  %offset.i = getelementptr inbounds %struct.v4l2_vbi_format, ptr %vbi, i32 0, i32 1
  %5 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 24, ptr %offset.i, align 4
  %samples_per_line.i = getelementptr inbounds %struct.v4l2_vbi_format, ptr %vbi, i32 0, i32 2
  %6 = ptrtoint ptr %samples_per_line.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1440, ptr %samples_per_line.i, align 4
  %sample_format.i = getelementptr inbounds %struct.v4l2_vbi_format, ptr %vbi, i32 0, i32 3
  %7 = ptrtoint ptr %sample_format.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1497715271, ptr %sample_format.i, align 4
  %cond.i = select i1 %tobool.not.i, i32 6, i32 10
  %start.i = getelementptr inbounds %struct.v4l2_vbi_format, ptr %vbi, i32 0, i32 4
  %8 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond.i, ptr %start.i, align 4
  %cond4.i = select i1 %tobool.not.i, i32 319, i32 273
  %arrayidx6.i = getelementptr inbounds %struct.v4l2_vbi_format, ptr %vbi, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond4.i, ptr %arrayidx6.i, align 4
  %cond8.i = select i1 %tobool.not.i, i32 18, i32 12
  %count.i = getelementptr inbounds %struct.v4l2_vbi_format, ptr %vbi, i32 0, i32 5
  %arrayidx9.i = getelementptr inbounds %struct.v4l2_vbi_format, ptr %vbi, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond8.i, ptr %arrayidx9.i, align 4
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond8.i, ptr %count.i, align 4
  %vbi_cap_interlaced.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 138
  %12 = ptrtoint ptr %vbi_cap_interlaced.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vbi_cap_interlaced.i, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not.i = icmp eq i8 %13, 0
  %cond13.i = select i1 %tobool12.not.i, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.v4l2_vbi_format, ptr %vbi, i32 0, i32 6
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond13.i, ptr %flags.i, align 4
  %reserved.i = getelementptr inbounds %struct.v4l2_vbi_format, ptr %vbi, i32 0, i32 7
  %15 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %reserved.i, align 4
  %arrayidx16.i = getelementptr inbounds %struct.v4l2_vbi_format, ptr %vbi, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx16.i, align 4
  %vbi_cap_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 262
  %17 = ptrtoint ptr %vbi_cap_seq_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vbi_cap_seq_count, align 4
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf, i32 0, i32 4
  %19 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %sequence, align 8
  %field_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 236
  %20 = ptrtoint ptr %field_cap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %field_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %21)
  %cmp = icmp eq i32 %21, 7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div36 = lshr i32 %18, 1
  %22 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div36, ptr %sequence, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %23 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sequence, align 8
  tail call fastcc void @vivid_sliced_vbi_cap_fill(ptr noundef %dev, i32 noundef %24)
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 4
  %25 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i = icmp eq i32 %26, 0
  br i1 %cmp.not.i, label %if.end.vb2_plane_size.exit_crit_edge, label %if.then.i

if.end.vb2_plane_size.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 4
  %27 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %if.end.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %28, %if.then.i ], [ 0, %if.end.vb2_plane_size.exit_crit_edge ]
  %29 = call ptr @memset(ptr %call, i32 16, i32 %retval.0.i)
  %30 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %input.i, align 4
  %arrayidx = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 162, i32 %31
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %.off = add i32 %33, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %vb2_plane_size.exit.if.end20_crit_edge, label %if.then19

vb2_plane_size.exit.if.end20_crit_edge:           ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then19:                                        ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  %vbi_gen = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 178
  call void @vivid_vbi_gen_raw(ptr noundef %vbi_gen, ptr noundef nonnull %vbi, ptr noundef %call) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %vb2_plane_size.exit.if.end20_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %vbi) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vivid_sliced_vbi_cap_fill(ptr noundef %dev, i32 noundef %seqnr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vbi_gen1 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 178
  %input = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 173
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input, align 4
  %arrayidx = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 174, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %and = and i64 %3, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool = icmp ne i64 %and, 0
  tail call void @vivid_vbi_gen_sliced(ptr noundef %vbi_gen1, i1 noundef zeroext %tobool, i32 noundef %seqnr) #6
  %loop_video42 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 139
  %4 = ptrtoint ptr %loop_video42 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %loop_video42, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool43.not = icmp eq i8 %5, 0
  br i1 %tobool, label %if.else41, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool43.not, label %if.else20, label %if.then5

if.then5:                                         ; preds = %if.then
  %vbi_out_have_wss = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 211
  %6 = ptrtoint ptr %vbi_out_have_wss to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vbi_out_have_wss, align 8, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %vbi_out_wss = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 212
  %8 = ptrtoint ptr %vbi_out_wss to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vbi_out_wss, align 1
  %data10 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 178, i32 0, i32 12, i32 4
  %10 = ptrtoint ptr %data10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %data10, align 4
  %arrayidx13 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 212, i32 1
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx13, align 1
  %arrayidx17 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 178, i32 0, i32 12, i32 4, i32 1
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx17, align 1
  br label %if.end91

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx19 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 178, i32 0, i32 12
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx19, align 4
  br label %if.end91

if.else20:                                        ; preds = %if.then
  %vid_aspect.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 29
  %15 = ptrtoint ptr %vid_aspect.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vid_aspect.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb25
    i32 4, label %sw.bb30
  ]

sw.bb:                                            ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #8
  %data23 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 178, i32 0, i32 12, i32 4
  %18 = ptrtoint ptr %data23 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %data23, align 4
  br label %if.end91

sw.bb25:                                          ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #8
  %data28 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 178, i32 0, i32 12, i32 4
  %19 = ptrtoint ptr %data28 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 11, ptr %data28, align 4
  br label %if.end91

sw.bb30:                                          ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #8
  %data33 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 178, i32 0, i32 12, i32 4
  %20 = ptrtoint ptr %data33 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 7, ptr %data33, align 4
  br label %if.end91

sw.default:                                       ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #8
  %data38 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 178, i32 0, i32 12, i32 4
  %21 = ptrtoint ptr %data38 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 8, ptr %data38, align 4
  br label %if.end91

if.else41:                                        ; preds = %entry
  br i1 %tobool43.not, label %if.else41.if.end91_crit_edge, label %if.then45

if.else41.if.end91_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

if.then45:                                        ; preds = %if.else41
  %vbi_out_have_cc = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 213
  %22 = ptrtoint ptr %vbi_out_have_cc to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vbi_out_have_cc, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool47.not = icmp eq i8 %23, 0
  br i1 %tobool47.not, label %if.else62, label %if.then48

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %vbi_out_cc = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 214
  %24 = ptrtoint ptr %vbi_out_cc to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %vbi_out_cc, align 1
  %data53 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 178, i32 0, i32 0, i32 4
  %26 = ptrtoint ptr %data53 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %data53, align 4
  %arrayidx57 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 214, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx57, align 1
  %arrayidx61 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 178, i32 0, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx61, align 1
  br label %if.end66

if.else62:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %vbi_gen1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %vbi_gen1, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else62, %if.then48
  %arrayidx68 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 213, i32 1
  %31 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx68, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool69.not = icmp eq i8 %32, 0
  br i1 %tobool69.not, label %if.else85, label %if.then70

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx72 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 214, i32 1
  %33 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx72, align 1
  %data76 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 178, i32 0, i32 1, i32 4
  %35 = ptrtoint ptr %data76 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %data76, align 4
  %arrayidx80 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 214, i32 1, i32 1
  %36 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx80, align 1
  %arrayidx84 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 178, i32 0, i32 1, i32 4, i32 1
  %38 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx84, align 1
  br label %if.end91

if.else85:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx87 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 178, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx87, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.else85, %if.then70, %if.else41.if.end91_crit_edge, %sw.default, %sw.bb30, %sw.bb25, %sw.bb, %if.else, %if.then7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_vbi_gen_raw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_sliced_vbi_cap_process(ptr noundef %dev, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @vb2_plane_vaddr(ptr noundef %buf, i32 noundef 0) #6
  %vbi_cap_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 262
  %0 = ptrtoint ptr %vbi_cap_seq_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vbi_cap_seq_count, align 4
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div41 = lshr i32 %1, 1
  %5 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div41, ptr %sequence, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sequence, align 8
  tail call fastcc void @vivid_sliced_vbi_cap_fill(ptr noundef %dev, i32 noundef %7)
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 4
  %8 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.end.vb2_plane_size.exit_crit_edge, label %if.then.i

if.end.vb2_plane_size.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 4
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %if.end.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %11, %if.then.i ], [ 0, %if.end.vb2_plane_size.exit_crit_edge ]
  %12 = call ptr @memset(ptr %call, i32 0, i32 %retval.0.i)
  %input = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 173
  %13 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %input, align 4
  %arrayidx = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 162, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %.off = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %vb2_plane_size.exit.if.end23_crit_edge, label %for.cond.preheader

vb2_plane_size.exit.if.end23_crit_edge:           ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

for.cond.preheader:                               ; preds = %vb2_plane_size.exit
  %vbi_gen = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 178
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.042 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx21 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %call, i32 %i.042
  %arrayidx22 = getelementptr [25 x %struct.v4l2_sliced_vbi_data], ptr %vbi_gen, i32 0, i32 %i.042
  %17 = call ptr @memcpy(ptr %arrayidx21, ptr %arrayidx22, i32 64)
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %for.body.if.end23_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end23:                                         ; preds = %for.body.if.end23_crit_edge, %vb2_plane_size.exit.if.end23_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vbi_cap_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef writeonly %nplanes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp eq i32 %3, 6
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %input = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input, align 4
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 174, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  %and = and i64 %7, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %mul = select i1 %tobool.not, i32 51840, i32 34560
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond2 = phi i32 [ %mul, %cond.false ], [ 2304, %entry.cond.end_crit_edge ]
  %input.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %8 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %input.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %9
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  %12 = add i8 %11, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %13 = icmp ult i8 %12, 2
  br i1 %13, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %14 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond2, ptr %sizes, align 4
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %15 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_buffers, align 4
  %17 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nbuffers, align 4
  %add = add i32 %18, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp5 = icmp ult i32 %add, 2
  br i1 %cmp5, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 2, %16
  %19 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %20 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %nplanes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vbi_cap_buf_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp = icmp eq i32 %5, 6
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %input = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 173
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %input, align 4
  %arrayidx = getelementptr %struct.vivid_dev, ptr %3, i32 0, i32 174, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  %and = and i64 %9, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %mul = select i1 %tobool.not, i32 51840, i32 34560
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond3 = phi i32 [ %mul, %cond.false ], [ 2304, %entry.cond.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %10 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4.not = icmp eq i32 %10, 0
  br i1 %cmp4.not, label %cond.end.do.end8_crit_edge, label %do.end

cond.end.do.end8_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1) #9
  br label %do.end8

do.end8:                                          ; preds = %do.end, %cond.end.do.end8_crit_edge
  %buf_prepare_error = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 154
  %11 = ptrtoint ptr %buf_prepare_error to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf_prepare_error, align 2, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp eq i8 %12, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %buf_prepare_error to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %buf_prepare_error, align 2
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %14 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %do.body16, label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.end12
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %cond3)
  %cmp14 = icmp ult i32 %17, %cond3
  br i1 %cmp14, label %do.body16.thread, label %if.then.i54

do.body16:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %18 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp17.not = icmp eq i32 %18, 0
  br i1 %cmp17.not, label %do.body16.cleanup_crit_edge, label %do.body16.vb2_plane_size.exit50_crit_edge

do.body16.vb2_plane_size.exit50_crit_edge:        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %vb2_plane_size.exit50

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body16.thread:                                 ; preds = %vb2_plane_size.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %19 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp17.not57 = icmp eq i32 %19, 0
  br i1 %cmp17.not57, label %do.body16.thread.cleanup_crit_edge, label %if.then.i48

do.body16.thread.cleanup_crit_edge:               ; preds = %do.body16.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i48:                                      ; preds = %do.body16.thread
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit50

vb2_plane_size.exit50:                            ; preds = %if.then.i48, %do.body16.vb2_plane_size.exit50_crit_edge
  %retval.0.i49 = phi i32 [ %21, %if.then.i48 ], [ 0, %do.body16.vb2_plane_size.exit50_crit_edge ]
  %name2460 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name2460, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i49, i32 noundef %cond3) #9
  br label %cleanup

if.then.i54:                                      ; preds = %vb2_plane_size.exit
  %22 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %cond3)
  %cmp1.i = icmp ult i32 %23, %cond3
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i54.vb2_set_plane_payload.exit_crit_edge

if.then.i54.vb2_set_plane_payload.exit_crit_edge: ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %vb2_set_plane_payload.exit

land.rhs.i:                                       ; preds = %if.then.i54
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !37

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1163, i32 noundef 9, ptr noundef null) #6
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i, align 8
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then38.i, %if.then.i54.vb2_set_plane_payload.exit_crit_edge
  %size.addr.0.i = phi i32 [ %25, %if.then38.i ], [ %cond3, %if.then.i54.vb2_set_plane_payload.exit_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %26 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit, %vb2_plane_size.exit50, %do.body16.thread.cleanup_crit_edge, %do.body16.cleanup_crit_edge, %if.then10
  %retval.0 = phi i32 [ -22, %if.then10 ], [ 0, %vb2_set_plane_payload.exit ], [ -22, %vb2_plane_size.exit50 ], [ -22, %do.body16.cleanup_crit_edge ], [ -22, %do.body16.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vbi_cap_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.7) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %vbi_cap_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 262
  %3 = ptrtoint ptr %vbi_cap_seq_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %vbi_cap_seq_count, align 4
  %start_streaming_error = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 155
  %4 = ptrtoint ptr %start_streaming_error to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %start_streaming_error, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end8, label %if.end8.thread

if.end8.thread:                                   ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %start_streaming_error to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %start_streaming_error, align 1
  br label %if.then10

if.end8:                                          ; preds = %do.end4
  %vbi_cap_streaming = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 263
  %call7 = tail call i32 @vivid_start_generating_vid_cap(ptr noundef %1, ptr noundef %vbi_cap_streaming) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool9.not = icmp eq i32 %call7, 0
  br i1 %tobool9.not, label %if.end8.if.end26_crit_edge, label %if.end8.if.then10_crit_edge

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.end8.if.end26_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %if.end8.thread
  %err.042 = phi i32 [ -22, %if.end8.thread ], [ %call7, %if.end8.if.then10_crit_edge ]
  %vbi_cap_active = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 245
  %7 = ptrtoint ptr %vbi_cap_active to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vbi_cap_active, align 4
  %cmp19.not44 = icmp eq ptr %8, %vbi_cap_active
  br i1 %cmp19.not44, label %if.then10.if.end26_crit_edge, label %if.then10.for.body_crit_edge

if.then10.for.body_crit_edge:                     ; preds = %if.then10
  br label %for.body

if.then10.if.end26_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.then10.for.body_crit_edge
  %.pn.in45 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %8, %if.then10.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in45, i32 -736
  %9 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in45, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in45) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 3) #6
  %cmp19.not = icmp eq ptr %.pn, %vbi_cap_active
  br i1 %cmp19.not, label %list_del.exit.if.end26_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_del.exit.if.end26_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end26:                                         ; preds = %list_del.exit.if.end26_crit_edge, %if.then10.if.end26_crit_edge, %if.end8.if.end26_crit_edge
  %err.043 = phi i32 [ 0, %if.end8.if.end26_crit_edge ], [ %err.042, %if.then10.if.end26_crit_edge ], [ %err.042, %list_del.exit.if.end26_crit_edge ]
  ret i32 %err.043
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vbi_cap_stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.8) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %vbi_cap_streaming = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 263
  tail call void @vivid_stop_generating_vid_cap(ptr noundef %1, ptr noundef %vbi_cap_streaming) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vbi_cap_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.9) #9
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %slock = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %slock) #6
  %list = getelementptr inbounds %struct.vivid_buffer, ptr %vb, i32 0, i32 1
  %vbi_cap_active = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 245
  %prev.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 245, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %6, ptr noundef %vbi_cap_active) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.end8.list_add_tail.exit_crit_edge

do.end8.list_add_tail.exit_crit_edge:             ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vbi_cap_active, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.vivid_buffer, ptr %vb, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end8.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %slock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vbi_cap_buf_request_complete(ptr nocapture noundef readonly %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %ctrl_hdl_vbi_cap = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 23
  tail call void @v4l2_ctrl_request_complete(ptr noundef %5, ptr noundef %ctrl_hdl_vbi_cap) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_vbi_cap(ptr noundef %file, ptr nocapture readnone %priv, ptr nocapture noundef writeonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
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
  br i1 %7, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %has_raw_vbi_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 64
  %8 = ptrtoint ptr %has_raw_vbi_cap to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_raw_vbi_cap, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 174, i32 %3
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx.i, align 8
  %and.i = and i64 %11, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 27000000, ptr %fmt, align 4
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
  %cond4.i = select i1 %tobool.not.i, i32 319, i32 273
  %arrayidx6.i = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond4.i, ptr %arrayidx6.i, align 4
  %cond8.i = select i1 %tobool.not.i, i32 18, i32 12
  %count.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %arrayidx9.i = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond8.i, ptr %arrayidx9.i, align 4
  %19 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond8.i, ptr %count.i, align 4
  %vbi_cap_interlaced.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 138
  %20 = ptrtoint ptr %vbi_cap_interlaced.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vbi_cap_interlaced.i, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool12.not.i = icmp eq i8 %21, 0
  %cond13.i = select i1 %tobool12.not.i, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond13.i, ptr %flags.i, align 4
  %reserved.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %reserved.i, align 4
  %arrayidx16.i = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx16.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_vbi_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %input.i.i.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 173
  %4 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.vivid_dev, ptr %3, i32 0, i32 53, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i.i, align 1
  %8 = add i8 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %9 = icmp ult i8 %8, 2
  br i1 %9, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %has_raw_vbi_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 64
  %10 = ptrtoint ptr %has_raw_vbi_cap.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_raw_vbi_cap.i, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %3, i32 0, i32 174, i32 %5
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.i.i, align 8
  %and.i.i = and i64 %13, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  %14 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 27000000, ptr %fmt.i, align 4
  %offset.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 24, ptr %offset.i.i, align 4
  %samples_per_line.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %samples_per_line.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1440, ptr %samples_per_line.i.i, align 4
  %sample_format.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %sample_format.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1497715271, ptr %sample_format.i.i, align 4
  %cond.i.i = select i1 %tobool.not.i.i, i32 6, i32 10
  %start.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %start.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond.i.i, ptr %start.i.i, align 4
  %cond4.i.i = select i1 %tobool.not.i.i, i32 319, i32 273
  %arrayidx6.i.i = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond4.i.i, ptr %arrayidx6.i.i, align 4
  %cond8.i.i = select i1 %tobool.not.i.i, i32 18, i32 12
  %count.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %arrayidx9.i.i = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond8.i.i, ptr %arrayidx9.i.i, align 4
  %21 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond8.i.i, ptr %count.i.i, align 4
  %vbi_cap_interlaced.i.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 138
  %22 = ptrtoint ptr %vbi_cap_interlaced.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vbi_cap_interlaced.i.i, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool12.not.i.i = icmp eq i8 %23, 0
  %cond13.i.i = select i1 %tobool12.not.i.i, i32 0, i32 2
  %flags.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond13.i.i, ptr %flags.i.i, align 4
  %reserved.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %reserved.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %reserved.i.i, align 4
  %arrayidx16.i.i = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx16.i.i, align 4
  %27 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp.not = icmp eq i32 %28, 4
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %num_buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 244, i32 21
  %29 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.not = icmp eq i32 %30, 0
  br i1 %cmp.i.not, label %land.lhs.true.if.end4_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -16, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_fill_service_lines(ptr nocapture noundef %vbi, i32 noundef %service_set) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io_size = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 2
  %0 = ptrtoint ptr %io_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2304, ptr %io_size, align 4
  %conv = trunc i32 %service_set to i16
  %1 = ptrtoint ptr %vbi to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %vbi, align 4
  %service_lines = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1
  %2 = call ptr @memset(ptr %service_lines, i32 0, i32 96)
  %reserved = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 3
  %3 = ptrtoint ptr %reserved to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %reserved, align 4
  %conv4 = and i32 %service_set, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4)
  %cmp = icmp eq i32 %conv4, 0
  br i1 %cmp, label %entry.if.end31_crit_edge, label %if.end

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end:                                           ; preds = %entry
  %and = and i32 %service_set, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.then8

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx10 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 0, i32 21
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4096, ptr %arrayidx10, align 2
  %arrayidx13 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 1, i32 21
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4096, ptr %arrayidx13, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end.if.end14_crit_edge
  %6 = and i16 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool18.not = icmp eq i16 %6, 0
  br i1 %tobool18.not, label %if.end14.if.end31_crit_edge, label %for.body.preheader

if.end14.if.end31_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

for.body.preheader:                               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx24 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 1, i32 7
  %7 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %arrayidx24, align 2
  %arrayidx27 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 0, i32 7
  %8 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %arrayidx27, align 2
  %arrayidx24.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 1, i32 8
  %9 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %arrayidx24.1, align 2
  %arrayidx27.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 0, i32 8
  %10 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %arrayidx27.1, align 2
  %arrayidx24.2 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 1, i32 9
  %11 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %arrayidx24.2, align 2
  %arrayidx27.2 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 0, i32 9
  %12 = ptrtoint ptr %arrayidx27.2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %arrayidx27.2, align 2
  %arrayidx24.3 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 1, i32 10
  %13 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %arrayidx24.3, align 2
  %arrayidx27.3 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 0, i32 10
  %14 = ptrtoint ptr %arrayidx27.3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %arrayidx27.3, align 2
  %arrayidx24.4 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 1, i32 11
  %15 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %arrayidx24.4, align 2
  %arrayidx27.4 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 0, i32 11
  %16 = ptrtoint ptr %arrayidx27.4 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %arrayidx27.4, align 2
  %arrayidx24.5 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 1, i32 12
  %17 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %arrayidx24.5, align 2
  %arrayidx27.5 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 0, i32 12
  %18 = ptrtoint ptr %arrayidx27.5 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %arrayidx27.5, align 2
  %arrayidx24.6 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 1, i32 13
  %19 = ptrtoint ptr %arrayidx24.6 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %arrayidx24.6, align 2
  %arrayidx27.6 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 0, i32 13
  %20 = ptrtoint ptr %arrayidx27.6 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %arrayidx27.6, align 2
  %arrayidx24.7 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 1, i32 14
  %21 = ptrtoint ptr %arrayidx24.7 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %arrayidx24.7, align 2
  %arrayidx27.7 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 0, i32 14
  %22 = ptrtoint ptr %arrayidx27.7 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %arrayidx27.7, align 2
  %arrayidx24.8 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 1, i32 15
  %23 = ptrtoint ptr %arrayidx24.8 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %arrayidx24.8, align 2
  %arrayidx27.8 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 0, i32 15
  %24 = ptrtoint ptr %arrayidx27.8 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %arrayidx27.8, align 2
  %arrayidx24.9 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 1, i32 16
  %25 = ptrtoint ptr %arrayidx24.9 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %arrayidx24.9, align 2
  %arrayidx27.9 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx27.9 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %arrayidx27.9, align 2
  %arrayidx24.10 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 1, i32 17
  %27 = ptrtoint ptr %arrayidx24.10 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %arrayidx24.10, align 2
  %arrayidx27.10 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 0, i32 17
  %28 = ptrtoint ptr %arrayidx27.10 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %arrayidx27.10, align 2
  %arrayidx24.11 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 1, i32 18
  %29 = ptrtoint ptr %arrayidx24.11 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %arrayidx24.11, align 2
  %arrayidx27.11 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 0, i32 18
  %30 = ptrtoint ptr %arrayidx27.11 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %arrayidx27.11, align 2
  %arrayidx30 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %vbi, i32 0, i32 1, i32 0, i32 23
  %31 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 16384, ptr %arrayidx30, align 2
  br label %if.end31

if.end31:                                         ; preds = %for.body.preheader, %if.end14.if.end31_crit_edge, %entry.if.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_sliced_vbi_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef writeonly %fmt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
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
  br i1 %7, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %has_sliced_vbi_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 65
  %8 = ptrtoint ptr %has_sliced_vbi_cap to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_sliced_vbi_cap, align 2, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %service_set_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 177
  %10 = ptrtoint ptr %service_set_cap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %service_set_cap, align 8
  %io_size.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4
  %12 = ptrtoint ptr %io_size.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2304, ptr %io_size.i, align 4
  %conv.i = trunc i32 %11 to i16
  %13 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %fmt1, align 4
  %service_lines.i = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %fmt1, i32 0, i32 1
  %14 = call ptr @memset(ptr %service_lines.i, i32 0, i32 96)
  %reserved.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4, i32 1
  %15 = ptrtoint ptr %reserved.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 0, ptr %reserved.i, align 4
  %conv4.i = and i32 %11, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4.i)
  %cmp.i = icmp eq i32 %conv4.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %and.i = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then8.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx10.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 4096, ptr %arrayidx10.i, align 2
  %arrayidx13.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 3, i32 2, i32 2
  %17 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 4096, ptr %arrayidx13.i, align 2
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i, %if.end.i.if.end14.i_crit_edge
  %18 = and i16 %conv.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool18.not.i = icmp eq i16 %18, 0
  br i1 %tobool18.not.i, label %if.end14.i.cleanup_crit_edge, label %for.body.preheader.i

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx24.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %arrayidx24.i, align 2
  %arrayidx27.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %arrayidx27.i, align 2
  %arrayidx24.1.i = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt1, i32 0, i32 1, i32 1, i32 8
  %21 = ptrtoint ptr %arrayidx24.1.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %arrayidx24.1.i, align 2
  %arrayidx27.1.i = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt1, i32 0, i32 1, i32 0, i32 8
  %22 = ptrtoint ptr %arrayidx27.1.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %arrayidx27.1.i, align 2
  %arrayidx24.2.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2
  %23 = ptrtoint ptr %arrayidx24.2.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %arrayidx24.2.i, align 2
  %arrayidx27.2.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %24 = ptrtoint ptr %arrayidx27.2.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %arrayidx27.2.i, align 2
  %arrayidx24.3.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx24.3.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %arrayidx24.3.i, align 2
  %arrayidx27.3.i = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt1, i32 0, i32 1, i32 0, i32 10
  %26 = ptrtoint ptr %arrayidx27.3.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %arrayidx27.3.i, align 2
  %arrayidx24.4.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 2
  %27 = ptrtoint ptr %arrayidx24.4.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %arrayidx24.4.i, align 2
  %arrayidx27.4.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx27.4.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %arrayidx27.4.i, align 2
  %arrayidx24.5.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 3
  %29 = ptrtoint ptr %arrayidx24.5.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %arrayidx24.5.i, align 2
  %arrayidx27.5.i = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt1, i32 0, i32 1, i32 0, i32 12
  %30 = ptrtoint ptr %arrayidx27.5.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %arrayidx27.5.i, align 2
  %arrayidx24.6.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 4
  %31 = ptrtoint ptr %arrayidx24.6.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %arrayidx24.6.i, align 2
  %arrayidx27.6.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx27.6.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %arrayidx27.6.i, align 2
  %arrayidx24.7.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 5
  %33 = ptrtoint ptr %arrayidx24.7.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %arrayidx24.7.i, align 2
  %arrayidx27.7.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %arrayidx27.7.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %arrayidx27.7.i, align 2
  %arrayidx24.8.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 3
  %35 = ptrtoint ptr %arrayidx24.8.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %arrayidx24.8.i, align 2
  %arrayidx27.8.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %arrayidx27.8.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %arrayidx27.8.i, align 2
  %arrayidx24.9.i = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt1, i32 0, i32 1, i32 1, i32 16
  %37 = ptrtoint ptr %arrayidx24.9.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %arrayidx24.9.i, align 2
  %arrayidx27.9.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 3
  %38 = ptrtoint ptr %arrayidx27.9.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %arrayidx27.9.i, align 2
  %arrayidx24.10.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 3, i32 1
  %39 = ptrtoint ptr %arrayidx24.10.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %arrayidx24.10.i, align 2
  %arrayidx27.10.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %40 = ptrtoint ptr %arrayidx27.10.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %arrayidx27.10.i, align 2
  %arrayidx24.11.i = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt1, i32 0, i32 1, i32 1, i32 18
  %41 = ptrtoint ptr %arrayidx24.11.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %arrayidx24.11.i, align 2
  %arrayidx27.11.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 5
  %42 = ptrtoint ptr %arrayidx27.11.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %arrayidx27.11.i, align 2
  %arrayidx30.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 2
  %43 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 16384, ptr %arrayidx30.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader.i, %if.end14.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end14.i.cleanup_crit_edge ], [ 0, %for.body.preheader.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_try_fmt_sliced_vbi_cap(ptr noundef %file, ptr nocapture readnone %fh, ptr noundef %fmt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %input = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 174, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  %and = and i64 %5, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %6 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fmt1, align 4
  %conv = zext i16 %7 to i32
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %10 = add i8 %9, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %11 = icmp ult i8 %10, 2
  br i1 %11, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %has_sliced_vbi_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 65
  %12 = ptrtoint ptr %has_sliced_vbi_cap to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_sliced_vbi_cap, align 2, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %cond = select i1 %tobool.not, i32 16385, i32 4096
  %and7 = and i32 %cond, %conv
  %io_size.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4
  %14 = ptrtoint ptr %io_size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2304, ptr %io_size.i, align 4
  %conv.i = trunc i32 %and7 to i16
  %15 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %fmt1, align 4
  %service_lines.i = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %fmt1, i32 0, i32 1
  %16 = call ptr @memset(ptr %service_lines.i, i32 0, i32 96)
  %reserved.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4, i32 1
  %17 = ptrtoint ptr %reserved.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 0, ptr %reserved.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp.i = icmp eq i32 %and7, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %and.i = and i32 %and7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then8.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx10.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 4096, ptr %arrayidx10.i, align 2
  %arrayidx13.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 3, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 4096, ptr %arrayidx13.i, align 2
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i, %if.end.i.if.end14.i_crit_edge
  %20 = and i16 %conv.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool18.not.i = icmp eq i16 %20, 0
  br i1 %tobool18.not.i, label %if.end14.i.cleanup_crit_edge, label %for.body.preheader.i

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx24.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 2, i32 1
  %21 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %arrayidx24.i, align 2
  %arrayidx27.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %arrayidx27.i, align 2
  %arrayidx24.1.i = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt1, i32 0, i32 1, i32 1, i32 8
  %23 = ptrtoint ptr %arrayidx24.1.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %arrayidx24.1.i, align 2
  %arrayidx27.1.i = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt1, i32 0, i32 1, i32 0, i32 8
  %24 = ptrtoint ptr %arrayidx27.1.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %arrayidx27.1.i, align 2
  %arrayidx24.2.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx24.2.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %arrayidx24.2.i, align 2
  %arrayidx27.2.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %26 = ptrtoint ptr %arrayidx27.2.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %arrayidx27.2.i, align 2
  %arrayidx24.3.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 1
  %27 = ptrtoint ptr %arrayidx24.3.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %arrayidx24.3.i, align 2
  %arrayidx27.3.i = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt1, i32 0, i32 1, i32 0, i32 10
  %28 = ptrtoint ptr %arrayidx27.3.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %arrayidx27.3.i, align 2
  %arrayidx24.4.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 2
  %29 = ptrtoint ptr %arrayidx24.4.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %arrayidx24.4.i, align 2
  %arrayidx27.4.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx27.4.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %arrayidx27.4.i, align 2
  %arrayidx24.5.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 3
  %31 = ptrtoint ptr %arrayidx24.5.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %arrayidx24.5.i, align 2
  %arrayidx27.5.i = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt1, i32 0, i32 1, i32 0, i32 12
  %32 = ptrtoint ptr %arrayidx27.5.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %arrayidx27.5.i, align 2
  %arrayidx24.6.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 4
  %33 = ptrtoint ptr %arrayidx24.6.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %arrayidx24.6.i, align 2
  %arrayidx27.6.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx27.6.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %arrayidx27.6.i, align 2
  %arrayidx24.7.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 5
  %35 = ptrtoint ptr %arrayidx24.7.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %arrayidx24.7.i, align 2
  %arrayidx27.7.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %arrayidx27.7.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %arrayidx27.7.i, align 2
  %arrayidx24.8.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 3
  %37 = ptrtoint ptr %arrayidx24.8.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %arrayidx24.8.i, align 2
  %arrayidx27.8.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %arrayidx27.8.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %arrayidx27.8.i, align 2
  %arrayidx24.9.i = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt1, i32 0, i32 1, i32 1, i32 16
  %39 = ptrtoint ptr %arrayidx24.9.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %arrayidx24.9.i, align 2
  %arrayidx27.9.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 3
  %40 = ptrtoint ptr %arrayidx27.9.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %arrayidx27.9.i, align 2
  %arrayidx24.10.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 3, i32 1
  %41 = ptrtoint ptr %arrayidx24.10.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %arrayidx24.10.i, align 2
  %arrayidx27.10.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %42 = ptrtoint ptr %arrayidx27.10.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %arrayidx27.10.i, align 2
  %arrayidx24.11.i = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt1, i32 0, i32 1, i32 1, i32 18
  %43 = ptrtoint ptr %arrayidx24.11.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %arrayidx24.11.i, align 2
  %arrayidx27.11.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 5
  %44 = ptrtoint ptr %arrayidx27.11.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %arrayidx27.11.i, align 2
  %arrayidx30.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 2
  %45 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 16384, ptr %arrayidx30.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader.i, %if.end14.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end14.i.cleanup_crit_edge ], [ 0, %for.body.preheader.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_sliced_vbi_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %fmt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %call2 = tail call i32 @vidioc_try_fmt_sliced_vbi_cap(ptr noundef %file, ptr undef, ptr noundef %fmt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.not = icmp eq i32 %3, 6
  br i1 %cmp.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %num_buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 244, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %6 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fmt1, align 4
  %conv = zext i16 %7 to i32
  %service_set_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 177
  %8 = ptrtoint ptr %service_set_cap to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %service_set_cap, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call2, %entry.cleanup_crit_edge ], [ -16, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_sliced_vbi_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %cap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #6
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 14
  %2 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %input = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 173
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input, align 4
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 174, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 53, i32 %5
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %10 = add i8 %9, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %11 = icmp ult i8 %10, 2
  br i1 %11, label %lor.lhs.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %has_sliced_vbi_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 65
  %12 = ptrtoint ptr %has_sliced_vbi_cap to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_sliced_vbi_cap, align 2, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 2
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp5.not = icmp eq i32 %15, 6
  br i1 %cmp5.not, label %lor.lhs.false4.if.end18_crit_edge, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false4.if.end18_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.else:                                          ; preds = %entry
  %std_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 200
  %16 = ptrtoint ptr %std_out to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %std_out, align 8
  %output.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 199
  %18 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %output.i, align 4
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 57, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp.i = icmp eq i8 %21, 2
  br i1 %cmp.i, label %lor.lhs.false11, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.else
  %has_sliced_vbi_out = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 68
  %22 = ptrtoint ptr %has_sliced_vbi_out to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_sliced_vbi_out, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool12.not = icmp eq i8 %23, 0
  br i1 %tobool12.not, label %lor.lhs.false11.cleanup_crit_edge, label %lor.lhs.false13

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %type14 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 2
  %24 = ptrtoint ptr %type14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %25)
  %cmp15.not = icmp eq i32 %25, 7
  br i1 %cmp15.not, label %lor.lhs.false13.if.end18_crit_edge, label %lor.lhs.false13.cleanup_crit_edge

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false13.if.end18_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end18:                                         ; preds = %lor.lhs.false13.if.end18_crit_edge, %lor.lhs.false4.if.end18_crit_edge
  %is_60hz.0.in.in.in = phi i64 [ %7, %lor.lhs.false4.if.end18_crit_edge ], [ %17, %lor.lhs.false13.if.end18_crit_edge ]
  %is_60hz.0.in.in = and i64 %is_60hz.0.in.in.in, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %is_60hz.0.in.in)
  %is_60hz.0.in.not = icmp eq i64 %is_60hz.0.in.in, 0
  %conv = select i1 %is_60hz.0.in.not, i16 16385, i16 4096
  %26 = ptrtoint ptr %cap to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv, ptr %cap, align 4
  br i1 %is_60hz.0.in.not, label %for.cond.preheader, label %if.then21

for.cond.preheader:                               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx32 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 7
  %27 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %arrayidx32, align 2
  %arrayidx35 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 7
  %28 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %arrayidx35, align 2
  %arrayidx32.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 8
  %29 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %arrayidx32.1, align 2
  %arrayidx35.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 8
  %30 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %arrayidx35.1, align 2
  %arrayidx32.2 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 9
  %31 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %arrayidx32.2, align 2
  %arrayidx35.2 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 9
  %32 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %arrayidx35.2, align 2
  %arrayidx32.3 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 10
  %33 = ptrtoint ptr %arrayidx32.3 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %arrayidx32.3, align 2
  %arrayidx35.3 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 10
  %34 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %arrayidx35.3, align 2
  %arrayidx32.4 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 11
  %35 = ptrtoint ptr %arrayidx32.4 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %arrayidx32.4, align 2
  %arrayidx35.4 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 11
  %36 = ptrtoint ptr %arrayidx35.4 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %arrayidx35.4, align 2
  %arrayidx32.5 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 12
  %37 = ptrtoint ptr %arrayidx32.5 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %arrayidx32.5, align 2
  %arrayidx35.5 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 12
  %38 = ptrtoint ptr %arrayidx35.5 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %arrayidx35.5, align 2
  %arrayidx32.6 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 13
  %39 = ptrtoint ptr %arrayidx32.6 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %arrayidx32.6, align 2
  %arrayidx35.6 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 13
  %40 = ptrtoint ptr %arrayidx35.6 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %arrayidx35.6, align 2
  %arrayidx32.7 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 14
  %41 = ptrtoint ptr %arrayidx32.7 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %arrayidx32.7, align 2
  %arrayidx35.7 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 14
  %42 = ptrtoint ptr %arrayidx35.7 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %arrayidx35.7, align 2
  %arrayidx32.8 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 15
  %43 = ptrtoint ptr %arrayidx32.8 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %arrayidx32.8, align 2
  %arrayidx35.8 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 15
  %44 = ptrtoint ptr %arrayidx35.8 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %arrayidx35.8, align 2
  %arrayidx32.9 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 16
  %45 = ptrtoint ptr %arrayidx32.9 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 1, ptr %arrayidx32.9, align 2
  %arrayidx35.9 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 16
  %46 = ptrtoint ptr %arrayidx35.9 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %arrayidx35.9, align 2
  %arrayidx32.10 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 17
  %47 = ptrtoint ptr %arrayidx32.10 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1, ptr %arrayidx32.10, align 2
  %arrayidx35.10 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 17
  %48 = ptrtoint ptr %arrayidx35.10 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 1, ptr %arrayidx35.10, align 2
  %arrayidx32.11 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 18
  %49 = ptrtoint ptr %arrayidx32.11 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %arrayidx32.11, align 2
  %arrayidx35.11 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 18
  %50 = ptrtoint ptr %arrayidx35.11 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %arrayidx35.11, align 2
  %arrayidx38 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 23
  %51 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 16384, ptr %arrayidx38, align 2
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx23 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 21
  %52 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 4096, ptr %arrayidx23, align 2
  %arrayidx26 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 21
  %53 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 4096, ptr %arrayidx26, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %for.cond.preheader, %lor.lhs.false13.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %if.else.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %lor.lhs.false13.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %for.cond.preheader ], [ 0, %if.then21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_vbi_gen_sliced(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_start_generating_vid_cap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_stop_generating_vid_cap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @vivid_vbi_cap_qops, !1, !"vivid_vbi_cap_qops", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-vbi-cap.c", i32 226, i32 22}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vivid/vivid-vbi-cap.c", i32 152, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vbi_cap_buf_prepare._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @vbi_cap_buf_prepare._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/test-drivers/vivid/vivid-vbi-cap.c", i32 163, i32 3}
!10 = !{ptr @vbi_cap_buf_prepare._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @vbi_cap_buf_prepare._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/test-drivers/vivid/vivid-vbi-cap.c", i32 190, i32 2}
!17 = !{ptr @vbi_cap_start_streaming._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @vbi_cap_start_streaming._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/test-drivers/vivid/vivid-vbi-cap.c", i32 215, i32 2}
!21 = !{ptr @vbi_cap_stop_streaming._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @vbi_cap_stop_streaming._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/test-drivers/vivid/vivid-vbi-cap.c", i32 178, i32 2}
!25 = !{ptr @vbi_cap_buf_queue._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @vbi_cap_buf_queue._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
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
